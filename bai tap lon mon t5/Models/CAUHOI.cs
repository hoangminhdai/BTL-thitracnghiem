using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace bai_tap_lon_mon_t5.Models
{
    public class CAUHOI
    {

        private int maCauHoi;
        private string noiDung;
        private string loiGiai;
        private string dapAnA;
        private string dapAnB;
        private string dapAnC;
        private string dapAnD;
        private string dapAnDung;
        private string IMG;
        private string doKho;
        private int vungKienThuc;
        private int loaiCauHoi;

        public int MaCauHoi { get => maCauHoi; set => maCauHoi = value; }
        public string NoiDung { get => noiDung; set => noiDung = value; }
        public string LoiGiai { get => loiGiai; set => loiGiai = value; }
        public string DapAnA { get => dapAnA; set => dapAnA = value; }
        public string DapAnB { get => dapAnB; set => dapAnB = value; }
        public string DapAnC { get => dapAnC; set => dapAnC = value; }
        public string DapAnD { get => dapAnD; set => dapAnD = value; }
        public string DapAnDung { get => dapAnDung; set => dapAnDung = value; }
        public string IMG1 { get => IMG; set => IMG = value; }
        public string DoKho { get => doKho; set => doKho = value; }
        public int VungKienThuc { get => vungKienThuc; set => vungKienThuc = value; }
        public int LoaiCauHoi { get => loaiCauHoi; set => loaiCauHoi = value; }

        //CAUHOI(int ma,string nd,string lg,string a,string b,string c, string d,string dadung,string img,string dokho,string vungkt,string loaicauhoi)
        //{
        //  MaCauHoi = ma;
        //    noiDung= nd;
        //    loiGiai= lg;
        //    dapAnA = a ;
        //    dapAnB = b;
        //    dapAnC = c;
        //    dapAnD = d;
        //    dapAnDung = dadung;
        //    IMG = img;
        //    doKho = dokho;
        //    vungKienThuc = vungkt;
        //    loaiCauHoi = loaicauhoi;

        //} 

        //tạo proc thêm câu hỏi trong sql
        //        create proc pc_ThemCauHoi(
        //@noiDung nvarchar(200),     
        //@loiGiai nvarchar(200), 
        //@dapAnA nvarchar(200)  ,
        //@dapAnB nvarchar(200),   
        //@dapAnC nvarchar(200) , 
        //@dapAnD nvarchar(200),
        //@dapAnDung nvarchar(200),  
        //@IMG nvarchar(200),
        //@doKho nvarchar(200),       
        //@vungKienThuc int,
        //@loaiCauHoi int )
        //as
        //begin
        //    insert into CAUHOI(NoiDung, LoiGiai, A, B, C, D, DapAnDung, IMG, DoKho, VungKienThuc, LoaiCauHoi)

        //    values(
        //    @noiDung,
        //    @loiGiai,
        //    @dapAnA ,
        //    @dapAnB ,
        //    @dapAnC ,
        //    @dapAnD ,
        //    @dapAnDung,
        //    @IMG    ,
        //    @doKho   ,
        //    @vungKienThuc,
        //    @loaiCauHoi

        //    )
        //end
        public void ThemCauHoi(CAUHOI a)
        {
            SqlConnection con = new SqlConnection("server=DESKTOP-M0UUI69\\SQLEXPRESS;database=DBThiTracNghiem;Integrated Security=SSPI");
            con.Open();
            SqlCommand sc = new SqlCommand("pc_ThemCauHoi", con);
            //sc.Parameters.Add("@MaCauHoi", a.MaCauHoi);
            sc.Parameters.Add(new SqlParameter("@noiDung"        , a.NoiDung.ToString()));
            sc.Parameters.Add(new SqlParameter("@loiGiai"        , a.LoiGiai.ToString()));
            sc.Parameters.Add(new SqlParameter("@dapAnA"     , a.DapAnA.ToString()));
            sc.Parameters.Add(new SqlParameter("@dapAnB"      , a.DapAnB.ToString()));
            sc.Parameters.Add(new SqlParameter("@dapAnC"    , a.DapAnC.ToString()));
            sc.Parameters.Add(new SqlParameter("@dapAnD"   , a.DapAnD.ToString()));
            sc.Parameters.Add(new SqlParameter("@dapAnDung"      ,a.DapAnDung.ToString()));
            sc.Parameters.Add(new SqlParameter("@IMG"        ,      a.IMG1.ToString()));
            sc.Parameters.Add(new SqlParameter("@doKho"          , a.DoKho.ToString()));
            sc.Parameters.Add(new SqlParameter("@vungKienThuc"       , a.VungKienThuc.ToString()));
            sc.Parameters.Add(new SqlParameter("@loaiCauHoi"     , a.LoaiCauHoi.ToString()));
            sc.CommandType = CommandType.StoredProcedure;
            sc.ExecuteNonQuery();
            con.Close();
            
        }
        public void SetData(FormCollection fc )
        {
            //maCauHoi = int.Parse(dr["maCauHoi"].ToString());//mã tự tăng nên không cần
            NoiDung = fc["noiDung"].ToString();
            LoiGiai     = fc["noiDung"].ToString();
            DapAnA      = fc["loiGiai"].ToString();
            DapAnB      = fc["dapAnB"].ToString();
            DapAnC      = fc["dapAnC"].ToString();
            DapAnD      = fc["dapAnD"].ToString();
            DapAnDung   = fc["dapAnDung"].ToString();
            IMG1         = fc["IMG"].ToString();
            DoKho       = fc["doKho"].ToString();
            VungKienThuc = int.Parse(fc["vungKienThuc"].ToString());
            LoaiCauHoi   = int.Parse(fc["loaiCauHoi"].ToString());
        }
        public void SetData(DataRow dr)//đọc dữ liệu từ dòng từ datatable
        {
            MaCauHoi = int.Parse(dr["maCauHoi"].ToString());//mã tự tăng nên không cần
            NoiDung = dr["noiDung"].ToString();
            LoiGiai = dr["loiGiai"].ToString();
            DapAnA = dr["dapAnA"].ToString();
            DapAnB = dr["dapAnB"].ToString();
            DapAnC = dr["dapAnC"].ToString();
            DapAnD = dr["dapAnD"].ToString();
            DapAnDung = dr["dapAnDung"].ToString();
            IMG1 = dr["IMG"].ToString();
            DoKho = dr["doKho"].ToString();
            VungKienThuc = int.Parse(dr["vungKienThuc"].ToString());
            LoaiCauHoi = int.Parse(dr["loaiCauHoi"].ToString());
        }

    }
    public class DanhSachCAUHOI
    {
        List<CAUHOI> lst = new List<CAUHOI>();
        public List<CAUHOI> GetAll()
        {
            SqlConnection con = new SqlConnection("server=DESKTOP-M0UUI69\\SQLEXPRESS;database=DBThiTracNghiem;integrated security=SSPI ");
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select *from CAUHOI", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            lst = new List<CAUHOI>();
            foreach (DataRow dr in dt.Rows)
            {
                CAUHOI sp = new CAUHOI();
                sp.SetData(dr);
                lst.Add(sp);
            }
            return lst;
        }
        public CAUHOI GetSingle(int id)
        {
            SqlConnection con = new SqlConnection("server=DESKTOP-M0UUI69\\SQLEXPRESS;database=DBThiTracNghiem;integrated security=SSPI ");
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select *from CAUHOI where maCauHoi=" + id.ToString(), con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count == 1)
            {
                CAUHOI sp = new CAUHOI();
                sp.SetData(dt.Rows[0]);
                return sp;
            }
            else return null;
        }

    }
}