﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WorkSchedule.Data.Entities;

namespace WorkScheduleSystem.DAL
{
    internal class WorkScheduleContext : DbContext
    {
        public WorkScheduleContext() : base("name=WorkSchedule") 
        {

            Database.SetInitializer<WorkScheduleContext>(null);
        }

        public DbSet<Employee> Employees { get; set; }

        public DbSet<EmployeeSkill> EmployeeSkills { get; set; }

        public DbSet<Skill> Skills { get; set; }


    }
}
