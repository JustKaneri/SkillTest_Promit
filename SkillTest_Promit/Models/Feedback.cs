using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SkillTest_Promit.Models
{
    [Table("Feedback")]
    public class Feedback
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "Обязательное поле")]
        [MaxLength(1000,ErrorMessage = "Превышена длина отзыва")]
        [MinLength(5,ErrorMessage = "Отзыв должен быть больше 5 символов")]
        public string Posivite { get; set; }
        [MaxLength(1000, ErrorMessage = "Превышена длина отзыва")]
        public string? Negative { get; set; }
        [MaxLength(1000, ErrorMessage = "Превышена длина отзыва")]
        public string? Comment { get; set; }

        [Required(ErrorMessage = "Обязательное поле")]
        [Range(1,5,ErrorMessage ="Оценка должна быть от 1 до 5")]
        public int Mark { get; set; }
        public DateTime CreateDate { get; set; } = DateTime.Now;    
        public int UserId { get; set; }
        public User user { get; set; }
    }
}
