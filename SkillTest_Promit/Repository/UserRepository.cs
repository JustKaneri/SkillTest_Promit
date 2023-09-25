using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage.Internal;
using SkillTest_Promit.Data;
using SkillTest_Promit.Interface;
using SkillTest_Promit.Models;

namespace SkillTest_Promit.Repository
{
    public class UserRepository : IUserRepository
    {
        private readonly DataContext _context;

        public UserRepository(DataContext context) 
        {
            _context = context;
        }

        public async Task<User> CreateRecordAsync(User record)
        {
            try
            {
                _context.Users.Add(record);
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException ex)
            {
                Console.WriteLine(ex.Message);
                return null;
            }

            return record;
        }
    }
}
