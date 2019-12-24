using System.Web;
using System.Web.Mvc;

namespace bai_tap_lon_mon_t5
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
