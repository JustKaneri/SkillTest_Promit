using Microsoft.EntityFrameworkCore;
using SkillTest_Promit.Data;
using SkillTest_Promit.Interface;
using SkillTest_Promit.Models;
using System.Data.Common;

namespace SkillTest_Promit.Repository
{
    public class FeedbackRepository : IFeedbackRepository
    {
        private readonly DataContext _context;

        public FeedbackRepository(DataContext context)
        {
           _context = context;
        }

        public async Task<Feedback> CreateRecordAsync(Feedback record)
        {
            try
            {
                _context.Feedbacks.Add(record);
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException ex)
            {
                Console.WriteLine(ex.Message);
                return null;
            }

            return record;
        }

        public async Task<Feedback> DeleteRecordAsync(int Id)
        {
            var feedback = await _context.Feedbacks.FindAsync(Id);

            if(feedback!= null)
            {
                try
                {
                    _context.Feedbacks.Remove(feedback);
                    await _context.SaveChangesAsync();
                }
                catch (DbException ex)
                {
                    Console.WriteLine(ex.Message);
                    return null;
                }
                
            }

            return feedback;
        }

        public async Task<List<Feedback>> GetAllAsync()
        {
            return await _context.Feedbacks.OrderByDescending(f => f.CreateDate).ToListAsync();
        }

        public async Task<Feedback> GetByIdAsync(int id)
        {
            return await _context.Feedbacks.Include(u => u.user).Where(f => f.Id == id).FirstOrDefaultAsync();
        }
    }
}
