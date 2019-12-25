using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace bai_tap_lon_mon_t5.Models
{
    public class ConnectSQL
    {
        public SqlConnection Connect(string str= "server=DESKTOP-M0UUI69\\SQLEXPRESS;database=DBThiTracNghiem;integrated security=SSPI")
        {
            SqlConnection con = new SqlConnection(str);
            return con;
        }
    }
}