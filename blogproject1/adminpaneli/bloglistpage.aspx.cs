using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogproject1.adminpaneli
{
    public partial class bloglistpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable3TableAdapter bb = new DataSet1TableAdapters.DataTable3TableAdapter();
            Repeater1.DataSource = bb.AdminBlog();
            Repeater1.DataBind();
        }
    }
}