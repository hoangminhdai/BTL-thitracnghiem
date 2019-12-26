using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace bai_tap_lon_mon_t5.Models
{
    public class USER
    {
        private int maUser;
        private int tenTaiKhoan;
        private int matKhau;
        private int tenUser;
        private int trangThaiTaiKhoan;

        public int MaUser { get => maUser; set => maUser = value; }
        public int TenTaiKhoan { get => tenTaiKhoan; set => tenTaiKhoan = value; }
        public int MatKhau { get => matKhau; set => matKhau = value; }
        public int TenUser { get => tenUser; set => tenUser = value; }
        public int TrangThaiTaiKhoan { get => trangThaiTaiKhoan; set => trangThaiTaiKhoan = value; }
    }
}