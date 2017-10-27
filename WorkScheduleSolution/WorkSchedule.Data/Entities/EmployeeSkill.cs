using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkSchedule.Data.Entities
{
    [Table("EmployeeSkills")]
    public class EmployeeSkill
    {

        [Key]
        public int EmployeeSkillID { get; set; }

        public int EmployeeID { get; set; }

        public int SkillID { get; set; }

        public int Level { get; set; }

        public int? YearsOfExperience { get; set; }

        public decimal HourlyWage { get; set; }

        public virtual Employee FirstName { get; set; }

        public virtual Employee LastName { get; set; }

        public virtual Employee HomePhone { get; set; }

        public virtual Employee Active { get; set; }
    }

}
