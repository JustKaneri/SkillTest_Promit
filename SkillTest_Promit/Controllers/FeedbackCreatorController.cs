using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using SkillTest_Promit.Dto;
using SkillTest_Promit.Interface;
using SkillTest_Promit.Models;

namespace SkillTest_Promit.Controllers
{
    public class FeedbackCreatorController :Controller
    {
        private readonly IMapper _mapper;
        private readonly IUserRepository _userRepository;
        private readonly IOrganizationRepository _organizationRepository;
        private readonly IFeedbackRepository _feedbackRepository;

        public FeedbackCreatorController(IMapper mapper,
            IUserRepository userRepository, IOrganizationRepository organizationRepository, IFeedbackRepository feedbackRepository)
        {
            _mapper = mapper;
            _userRepository = userRepository;
            _organizationRepository = organizationRepository;
            _feedbackRepository = feedbackRepository;
        }

        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Index(FeedbackDto feedbackDto)
        {
            var organizate = _mapper.Map<Organization>(feedbackDto);
            organizate = await CreateOrganizateAsync(organizate);

            if(organizate == null)
            {
                ModelState.AddModelError("", "Failed create feedback");
                return View(); 
            }
                
            var user = _mapper.Map<User>(feedbackDto);
            user.OrganizationId = organizate.Id;
            user = await CreateUserAsync(user);

            if (user == null)
            {
                ModelState.AddModelError("", "Failed create feedback");
                return View();
            }

            var feedback = _mapper.Map<Feedback>(feedbackDto);
            feedback.UserId = user.Id;
            feedback = await CreateFeedbackAsync(feedback);

            if (feedback == null)
            {
                ModelState.AddModelError("", "Failed create feedback");
                return View();
            }

            return Redirect("~/Feedbacks");
        }

        private async Task<Organization> CreateOrganizateAsync(Organization organization)
        {
            organization = await _organizationRepository.CreateRecordAsync(organization);
            return organization;
        }
        private async Task<User> CreateUserAsync(User user)
        {
            user = await _userRepository.CreateRecordAsync(user);
            return user;
        }

        private async Task<Feedback> CreateFeedbackAsync(Feedback feedback) 
        {
            feedback = await _feedbackRepository.CreateRecordAsync(feedback);
            return feedback;
        }
    }
}
