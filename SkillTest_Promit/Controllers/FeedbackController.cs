using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using SkillTest_Promit.Dto;
using SkillTest_Promit.Interface;

namespace SkillTest_Promit.Controllers
{
    public class FeedbackController : Controller
    {
        private readonly IFeedbackRepository _feedbackRepository;
        private readonly IMapper _mapper;

        public FeedbackController(IFeedbackRepository feedbackRepository, IMapper mapper)
        {
            _feedbackRepository = feedbackRepository;
            _mapper = mapper;
        }

        public async Task<IActionResult> Index(int Id)
        {
            var feedback = await _feedbackRepository.GetByIdAsync(Id);

            if (feedback == null)
                return NotFound();

            return View(feedback);
        }
    }
}
