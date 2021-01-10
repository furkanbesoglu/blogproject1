using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogproject1.uyesayfalari
{
    public partial class socialpage : System.Web.UI.Page
    {
        string kullanici = System.Web.HttpContext.Current.User.Identity.Name;
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] parametreAdi = new string[] { "Event", "@userName" };
            object[] parametreDeğeri = new object[] { "SELECTBYID", kullanici };
            DataTable sonuc = methodlar.gosterDataTablosu("connBlog", "sp_social", parametreAdi, parametreDeğeri);
            if (!(sonuc.Rows.Count > 0))
            {
                btnKaydol.Visible = true;
                btnGüncelle.Visible = false;
            }
            else
            {
                if (IsPostBack == false)
                {
                    btnKaydol.Visible = false;
                    btnGüncelle.Visible = true;

                    xtxtInstagram.Text = sonuc.Rows[0]["instagram"].ToString();
                    xtxtFacebook.Text = sonuc.Rows[0]["facebook"].ToString();
                    xtxtTwitter.Text = sonuc.Rows[0]["twitter"].ToString();
                    xtxtLinkedin.Text = sonuc.Rows[0]["linkedin"].ToString();
                    xtxtwebSite.Text = sonuc.Rows[0]["website"].ToString();
                }
            }
        }

        protected void btnKaydol_Click(object sender, EventArgs e)
        {
            string[] parametreAdi = new string[] { "@Event", "@userName", "@instagram", "@facebook", "@twitter", "@linkedin", "@website" };
            object[] parametreDeğeri = new object[] { "INSERT", kullanici,xtxtInstagram.Text,xtxtFacebook.Text,xtxtTwitter.Text,xtxtLinkedin.Text,xtxtwebSite.Text };
            string sonuc = methodlar.EkleGuncelleSil("connBlog", "sp_social", parametreAdi, parametreDeğeri);
            //Response.Redirect("anasayfa.aspx");
            SONUC.Text = sonuc;

        }

        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
            string[] parametreAdi = new string[] { "@Event", "@userName", "@instagram", "@facebook", "@twitter", "@linkedin", "@website" };
            object[] parametreDeğeri = new object[] { "Update", kullanici, xtxtInstagram.Text, xtxtFacebook.Text, xtxtTwitter.Text, xtxtLinkedin.Text, xtxtwebSite.Text };
            string sonuc = methodlar.EkleGuncelleSil("connBlog", "sp_social", parametreAdi, parametreDeğeri);
            //Response.Redirect(Request.RawUrl);
            SONUC.Text = "Sosyal Medya Linkleriniz Başarılı Şekilde Güncellenmiştir";
        }
    }
}
