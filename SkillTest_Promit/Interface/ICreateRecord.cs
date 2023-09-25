namespace SkillTest_Promit.Interface
{
    public interface ICreateRecord<T>
    {
        public Task<T> CreateRecordAsync(T record); 
    }
}
