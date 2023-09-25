using Microsoft.AspNetCore.Mvc;
using SkillTest_Promit.Interface;
using SkillTest_Promit.Models;

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
        public async Task<IActionResult> Index()
        {
            var feedbacks = await _feedbackRepository.GetAllAsync();
            return View(feedbacks);
        }

        public async Task<JsonResult> GetFeedbacks(int pageNumber)
        {
            var feedbacks = await _feedbackRepository.GetAllAsync();

            var result = feedbacks.Take(pageNumber * 5).ToList();

            var obj = new{total=feedbacks.Count,data=result};

            return new JsonResult(obj);
        }
    }
}
