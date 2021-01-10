using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogproject1.adminpaneli
{
    public partial class commentdelete : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["personID"].ToString());
            DataSet1TableAdapters.DataTable1TableAdapter td = new DataSet1TableAdapters.DataTable1TableAdapter();
            Repeater1.DataSource = td.YorumSec(id);
            Repeater1.DataBind();
            Repeater1.DataSource = td.personYorumSil(id);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            id= Convert.ToInt32(Request.QueryString["personID"].ToString());
            DataSet1TableAdapters.DataTable1TableAdapter ys = new DataSet1TableAdapters.DataTable1TableAdapter();
            Repeater1.DataSource = ys.personYorumSil(id);
            Repeater1.DataBind();
            Response.Redirect("commentlist.aspx");
        }

       
    }
}