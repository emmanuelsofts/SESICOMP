﻿using System;
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
    public class PhoneController : Controller
    {
        private readonly ApplicationDbContext _context;

        public PhoneController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Phone
        public async Task<IActionResult> Index()
        {
            return Redirect("/Student/Index");
        }

        // GET: Phone/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var phone = await _context.Phone
                .FirstOrDefaultAsync(m => m.Phone_id == id);
            if (phone == null)
            {
                return NotFound();
            }

            return View(phone);
        }

        // GET: Phone/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Phone/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Phone_id,Phone_number,Phone_type,Country_code,Area_code,Created_on,Updated_on")] Phone phone)
        {
            if (ModelState.IsValid)
            {
                phone.Created_on = DateTime.Now;
                _context.Add(phone);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(phone);
        }

        // GET: Phone/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var phone = await _context.Phone.FindAsync(id);
            if (phone == null)
            {
                return NotFound();
            }
            return View(phone);
        }

        // POST: Phone/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Phone_id,Phone_number,Phone_type,Country_code,Area_code,Created_on,Updated_on")] Phone phone)
        {
            if (id != phone.Phone_id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    phone.Updated_on = DateTime.Now;
                    _context.Update(phone);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PhoneExists(phone.Phone_id))
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
            return View(phone);
        }

        // GET: Phone/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var phone = await _context.Phone
                .FirstOrDefaultAsync(m => m.Phone_id == id);
            if (phone == null)
            {
                return NotFound();
            }

            return View(phone);
        }

        // POST: Phone/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var phone = await _context.Phone.FindAsync(id);
            _context.Phone.Remove(phone);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool PhoneExists(int id)
        {
            return _context.Phone.Any(e => e.Phone_id == id);
        }
    }
}
