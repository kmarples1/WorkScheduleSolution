using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using WorkSchedule.Data.Entities;
using System.Data.Entity;
using WorkScheduleSystem.DAL;

namespace WorkScheduleSystem.BLL
{
    [DataObject]
    public class EmployeeController
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Employee> ListAllEmployees()
        {
            using (var context = new WorkScheduleContext())
            {
                return context.Employees.ToList();
            }
        }

    }
}
