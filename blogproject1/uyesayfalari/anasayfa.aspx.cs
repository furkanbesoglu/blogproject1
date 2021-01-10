using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogproject1.uyesayfalari
{
    public partial class anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.blog2TableAdapter rr = new DataSet1TableAdapters.blog2TableAdapter();

            RepeaterRandomTop7.DataSource = rr.RandomTop7();
            RepeaterRandomTop7.DataBind();


            DataSet1TableAdapters.blogTableAdapter td = new DataSet1TableAdapters.blogTableAdapter();

            RepeaterSon.DataSource = td.SonBlogGetir();
            RepeaterSon.DataBind();

            RepeaterSondanBirOnceki.DataSource = td.SondanBirOncekiBlog();
            RepeaterSondanBirOnceki.DataBind();

            RepeaterSondanIkıOnceki.DataSource = td.SondanIkıOncekiBlog();
            RepeaterSondanIkıOnceki.DataBind();

            RepeaterSondanUc.DataSource = td.SondanUcuncuBlog();
            RepeaterSondanUc.DataBind();

            RepeaterSondanDort.DataSource = td.SondanDorduncuBlog();
            RepeaterSondanDort.DataBind();

            RepeaterSondanBes.DataSource = td.SondanBesOnceki();
            RepeaterSondanBes.DataBind();

            RepeaterSondanAlti.DataSource = td.SondanAltiOnceki();
            RepeaterSondanAlti.DataBind();

            RepeaterSondanYedi.DataSource = td.SondanYediOnceki();
            RepeaterSondanYedi.DataBind();

            RepeaterSondanSekiz.DataSource = td.SondanSekizinciBlog();
            RepeaterSondanSekiz.DataBind();

            RepeaterRandom.DataSource = td.RandomTop5();
            RepeaterRandom.DataBind();

            


           
        }
    }
}