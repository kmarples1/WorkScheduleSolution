using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkSchedule.Data.Entities
{
    [Table("Employees")]
    public class Employee
    {

        [Key]

        public int EmployeeID { get; set; }

        [StringLength(50)]
        public string FirstName { get; set; }
        [StringLength(50)]
        public string LastName { get; set; }

        // CK_Employees_HomePhone 12 char [1-9][0-9][0-9].[0-9][0-9][0-9].[0-9][0-9][0-9][0-9]
        
        public string HomePhone { get; set; }

        [Required]
        public Boolean Active { get; set; }

        public virtual EmployeeSkill Level { get; set; }

        public virtual EmployeeSkill YearsOfExperience { get; set; }
    }
}
