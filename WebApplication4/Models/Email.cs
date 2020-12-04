using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication4.Models
{
    public class Email
    {
        public enum EmailTypes
        {
            School,
            Business,
            Home
        }

        [Key]
        public String Email_student { get; set; }
        public EmailTypes Email_type { get; set; }
        public DateTime Created_on { get; set; }
        public DateTime Updated_on { get; set; }

        public Student Student { get; set; }
    }
}
