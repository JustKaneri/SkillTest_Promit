using SkillTest_Promit.Models;
using SkillTest_Promit.Dto;
using Profile = AutoMapper.Profile;

namespace SkillTest_Promit.Helper
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<FeedbackDto, User>().ReverseMap();
            CreateMap<FeedbackDto, Feedback>().ReverseMap();
            CreateMap<FeedbackDto, Organization>().ForMember(org => org.Name, dt => dt.MapFrom(dt => dt.NameOrganization)).ReverseMap();
        }
    }
}
