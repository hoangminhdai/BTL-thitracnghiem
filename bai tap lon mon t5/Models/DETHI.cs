using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace bai_tap_lon_mon_t5.Models
{
    public class DETHI
    {
        private int maDeThi { get; set ; }
        private DateTime ngayLap { get; set; }

        public void ThemDe()
        {
            //lam roi
        }
        public List<CAUHOI> DanhSachCauHoiTrongDe(int id)
        {
            DanhSachCHITIETDETHI dsctdt = new DanhSachCHITIETDETHI();
            DanhSachCAUHOI dsch = new DanhSachCAUHOI();
            var lstcauhoi = new List<CAUHOI>();
            foreach (CHITIETDETHI ct in dsctdt.GetAll())
            {
                if (ct.MaDeThi == id)
                    lstcauhoi.Add(dsch.GetSingle(ct.MaCauHoi));
            }
            return lstcauhoi;
        }
        public void SetData(DataRow dr)
        {
            maDeThi = int.Parse( dr["maDeThi"].ToString());
            ngayLap = DateTime.Parse( dr["ngayLap"].ToString());
        }
     

    }
    public class DanhSachDeThi
    {
        List<DETHI> lst = new List<DETHI>();
        public List<DETHI> GetAll()
        {
            SqlConnection con = new SqlConnection("server=DESKTOP-M0UUI69\\SQLEXPRESS;database=DBThiTracNghiem;integrated security=SSPI ");
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select *from DETHI", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            lst = new List<DETHI>();
            foreach (DataRow dr in dt.Rows)
            {
                DETHI sp = new DETHI();
                sp.SetData(dr);
                lst.Add(sp);
            }
            return lst;
        }
        public DETHI GetSingle(int id)
        {
            SqlConnection con = new SqlConnection("server=DESKTOP-M0UUI69\\SQLEXPRESS;database=DBThiTracNghiem;integrated security=SSPI ");
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select *from DETHI where maDeThi=" + id.ToString(), con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count == 1)
            {
                DETHI sp = new DETHI();
                sp.SetData(dt.Rows[0]);
                return sp;
            }
            else return null;
        }
    }
}