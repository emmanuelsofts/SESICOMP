using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication4.Models
{
    public class Address
    {
        [Key]
        public int Address_id { get; set; }
        
        public String Address_line { get; set; }
        
        public String City { get; set; }
        
        public String Zip_postcode { get; set; }
        
        public String State { get; set; }

        public Student Student { get; set; }
    }
}
