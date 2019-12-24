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
        
        private int    maCauHoi     { get; set; }       
        private string noiDung      { get; set; }       
        private string loiGiai      { get; set; }        
        private string dapAnA       { get; set; }        
        private string dapAnB        { get; set; }       
        private string dapAnC           { get; set; }        
        private string dapAnD           { get; set; }        
        private string dapAnDung        { get; set; }      
        private string IMG              { get; set; }        
        private string doKho                { get; set; }
        private int vungKienThuc     { get; set; }       
        private int loaiCauHoi    { get; set; }

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
            sc.Parameters.Add(new SqlParameter("@noiDung"        , a.noiDung.ToString()));
            sc.Parameters.Add(new SqlParameter("@loiGiai"        , a.loiGiai.ToString()));
            sc.Parameters.Add(new SqlParameter("@dapAnA"     , a.dapAnA.ToString()));
            sc.Parameters.Add(new SqlParameter("@dapAnB"      , a.dapAnB.ToString()));
            sc.Parameters.Add(new SqlParameter("@dapAnC"    , a.dapAnC.ToString()));
            sc.Parameters.Add(new SqlParameter("@dapAnD"   , a.dapAnD.ToString()));
            sc.Parameters.Add(new SqlParameter("@dapAnDung"      ,a.dapAnDung.ToString()));
            sc.Parameters.Add(new SqlParameter("@IMG"        ,      a.IMG.ToString()));
            sc.Parameters.Add(new SqlParameter("@doKho"          , a.doKho.ToString()));
            sc.Parameters.Add(new SqlParameter("@vungKienThuc"       , a.vungKienThuc.ToString()));
            sc.Parameters.Add(new SqlParameter("@loaiCauHoi"     , a.loaiCauHoi.ToString()));
            sc.CommandType = CommandType.StoredProcedure;
            sc.ExecuteNonQuery();
            con.Close();
            
        }
        public void SetData(FormCollection fc )
        {
            //maCauHoi = int.Parse(dr["maCauHoi"].ToString());//mã tự tăng nên không cần
            noiDung = fc["noiDung"].ToString();
            loiGiai     = fc["noiDung"].ToString();
            dapAnA      = fc["loiGiai"].ToString();
            dapAnB      = fc["dapAnB"].ToString();
            dapAnC      = fc["dapAnC"].ToString();
            dapAnD      = fc["dapAnD"].ToString();
            dapAnDung   = fc["dapAnDung"].ToString();
            IMG         = fc["IMG"].ToString();
            doKho       = fc["doKho"].ToString();
            vungKienThuc = int.Parse(fc["vungKienThuc"].ToString());
            loaiCauHoi   = int.Parse(fc["loaiCauHoi"].ToString());
        }
        public void SetData(DataRow dr)//đọc dữ liệu từ dòng từ datatable
        {
            maCauHoi = int.Parse(dr["maCauHoi"].ToString());//mã tự tăng nên không cần
            noiDung = dr["noiDung"].ToString();
            loiGiai = dr["noiDung"].ToString();
            dapAnA = dr["loiGiai"].ToString();
            dapAnB = dr["dapAnB"].ToString();
            dapAnC = dr["dapAnC"].ToString();
            dapAnD = dr["dapAnD"].ToString();
            dapAnDung = dr["dapAnDung"].ToString();
            IMG = dr["IMG"].ToString();
            doKho = dr["doKho"].ToString();
            vungKienThuc = int.Parse(dr["vungKienThuc"].ToString());
            loaiCauHoi = int.Parse(dr["loaiCauHoi"].ToString());
        }

    }
    public class DanhSachCAUHOI
    {
        List<CAUHOI> lst = new List<CAUHOI>();

    }
}