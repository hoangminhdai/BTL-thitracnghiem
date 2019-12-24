using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace bai_tap_lon_mon_t5.Models
{
    public class CHITIETDETHI
    {
        private int maDeThi;
        private int maCauHoi;

        public int MaDeThi { get => maDeThi; set => maDeThi = value; }
        public int MaCauHoi { get => maCauHoi; set => maCauHoi = value; }

        public void SetData(DataRow dr)
        {
            MaDeThi = int.Parse(dr["maDeThi"].ToString());
            MaCauHoi= int.Parse(dr["maCauHoi"].ToString());
        }
    }
    public class DanhSachCHITIETDETHI
    {
        List<CHITIETDETHI> lst = new List<CHITIETDETHI>();
        public List<CHITIETDETHI> GetAll()
        {
            SqlConnection con = new SqlConnection("server=DESKTOP-M0UUI69\\SQLEXPRESS;database=DBThiTracNghiem;integrated security=SSPI ");
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select *from CHITIETDETHI", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            lst = new List<CHITIETDETHI>();
            foreach (DataRow dr in dt.Rows)
            {
                CHITIETDETHI sp = new CHITIETDETHI();
                sp.SetData(dr);
                lst.Add(sp);
            }
            return lst;
        }
    }
}