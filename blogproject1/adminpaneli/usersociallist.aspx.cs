using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogproject1.adminpaneli
{
    public partial class usersociallist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.socialTableAdapter td = new DataSet1TableAdapters.socialTableAdapter();
            Repeater1.DataSource = td.socialhepsi();
            Repeater1.DataBind();
        }
    }
}