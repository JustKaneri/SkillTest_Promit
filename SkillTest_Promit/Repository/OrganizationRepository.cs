using Microsoft.EntityFrameworkCore;
using SkillTest_Promit.Data;
using SkillTest_Promit.Interface;
using SkillTest_Promit.Models;

namespace SkillTest_Promit.Repository
{
    public class OrganizationRepository : IOrganizationRepository
    {
        private readonly DataContext _context;

        public OrganizationRepository(DataContext context) 
        {
            _context = context;
        }

        public async Task<Organization> CreateRecordAsync(Organization record)
        {

            var organization = await _context.Organizations.Where(org => org.Name == record.Name || org.Address == record.Address).FirstOrDefaultAsync();

            if (organization != null)
                return organization;

            try
            {
                _context.Organizations.Add(record);
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
