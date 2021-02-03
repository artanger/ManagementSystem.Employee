using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ManagementSystem.Employee.ViewModel
{
    public class EmployeesInfoViewModel
    {
        public int ID { get; set; }
        public string MaritalStatus { get; set; }
        public DateTime BirthDate { get; set; }
        public string Address { get; set; }
        public char Phone { get; set; }

    }
}