using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication4.Models
{
    public class Phone
    {
        public enum PhoneTypes
        {
            Celphone,
            Telephone
        }

        [Key]
        public int Phone_id { get; set; }

        public String Phone_number { get; set; }
        public PhoneTypes Phone_type { get; set; }

        public String Country_code { get; set; }

        public String Area_code { get; set; }
        public DateTime Created_on { get; set; }
        public DateTime Updated_on { get; set; }

        public Student Student { get; set; }

    }
}
