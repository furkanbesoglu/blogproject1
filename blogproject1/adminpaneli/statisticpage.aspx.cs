using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace blogproject1.adminpaneli
{
    public partial class statisticpage : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-1MAAJ30\SQLEXPRESS;Initial Catalog=BLG;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            //sorgu1
            baglanti.Open();
            SqlCommand komut1 = new SqlCommand("Execute Graf3", baglanti);
            SqlDataReader dr1 = komut1.ExecuteReader();
            while (dr1.Read())
            {
                WebChartControl1.Series["Yazılan Türler"].Points.AddPoint(Convert.ToString(dr1[0]), int.Parse(dr1[1].ToString()));
            }
            baglanti.Close();

            DataSet1TableAdapters.QueriesTableAdapter dt = new DataSet1TableAdapters.QueriesTableAdapter();
            TxtTUS.Text = "Toplam Üye Sayısı : " + dt.ToplamUye();
            TxtTBS.Text = "Toplam Blog Sayısı : " + dt.Toplamblog();
            TxtTKS.Text = "Toplam Kadın Üye Sayısı : " + dt.TOplamKAdınSayısı();
            TxtTES.Text = "Toplam Erkek Üye Sayısı : " + dt.ToplamErkekSayısı(); 
        }
    }
}