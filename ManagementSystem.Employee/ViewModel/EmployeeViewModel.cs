using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ManagementSystem.Employee.ViewModel
{
    public class EmployeeViewModel
    {
        public int EmployeeID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Post { get; set; }
        public decimal Salary { get; set; }
        public decimal PriorSalary { get; set; }
        public List<EmployeesInfoViewModel> listofEmployeesInfoModel { get; set; }
    }
}