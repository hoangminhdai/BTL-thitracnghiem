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
        private int maDeThi;

        private DateTime ngayLap;

        private List<CAUHOI> listCauHoi;

        public int MaDeThi { get => maDeThi; set => maDeThi = value; }
        public DateTime NgayLap { get => ngayLap; set => ngayLap = value; }
        public List<CAUHOI> ListCauHoi { get => listCauHoi; set => listCauHoi = value; }

        public DETHI ()
        {
            this.ListCauHoi = new List<CAUHOI>();
        }


        public DETHI ChiTietDeThi(int id)
        {
            DETHI EX = new DETHI();
            string str = string.Format("select * from CAUHOI join DETHI   on CAUHOI.maDeThi=DETHI.maDeThi where DETHI.MaDeThi={0}", id.ToString());
         

              SqlConnection con = new SqlConnection();
            ConnectSQL c = new ConnectSQL();
            con = c.Connect();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(str, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            foreach (DataRow dr in dt.Rows)
            {
                CAUHOI sp = new CAUHOI();
                sp.SetData(dr);
                EX.ListCauHoi.Add(sp);
            }
            return EX;
        }
        //public List<CAUHOI> DanhSachCauHoiTrongDe(int id)
        //{
        //    CHITIETDETHI dsctdt = new CHITIETDETHI();
        //    CAUHOI dsch = new CAUHOI();
        //    var lstcauhoi = new List<CAUHOI>();
        //    foreach (CHITIETDETHI ct in dsctdt.GetAll())
        //    {
        //        if (ct.MaDeThi == id)
        //            lstcauhoi.Add(dsch.GetSingle(ct.MaCauHoi));
        //    }
        //    return lstcauhoi;
        //}
        //public List<CAUHOI> DanhSachCauHoi()
        //{

        //}

        public DETHI TimDeThi(int maDeThi)
        {
            DETHI DT= new DETHI();
            return DT;
        }
        public void SetData(DataRow dr)
        {
            MaDeThi = int.Parse( dr["maDeThi"].ToString());
            NgayLap = DateTime.Parse( dr["ngayLap"].ToString());
        }
        public List<DETHI> GetAll()
        {
            List<DETHI> lst = new List<DETHI>();
            //SqlConnection con = new SqlConnection("server=DESKTOP-M0UUI69\\SQLEXPRESS;database=DBThiTracNghiem;integrated security=SSPI ");
            SqlConnection con = new SqlConnection();
            ConnectSQL c = new ConnectSQL();
            con = c.Connect();
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
            //SqlConnection con = new SqlConnection("server=DESKTOP-M0UUI69\\SQLEXPRESS;database=DBThiTracNghiem;integrated security=SSPI ");
            SqlConnection con = new SqlConnection();
            ConnectSQL c = new ConnectSQL();
            con = c.Connect();
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