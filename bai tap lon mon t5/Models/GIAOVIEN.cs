using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace bai_tap_lon_mon_t5.Models
{
    public class GIAOVIEN
    {
        private int maGiaoVien;
        private int tenGiaoVien;
        private int tenTaiKhoanGV;
        private int matKhauGV;

        public int MaGiaoVien { get => maGiaoVien; set => maGiaoVien = value; }
        public int TenGiaoVien { get => tenGiaoVien; set => tenGiaoVien = value; }
        public int TenTaiKhoanGV { get => tenTaiKhoanGV; set => tenTaiKhoanGV = value; }
        public int MatKhauGV { get => matKhauGV; set => matKhauGV = value; }
    }
}