using System.ComponentModel.DataAnnotations;

namespace SkillTest_Promit.Dto
{
    public class FeedbackDto
    {
        [Required(ErrorMessage = "Обязательное поле")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Обязательное поле")]
        [MaxLength(100, ErrorMessage = "Укажите название организации")]
        public string NameOrganization { get; set; }
        public string? Address { get; set; }
        [Required(ErrorMessage = "Обязательное поле")]
        [MaxLength(1000, ErrorMessage = "Превышена длина отзыва")]
        [MinLength(5, ErrorMessage = "Отзыв должен быть больше 5 символов")]
        public string Posivite { get; set; }
        public string? Negative { get; set; }
        public string? Comment { get; set; }
        [Required(ErrorMessage = "Обязательное поле")]
        [Range(1, 5, ErrorMessage = "Оценка должна быть от 1 до 5")]
        public string Mark { get; set; }
    }
}
