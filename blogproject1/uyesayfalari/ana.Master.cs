using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace blogproject1.uyesayfalari
{
    public partial class ana : System.Web.UI.MasterPage
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAra_Click(object sender, EventArgs e)
        {
            Response.Redirect("searchpage.aspx?arananKelime=" + txtsearch.Text);

        }


        protected void Unnamed1_LoggingOut(object sender, System.Web.UI.WebControls.LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }
    }
}