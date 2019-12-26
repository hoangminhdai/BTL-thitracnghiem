using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace bai_tap_lon_mon_t5.Models
{
    public class VUNGCAUHOI
    {
        private int maVung;
        private string tenVung;

        public int MaVung { get => maVung; set => maVung = value; }
        public string TenVung { get => tenVung; set => tenVung = value; }
    }
}