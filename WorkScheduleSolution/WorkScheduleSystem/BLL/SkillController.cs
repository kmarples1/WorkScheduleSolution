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
    [DataObject]
    public class SkillController
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Skill> ListAllSkills()
        {
            using (var context = new WorkScheduleContext())
            {
                return context.Skills.ToList();
            }
        }
    }
}
