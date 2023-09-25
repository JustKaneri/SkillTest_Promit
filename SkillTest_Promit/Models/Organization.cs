using System.ComponentModel.DataAnnotations;

namespace SkillTest_Promit.Models
{
    public class Organization
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "Обязательное поле")]
        [MaxLength(100,ErrorMessage = "Укажите название организации")]
        public string Name { get; set; }

        [StringLength(255,ErrorMessage = "Слишком длинный адрес")]
        public string? Address { get; set; }
    }
}
