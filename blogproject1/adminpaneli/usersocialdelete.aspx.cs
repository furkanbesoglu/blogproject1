using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogproject1.adminpaneli
{
    public partial class usersocialdelete : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["personID"].ToString());
            DataSet1TableAdapters.socialTableAdapter td = new DataSet1TableAdapters.socialTableAdapter();
            Repeater1.DataSource = td.TekSocialPers(id);
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["personID"].ToString());
            DataSet1TableAdapters.socialTableAdapter ss = new DataSet1TableAdapters.socialTableAdapter();
            Repeater1.DataSource = ss.SocialSil(id);
            Repeater1.DataBind();
        }
    }
}