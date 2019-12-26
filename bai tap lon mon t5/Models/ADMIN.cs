using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace bai_tap_lon_mon_t5.Models
{
    public class ADMIN
    {
        private int maAdmin;
        private string tenAdmin;
        private string tenTaiKhoanAD;
        private string matKhau;

        public int MaAdmin { get => maAdmin; set => maAdmin = value; }
        public string TenAdmin { get => tenAdmin; set => tenAdmin = value; }
        public string TenTaiKhoanAD { get => tenTaiKhoanAD; set => tenTaiKhoanAD = value; }
        public string MatKhau { get => matKhau; set => matKhau = value; }
    }
}