using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogproject1.uyesayfalari
{
    public partial class profil : System.Web.UI.Page
    {
        string kullanici = System.Web.HttpContext.Current.User.Identity.Name;


        protected void Page_Load(object sender, EventArgs e)
        {

            if (fluPicture.PostedFile != null && fluPicture.PostedFile.ContentLength > 0)
                UpLoadAndDisplay();


            string[] parametreAdi = new string[] { "Event", "@userName" };
            object[] parametreDeğeri = new object[] { "SELECTBYID", kullanici };
            DataTable sonuc = methodlar.gosterDataTablosu("connBlog", "sp_person", parametreAdi, parametreDeğeri);
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
                    imgPicture.ImageUrl = sonuc.Rows[0]["personimageURL"].ToString();
                    xtxtname.Text = sonuc.Rows[0]["personName"].ToString();
                    xtxtSecondname.Text = sonuc.Rows[0]["personSecondName"].ToString();
                    xtxtSurname.Text = sonuc.Rows[0]["personSurname"].ToString();
                    DOB.Value = sonuc.Rows[0]["dateOFbirth"].ToString();
                    xcmbgender.Text = sonuc.Rows[0]["genderID"].ToString();
                    xcmblogType.Text = sonuc.Rows[0]["blogTypeID"].ToString();
                    xtxtmail.Text = sonuc.Rows[0]["mail"].ToString();
                }
            }


            string[] parametreAdi1 = new string[] { "Event", "@userName" };
            object[] parametreDeğeri1 = new object[] { "SELECTBYID", kullanici };
            DataTable sonuc1 = methodlar.gosterDataTablosu("connBlog", "sp_social", parametreAdi1, parametreDeğeri1);
            if (!(sonuc1.Rows.Count > 0))
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

                    txtinstagram.Text = sonuc1.Rows[0]["instagram"].ToString();
                    txtfacebook.Text = sonuc1.Rows[0]["facebook"].ToString();
                    txtTwitter.Text = sonuc1.Rows[0]["twitter"].ToString();
                    txtLinkedin.Text = sonuc1.Rows[0]["linkedin"].ToString();
                    txtWebsite.Text = sonuc1.Rows[0]["website"].ToString();

                }
            }


        }

        private void UpLoadAndDisplay()
        {
            string extension = System.IO.Path.GetExtension(fluPicture.FileName);
            string imgName = fluPicture.FileName;
            string imgPath = "profilimages/" + imgName;
            int imgSize = fluPicture.PostedFile.ContentLength;
            if (fluPicture.PostedFile.ContentLength < 4002400)
            {
                if (fluPicture.PostedFile != null && fluPicture.PostedFile.FileName != "" && extension == ".jpg" || extension == ".png")
                {

                    fluPicture.SaveAs(Server.MapPath(imgPath));
                    imgPicture.ImageUrl = "~/uyesayfalari/" + imgPath;
                }
                else
                {
                    SONUC.Text = "YÜKLENECEK FOTOĞRAF FORMATI JPEG VEYA PNG OLMALI.";
                }
            }
            else
            {
                SONUC.Text = "MAKSİMUM BOYUT 4 MB OLAN FOTOĞRAF YÜKLEYEBİLİRSİNİZ.";
            }
           
        }
       
        protected void btnKaydol_Click(object sender, EventArgs e)
        {
            if (Kontroller() == "")
            {
                string[] parametreAdi = new string[] { "@Event", "@userName", "@personimageURL", "@personName", "@personSecondName", "@personSurname", "@dateOFbirth", "@genderID", "@blogTypeID", "@mail" };
                object[] parametreDeğeri = new object[] { "INSERT", kullanici, imgPicture.ImageUrl, xtxtname.Text, xtxtSecondname.Text, xtxtSurname.Text, DOB.Value, xcmbgender.SelectedItem.Value, xcmblogType.SelectedItem.Value, xtxtmail.Text };
                string sonuc = methodlar.EkleGuncelleSil("connBlog", "sp_person", parametreAdi, parametreDeğeri);
                SONUC.Text = sonuc;
            }
            else
            {
                SONUC.Text = Kontroller();
            }

        }

        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
            if (Kontroller()=="")
            {
                string[] parametreAdi = new string[] { "@Event", "@userName", "@personimageURL", "@personName", "@personSecondName", "@personSurname", "@dateOFbirth", "@genderID", "@blogTypeID", "@mail" };
                object[] parametreDeğeri = new object[] { "UPDATE", kullanici, imgPicture.ImageUrl, xtxtname.Text, xtxtSecondname.Text, xtxtSurname.Text, DOB.Value, xcmbgender.SelectedItem.Value, xcmblogType.SelectedItem.Value, xtxtmail.Text };
                string sonuc = methodlar.EkleGuncelleSil("connBlog", "sp_person", parametreAdi, parametreDeğeri);
                //Response.Redirect(Request.RawUrl);
                SONUC.Text = "Tebrikler Profiliniz Güncellendi";
            }
            else
            {
                SONUC.Text = Kontroller();
            }
            

        }

        string Kontroller()
        {

            string sonuc = "";
            if (!(blog.harfMi(xtxtname.Text) == ""))
            {
                sonuc += blog.harfMi(xtxtname.Text);

            }
            if (!(blog.harfMiKi(xtxtSecondname.Text) == ""))
            {
                sonuc += blog.harfMiKi(xtxtSecondname.Text);
            }
            if (!(blog.harfMi(xtxtSurname.Text) == ""))
            {
                sonuc += blog.harfMi(xtxtSurname.Text);
            }
            if (DOB.Value == null)
            {
                sonuc += "DOĞUM TARİHİ ALANINI BOŞ GEÇEMEZSİNİZ. <br/>";
            }
            if (!(xtxtmail.Text.Length > 10 &&  xtxtmail.Text.Length < 70))
            {
                sonuc += "EN AZ 10 EN FAZLA 70 KARAKTER GİREBİLİRSİN.<br/>";
            }
            if (!(blog.Email_Format_Kontrol(xtxtmail.Text) == true))
            {
                sonuc += "E-MAİL ADRESİNİZİ EKSİK VEYA YANLIŞ GİRDİNİZ. <br/>";
            }
         

            return sonuc;
        }
    }
}