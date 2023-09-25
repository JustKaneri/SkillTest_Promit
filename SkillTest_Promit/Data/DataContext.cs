using Microsoft.EntityFrameworkCore;
using SkillTest_Promit.Models;

namespace SkillTest_Promit.Data
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options):base(options)
        {        
        }

        public DbSet<User> Users { get; set; }
        public DbSet<Organization> Organizations { get; set; }
        public DbSet<Feedback> Feedbacks { get; set; }
    }
}
