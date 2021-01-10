using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogproject1.adminpaneli
{
    public partial class userlistpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable2TableAdapter pt = new DataSet1TableAdapters.DataTable2TableAdapter();
            Repeater1.DataSource = pt.TümPersonlarıGetir();
            Repeater1.DataBind();
        }

        protected void btnAra_Click(object sender, EventArgs e)
        {
            Response.Redirect("ara.aspx?userName=" + txtserach.Text.Trim());
        }
    }
}