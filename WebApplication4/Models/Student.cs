using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication4.Models
{
    public class Student
    {
        public enum Genders
        {
            Male,
            Female
        }

        [Key]
        public int Student_id { get; set; }
        public string Last_name { get; set; } 
        public string Middle_name { get; set; }
        public string First_name { get; set; }
        public Genders Gender { get; set; }
        public DateTime Created_on { get; set; }
        public DateTime Updated_on { get; set; }


    }
}
