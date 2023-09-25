namespace SkillTest_Promit.Interface
{
    public interface IDeleteRecord<T>
    {
        public Task<T> DeleteRecordAsync(int id);
    }
}
