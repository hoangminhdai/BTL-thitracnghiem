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
        List<CAUHOI> lstCH = new List<CAUHOI>();
        // GET: LamDeThi
        public ActionResult Index(int id)
        {
            id = 1;
            
            DETHI dt = new DETHI();
            dt = dt.ChiTietDeThi(id);
            ViewData["DSCHDT"] =dt.ListCauHoi;
            
            ViewBag.id = id;
            
            return View();
        }
        [HttpPost]
        public ActionResult KetQua()
        {
            List<string> lstdapan = new List<string>();

            string id = Request.Form["id"];


            string a;
            for (int i = 1; i <= 10; i++)
            {
                a = string.Concat("CauHoi", i.ToString());
                if (Request.Form[a] == null)
                {
                    lstdapan.Add("Sai");
                }
                if (Request.Form[a] != null)
                {
                    lstdapan.Add(Request.Form[a]);
                }
            }
            DETHI dt = new DETHI();
            dt = dt.ChiTietDeThi(int.Parse(id));
            lstCH = dt.ListCauHoi;
            int count = 0;
            for (int i = 0; i <= 9; i++)
            {
                if (lstCH[i].DapAnDung.ToString().Trim().ToLower().Equals(lstdapan[i].ToString().Trim().ToLower()))
                {
                    count++;
                }
            }
            ViewBag.made = id;
            ViewBag.a = count;
            ViewBag.diem = count * 0.25;
            return View();
        }
    }
}