using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace WebApplication4.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<Models.Student> Student { get; set; }
        public DbSet<Models.Address> Address { get; set; }
        public DbSet<Models.Phone> Phone { get; set; }
        public DbSet<Models.Email> Email { get; set; }

    }
}
