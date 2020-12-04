using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WebApplication4.Data;
using WebApplication4.Models;

namespace WebApplication4.Controllers
{
    public class StudentController : Controller
    {
        private readonly ApplicationDbContext _context;

        public StudentController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Student
        public async Task<IActionResult> Index()
        {
            return View(await _context.Student.ToListAsync());
        }

        // GET: Student/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var student = await _context.Student
                .FirstOrDefaultAsync(m => m.Student_id == id);
            if (student == null)
            {
                return NotFound();
            }

            return View(student);
        }

        // GET: Student/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Student/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Student_id,Last_name,Middle_name,First_name,Gender,Created_on,Updated_on")] Student student)
        {
            if (ModelState.IsValid)
            {
                student.Created_on = DateTime.Now;
                _context.Add(student);
                _context.SaveChanges();

                //AGREGAR LOS DEMAS PARAMETROS
                Address address = new Address();
                address.Student = student;
                _context.Add(address);

                Email email = new Email();
                email.Student = student;
                email.Email_student = student.First_name + ""+student.Student_id+"@prueba.com";
                email.Created_on = DateTime.Now;
                _context.Add(email);

                Phone phone = new Phone();
                phone.Student = student;
                phone.Created_on = DateTime.Now;
                _context.Add(phone);

                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(student);
        }

        // GET: Student/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var student = await _context.Student.FindAsync(id);
            if (student == null)
            {
                return NotFound();
            }
            return View(student);
        }

        public async Task<IActionResult> EditNumber(int? id)
        {
            if (id == null)
            {
                return Redirect("/Student/Index");
            }

            var phone = _context.Phone.SingleOrDefault(x => x.Student.Student_id == id);;
            if (phone == null)
            {
                return Redirect("/Student/Index");
            }
            return Redirect("/Phone/Edit/"+phone.Phone_id);
        }

        public async Task<IActionResult> EditEmail(int? id)
        {
            if (id == null)
            {
                return Redirect("/Student/Index");
            }

            var email = _context.Email.SingleOrDefault(x => x.Student.Student_id == id); ;
            if (email == null)
            {
                return Redirect("/Student/Index");
            }
            return Redirect("/Email/Edit/" + email.Email_student);
        }

        public async Task<IActionResult> EditAddress(int? id)
        {
            if (id == null)
            {
                return Redirect("/Student/Index");
            }

            var address = _context.Address.SingleOrDefault(x => x.Student.Student_id == id); ;
            if (address == null)
            {
                return Redirect("/Student/Index");
            }
            return Redirect("/Address/Edit/" + address.Address_id);
        }

        // POST: Student/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Student_id,Last_name,Middle_name,First_name,Gender,Created_on,Updated_on")] Student student)
        {
            if (id != student.Student_id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    student.Updated_on = DateTime.Now;
                    _context.Update(student);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!StudentExists(student.Student_id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(student);
        }

        // GET: Student/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var student = await _context.Student
                .FirstOrDefaultAsync(m => m.Student_id == id);
            if (student == null)
            {
                return NotFound();
            }

            return View(student);
        }

        // POST: Student/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var email = _context.Email.SingleOrDefault(x => x.Student.Student_id == id); ;
            var address = _context.Address.SingleOrDefault(x => x.Student.Student_id == id); ;
            var phone = _context.Phone.SingleOrDefault(x => x.Student.Student_id == id); ;

            _context.Email.Remove(email);
            _context.Address.Remove(address);
            _context.Phone.Remove(phone);

            _context.SaveChanges();

            var student = await _context.Student.FindAsync(id);
            _context.Student.Remove(student);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool StudentExists(int id)
        {
            return _context.Student.Any(e => e.Student_id == id);
        }
    }
}
