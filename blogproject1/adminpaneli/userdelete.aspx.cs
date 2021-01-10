using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogproject1.adminpaneli
{
    public partial class userdelete : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["personID"].ToString());
            DataSet1TableAdapters.DataTable2TableAdapter pt = new DataSet1TableAdapters.DataTable2TableAdapter();
            Repeater1.DataSource = pt.PersonSec(id);
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["personID"].ToString());
            DataSet1TableAdapters.DataTable2TableAdapter ps = new DataSet1TableAdapters.DataTable2TableAdapter();
            ps.PersonSil(id);
            Response.Redirect("userlistpage.aspx");
        }
    }
}