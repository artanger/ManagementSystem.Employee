using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ManagementSystem.Employee.Models;

namespace ManagementSystem.Employee.Controllers
{
    public class EmployeesInfoesController : Controller
    {
        private InternetShopDBEntities db = new InternetShopDBEntities();

        // GET: EmployeesInfoes
        public ActionResult Index()
        {
            var employeesInfo = db.EmployeesInfo.Include(e => e.Employees);
            return View(employeesInfo.ToList());
        }

        // GET: EmployeesInfoes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EmployeesInfo employeesInfo = db.EmployeesInfo.Find(id);
            if (employeesInfo == null)
            {
                return HttpNotFound();
            }
            return View(employeesInfo);
        }

        // GET: EmployeesInfoes/Create
        public ActionResult Create()
        {
            ViewBag.EmployeesID = new SelectList(db.Employees, "EmployeesID", "FirstName");
            return View();
        }

        // POST: EmployeesInfoes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,MaritalStatus,BirthDate,Address,Phone,EmployeesID")] EmployeesInfo employeesInfo)
        {
            if (ModelState.IsValid)
            {
                db.EmployeesInfo.Add(employeesInfo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.EmployeesID = new SelectList(db.Employees, "EmployeesID", "FirstName", employeesInfo.EmployeesID);
            return View(employeesInfo);
        }

        // GET: EmployeesInfoes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EmployeesInfo employeesInfo = db.EmployeesInfo.Find(id);
            if (employeesInfo == null)
            {
                return HttpNotFound();
            }
            ViewBag.EmployeesID = new SelectList(db.Employees, "EmployeesID", "FirstName", employeesInfo.EmployeesID);
            return View(employeesInfo);
        }

        // POST: EmployeesInfoes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,MaritalStatus,BirthDate,Address,Phone,EmployeesID")] EmployeesInfo employeesInfo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(employeesInfo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.EmployeesID = new SelectList(db.Employees, "EmployeesID", "FirstName", employeesInfo.EmployeesID);
            return View(employeesInfo);
        }

        // GET: EmployeesInfoes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EmployeesInfo employeesInfo = db.EmployeesInfo.Find(id);
            if (employeesInfo == null)
            {
                return HttpNotFound();
            }
            return View(employeesInfo);
        }

        // POST: EmployeesInfoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            EmployeesInfo employeesInfo = db.EmployeesInfo.Find(id);
            db.EmployeesInfo.Remove(employeesInfo);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
