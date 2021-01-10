using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogproject1.adminpaneli
{
    public partial class blogdelete : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["blogID"].ToString());
            DataSet1TableAdapters.DataTable3TableAdapter pb = new DataSet1TableAdapters.DataTable3TableAdapter();
            Repeater1.DataSource = pb.AdminTekBlog(id);
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["blogID"].ToString());
            DataSet1TableAdapters.DataTable3TableAdapter bs = new DataSet1TableAdapters.DataTable3TableAdapter();
            bs.AdminBlogSil(id);
            Response.Redirect("bloglistpage.aspx");
        }
    }
}