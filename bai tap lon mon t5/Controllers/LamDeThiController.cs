using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using bai_tap_lon_mon_t5.Models;

namespace bai_tap_lon_mon_t5.Controllers
{
    public class LamDeThiController : Controller
    {
        // GET: LamDeThi
        public ActionResult Index()
        {
            int id = 1;
            
            DETHI dt = new DETHI();
            ViewData["DSCHDT"] = dt.DanhSachCauHoiTrongDe(id);
            ViewBag.id = id;
            
            return View();
        }
    }
}