using SkillTest_Promit.Models;

namespace SkillTest_Promit.Interface
{
    public interface IFeedbackRepository : ICreateRecord<Feedback>, IDeleteRecord<Feedback>
    {
        public Task<Feedback> GetByIdAsync(int id);
        
        public Task<List<Feedback>> GetAllAsync();
    }
}
