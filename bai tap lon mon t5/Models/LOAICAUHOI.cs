using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace bai_tap_lon_mon_t5.Models
{
    public class LOAICAUHOI
    {
        private int maLoai;
        private int tenLoai;

        public int MaLoai { get => maLoai; set => maLoai = value; }
        public int TenLoai { get => tenLoai; set => tenLoai = value; }
    }
}