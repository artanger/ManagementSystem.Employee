using ManagementSystem.Employee.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ManagementSystem.Employee.Controllers
{
    public class EmployeeController : Controller
    {
        private InternetShopDBEntities internetShopDBEntities;

        public EmployeeController()
        {
            internetShopDBEntities = new InternetShopDBEntities();

        }

        // GET: Employee
        public ActionResult Index()
        {
            return View();
        }
    }
}