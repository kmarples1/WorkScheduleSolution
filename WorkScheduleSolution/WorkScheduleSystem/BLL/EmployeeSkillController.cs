using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WorkSchedule.Data.Entities;
using WorkScheduleSystem.DAL;

namespace WorkScheduleSystem.BLL
{

    //Receive integer parameter representing a skill and return all employees with that skill.


    [DataObject]
    public class EmployeeSkillController
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<EmployeeSkill> ListAllEmployeeSkills()
        {
            using (var context = new WorkScheduleContext())
            {

                var SkillList = from row in context.EmployeeSkills
                                select new
                                {
                                    FullName = row.FirstName + " " + row.LastName,
                                    HomePhone = row.HomePhone,
                                    CurrentStatus = row.Active,
                                    SkillLevel = row.Level,
                                    YOE = row.YearsOfExperience
                                };
                return context.EmployeeSkills.ToList();
            }
        }

    }
}
