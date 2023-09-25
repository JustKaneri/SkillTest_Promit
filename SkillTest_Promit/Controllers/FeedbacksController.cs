using Microsoft.AspNetCore.Mvc;
using SkillTest_Promit.Interface;

namespace SkillTest_Promit.Controllers
{
    public class FeedbacksController : Controller
    {
        private readonly IFeedbackRepository _feedbackRepository;

        public FeedbacksController(IFeedbackRepository feedbackRepository)
        {
            _feedbackRepository = feedbackRepository;
        }

        [HttpGet]
        public async Task<IActionResult> Index(int pageNumber = 1)
        {
            var feedbacks = await _feedbackRepository.GetAllAsync();
            ViewData[nameof(pageNumber)] = pageNumber;
            return View(feedbacks);
        }

        [HttpGet]
        public IActionResult Detailed(int Id)
        {
            return Redirect("/Feedback?id="+Id);
        }
    }
}
