using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SkillTest_Promit.Models
{
    [Table("User")]
    public class User
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "Обязательное поле")]
        [StringLength(50,ErrorMessage = "Введите имя")]
        public string Name { get; set; }
        public int OrganizationId { get; set; }
        public Organization Organization { get; set; }
    }
}
