using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace blogproject1.uyesayfalari
{
    public partial class singlepost : System.Web.UI.Page
    {
        string kullanici = System.Web.HttpContext.Current.User.Identity.Name;
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-1MAAJ30\SQLEXPRESS;Initial Catalog=BLG;Integrated Security=True");

        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.blogTableAdapter td = new DataSet1TableAdapters.blogTableAdapter();
            id = Convert.ToInt32(Request.QueryString["blogID"].ToString());
            Repeater1.DataSource = td.TekBlogGetir(id);
            Repeater1.DataBind();

            if (Page.IsPostBack == false)
            {
                baglanti.Open();
                SqlCommand cmdOkunma = new SqlCommand("Update blog Set blogReads=blogReads+1 where blogID='" + id + "'", baglanti);
                cmdOkunma.ExecuteNonQuery();
                baglanti.Close();

               
            }

            RepeaterRandom.DataSource = td.RandomTop5();
            RepeaterRandom.DataBind();
            RepeaterRandomIki.DataSource = td.RandomTop5();
            RepeaterRandomIki.DataBind();


            DataSet1TableAdapters.DataTable1TableAdapter yy = new DataSet1TableAdapters.DataTable1TableAdapter();
            id = Convert.ToInt32(Request.QueryString["blogID"].ToString());
            RepeaterSonYorum.DataSource = yy.TümYorumlarıGetir(id);
            RepeaterSonYorum.DataBind();
            //RepeaterSonIki.DataSource = yy.SondamIkinciYorumuGetir();
            //RepeaterSonIki.DataBind();
           

            DataSet1TableAdapters.social1TableAdapter ss = new DataSet1TableAdapters.social1TableAdapter();
            id = Convert.ToInt32(Request.QueryString["blogID"].ToString());
            RepeaterSocial.DataSource = ss.TekSocial1(id);
            RepeaterSocial.DataBind();


            string[] parametreAdi = new string[] { "Event", "@userName" };
            object[] parametreDeğeri = new object[] { "SELECTBYID", kullanici };
            DataTable sonuc = methodlar.gosterDataTablosu("connBlog", "sp_person", parametreAdi, parametreDeğeri);

            if (!(sonuc.Rows.Count > 0))
            {
                btnYorumGonder.Visible = true;
                //btnYorumGuncelle.Visible = false;

            }
            else
            {
                if (IsPostBack == false)
                {
                    btnYorumGonder.Visible = true;
                    //btnYorumGuncelle.Visible = true;
                    txtname.Text = sonuc.Rows[0]["personName"].ToString();
                    txtSurname.Text = sonuc.Rows[0]["personSurname"].ToString();
                      
                }


            }

        }

        protected void btnYorumGonder_Click(object sender, EventArgs e)
        {
           
            string[] parametreAdi = new string[] { "@Event", "@userName", "@blogID", "@commentContent", "@commentDate" };
            object[] parametreDeğeri = new object[] { "INSERT", kullanici, id, TextAreaDetail.Value, DOBcomment.Value };
            string sonuc = methodlar.EkleGuncelleSil("connBlog", "sp_comment", parametreAdi, parametreDeğeri);
            //Response.Redirect(Request.RawUrl);
            SONUC.Text = sonuc;
  
            if (Page.IsPostBack==true)
            {
                id = Convert.ToInt32(Request.QueryString["blogID"].ToString());
                baglanti.Open();
                SqlCommand cmdOkunma1 = new SqlCommand("Update blog Set  blogCommentReads= blogCommentReads+1 where blogID='" + id + "'", baglanti);
                cmdOkunma1.ExecuteNonQuery();
                baglanti.Close();

            }
        }

        //protected void btnYorumGuncelle_Click(object sender, EventArgs e)
        //{
        //    string[] parametreAdi = new string[] { "@Event", "@userName", "@blogID", "@commentContent", "@commentDate" };
        //    object[] parametreDeğeri = new object[] { "UPDATE", kullanici, id, TextAreaDetail.Value, DOBcomment.Value };
        //    string sonuc = methodlar.EkleGuncelleSil("connBlog", "sp_comment", parametreAdi, parametreDeğeri);
        //    //Response.Redirect(Request.RawUrl);
        //    SONUC.Text = sonuc;
        //}
    }
}