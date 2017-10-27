using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkSchedule.Data.Entities
{
    [Table("Skills")]
    public class Skill
    {
        [Key]
        public int SkillID { get; set; }

        public string Description { get; set; }

        public Boolean RequiresTicket { get; set; }
    }
}
