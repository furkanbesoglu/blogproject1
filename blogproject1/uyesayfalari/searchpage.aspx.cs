using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace blogproject1.uyesayfalari
{
    public partial class searchpage : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-1MAAJ30\SQLEXPRESS;Initial Catalog=BLG;Integrated Security=True");
        string arananKelime = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            arananKelime = Request.QueryString["arananKelime"];
            if (Page.IsPostBack == false)
            {
                baglanti.Open();
                SqlCommand cmdara = new SqlCommand("SELECT dbo.blog.blogimageURL,dbo.blog.bloggerName,dbo.blog.blogDate,dbo.blog.blogReads,dbo.blog.blogCommentReads,dbo.blog.blogBaslik,dbo.blog.frontContent,dbo.blog.blogID from blog where blogBaslik like '%"+arananKelime+ "%' or bloggerName like '%"+arananKelime+"%'", baglanti);
                SqlDataReader drara = cmdara.ExecuteReader();
                RepeaterSon.DataSource = drara;
                RepeaterSon.DataBind();
                baglanti.Close();

            }


            DataSet1TableAdapters.blog2TableAdapter rr = new DataSet1TableAdapters.blog2TableAdapter();

            RepeaterRandomTop7.DataSource = rr.RandomTop7();
            RepeaterRandomTop7.DataBind();

            DataSet1TableAdapters.blogTableAdapter td = new DataSet1TableAdapters.blogTableAdapter();

            RepeaterRandom.DataSource = td.RandomTop5();
            RepeaterRandom.DataBind();


        }
    }
}