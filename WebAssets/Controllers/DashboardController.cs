using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebAssets.Controllers
{
    public class DashboardController : Controller
    {
        public IActionResult Index()
        {
            if (
                HttpContext.Session.GetString("NIK") == null ||
                HttpContext.Session.GetString("Name") == null ||
                HttpContext.Session.GetString("Role") == null
            )
            {
                return RedirectToAction("Login", "Auth", new { area = "" });
            } else
            {
                ViewBag.nik = HttpContext.Session.GetString("NIK");
                ViewBag.name = HttpContext.Session.GetString("Name");
                ViewBag.role = HttpContext.Session.GetString("Role");
            }
            return View();
        }
        
        public IActionResult Employees()
        {
            if (
                HttpContext.Session.GetString("NIK") == null ||
                HttpContext.Session.GetString("Name") == null ||
                HttpContext.Session.GetString("Role") == null 
            )
            {                
                return RedirectToAction("Login", "Auth", new { area = "" });
            }
            ViewBag.nik = HttpContext.Session.GetString("NIK");
            ViewBag.name = HttpContext.Session.GetString("Name");
            ViewBag.role = HttpContext.Session.GetString("Role");
            return View();
        }
        
        public IActionResult Departements()
        {
            if (
                HttpContext.Session.GetString("NIK") == null ||
                HttpContext.Session.GetString("Name") == null ||
                HttpContext.Session.GetString("Role") == null
            )
            {
                return RedirectToAction("Login", "Auth", new { area = "" });
            }
            ViewBag.nik = HttpContext.Session.GetString("NIK");
            ViewBag.name = HttpContext.Session.GetString("Name");
            ViewBag.role = HttpContext.Session.GetString("Role");
            return View();
        }
        
        public IActionResult Assets()
        {
            if (
                HttpContext.Session.GetString("NIK") == null ||
                HttpContext.Session.GetString("Name") == null ||
                HttpContext.Session.GetString("Role") == null
            )
            {
                return RedirectToAction("Login", "Auth", new { area = "" });
            }
            ViewBag.nik = HttpContext.Session.GetString("NIK");
            ViewBag.name = HttpContext.Session.GetString("Name");
            ViewBag.role = HttpContext.Session.GetString("Role");
            return View();
        }
        
        public IActionResult Roles()
        {
            if (
                HttpContext.Session.GetString("NIK") == null ||
                HttpContext.Session.GetString("Name") == null ||
                HttpContext.Session.GetString("Role") == null
            )
            {
                return RedirectToAction("Login", "Auth", new { area = "" });
            }
            ViewBag.nik = HttpContext.Session.GetString("NIK");
            ViewBag.name = HttpContext.Session.GetString("Name");
            ViewBag.role = HttpContext.Session.GetString("Role");
            return View();
        }
        
        public IActionResult BorrowAssets()
        {
            if (
                HttpContext.Session.GetString("NIK") == null ||
                HttpContext.Session.GetString("Name") == null ||
                HttpContext.Session.GetString("Role") == null
            )
            {
                return RedirectToAction("Login", "Auth", new { area = "" });
            }
            ViewBag.nik = HttpContext.Session.GetString("NIK");
            ViewBag.name = HttpContext.Session.GetString("Name");
            ViewBag.role = HttpContext.Session.GetString("Role");
            return View();
        }

       // public IActionResult BorrowAssetEmployee()
       // {
       //     if (
       //    HttpContext.Session.GetString("NIK") == null ||
       //    HttpContext.Session.GetString("Name") == null ||
       //    HttpContext.Session.GetString("Role") == null
       //)
       //     {
       //         return RedirectToAction("Login", "Auth", new { area = "" });
       //     }
       //     ViewBag.nik = HttpContext.Session.GetString("NIK");
       //     ViewBag.name = HttpContext.Session.GetString("Name");
       //     ViewBag.role = HttpContext.Session.GetString("Role");
       //     return View();
       // }

        public IActionResult BorrowAssetsManager()
        {
            if (
                HttpContext.Session.GetString("NIK") == null ||
                HttpContext.Session.GetString("Name") == null ||
                HttpContext.Session.GetString("Role") == null
            )
            {
                return RedirectToAction("Login", "Auth", new { area = "" });
            }
            ViewBag.nik = HttpContext.Session.GetString("NIK");
            ViewBag.name = HttpContext.Session.GetString("Name");
            ViewBag.role = HttpContext.Session.GetString("Role");
            return View();
        }

        public IActionResult BorrowAssetsManagerAsset()
        {
            if (
            HttpContext.Session.GetString("NIK") == null ||
            HttpContext.Session.GetString("Name") == null ||
            HttpContext.Session.GetString("Role") == null
        )
            {
                return RedirectToAction("Login", "Auth", new { area = "" });
            }
            ViewBag.nik = HttpContext.Session.GetString("NIK");
            ViewBag.name = HttpContext.Session.GetString("Name");
            ViewBag.role = HttpContext.Session.GetString("Role");
            return View();
        }
        public IActionResult RequestAssets()
        {
            if (
                HttpContext.Session.GetString("NIK") == null ||
                HttpContext.Session.GetString("Name") == null ||
                HttpContext.Session.GetString("Role") == null
            )
            {
                return RedirectToAction("Login", "Auth", new { area = "" });
            }
            ViewBag.nik = HttpContext.Session.GetString("NIK");
            ViewBag.name = HttpContext.Session.GetString("Name");
            ViewBag.role = HttpContext.Session.GetString("Role");
            return View();
        }
        public IActionResult Profile()
        {
            if (
             HttpContext.Session.GetString("NIK") == null ||
             HttpContext.Session.GetString("Name") == null ||
             HttpContext.Session.GetString("Role") == null 
        
         )
            {
                return RedirectToAction("Login", "Auth", new { area = "" });
            }
            ViewBag.nik = HttpContext.Session.GetString("NIK");
            ViewBag.name = HttpContext.Session.GetString("Name");
            ViewBag.role = HttpContext.Session.GetString("Role");
            
            if(HttpContext.Session.GetString("Role") != "Admin")
            {
                return RedirectToAction("Profile");
            }
            return View();
        }

        public IActionResult ProfileEmployee()
        {
            if (
             HttpContext.Session.GetString("NIK") == null ||
             HttpContext.Session.GetString("Name") == null ||
             HttpContext.Session.GetString("Role") == null

         )
            {
                return RedirectToAction("Login", "Auth", new { area = "" });
            }
            ViewBag.nik = HttpContext.Session.GetString("NIK");
            ViewBag.name = HttpContext.Session.GetString("Name");
            ViewBag.role = HttpContext.Session.GetString("Role");

            if (HttpContext.Session.GetString("Role") != "Employee")
            {
                return RedirectToAction("Profile");
            }
            return View();
        }
        public IActionResult ProfileManager()
        {
            if (
             HttpContext.Session.GetString("NIK") == null ||
             HttpContext.Session.GetString("Name") == null ||
             HttpContext.Session.GetString("Role") == null

         )
            {
                return RedirectToAction("Login", "Auth", new { area = "" });
            }
            ViewBag.nik = HttpContext.Session.GetString("NIK");
            ViewBag.name = HttpContext.Session.GetString("Name");
            ViewBag.role = HttpContext.Session.GetString("Role");

            if (HttpContext.Session.GetString("Role") != "Manager")
            {
                return RedirectToAction("Profile");
            }
            return View();
        }
        public IActionResult ProfileManagerAssets()
        {
            if (
             HttpContext.Session.GetString("NIK") == null ||
             HttpContext.Session.GetString("Name") == null ||
             HttpContext.Session.GetString("Role") == null

         )
            {
                return RedirectToAction("Login", "Auth", new { area = "" });
            }
            ViewBag.nik = HttpContext.Session.GetString("NIK");
            ViewBag.name = HttpContext.Session.GetString("Name");
            ViewBag.role = HttpContext.Session.GetString("Role");

            if (HttpContext.Session.GetString("Role") != "Manager Assets")
            {
                return RedirectToAction("Profile");
            }
            return View();
        }
    }
}
