using Microsoft.AspNetCore.Mvc;
using SkillTest_Promit.Interface;

namespace SkillTest_Promit.Controllers
{
    public class AdministratorController : Controller
    {
        private readonly IFeedbackRepository _feedbackRepository;

        public AdministratorController(IFeedbackRepository feedbackRepository)
        {
            _feedbackRepository = feedbackRepository;
        }

        public async Task<IActionResult> Index()
        {
            var feedbacks = await _feedbackRepository.GetAllAsync();

            return View(feedbacks);
        }

        [HttpPost]
        public async Task<IActionResult> Delete(int Id)
        {
            var result = await _feedbackRepository.DeleteRecordAsync(Id);

             return View();
        }
    }
}
