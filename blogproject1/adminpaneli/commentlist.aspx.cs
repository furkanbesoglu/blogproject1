using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogproject1.adminpaneli
{
    public partial class commentlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable1TableAdapter td = new DataSet1TableAdapters.DataTable1TableAdapter();
            Repeater1.DataSource = td.TumPersonYorum();
            Repeater1.DataBind();
        }
    }
}