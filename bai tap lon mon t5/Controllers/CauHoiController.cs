﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using bai_tap_lon_mon_t5.Models;
namespace bai_tap_lon_mon_t5.Controllers
{
    public class CauHoiController : Controller
    {
        // GET: CauHoi
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ThemTC()
        {
            return View();
        }

        public ActionResult ThemCauHoi(FormCollection fc)
        {
            var m = new CAUHOI();
            m.SetData(fc);
            m.ThemCauHoi(m);
            return RedirectToAction("ThemTC");
        }
    }
}