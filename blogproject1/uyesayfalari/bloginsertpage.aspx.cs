using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogproject1.uyesayfalari
{
    public partial class bloginsertpage : System.Web.UI.Page
    {
        string kullanici = System.Web.HttpContext.Current.User.Identity.Name;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (fluPicture.PostedFile != null && fluPicture.PostedFile.ContentLength > 0)
                UpLoadAndDisplay();
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

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            if (kontroller() == "")
            {
                string[] parametreAdi = new string[] { "@Event", "@userName", "@blogimageURL", "@blogBaslik", "@bloggerName", "@frontContent", "@blogDetail", "@blogTypeID", "@blogDate" };
                object[] parametreDeğeri = new object[] { "INSERT", kullanici, imgPicture.ImageUrl, txtBaslik.Text, txtBloggerName.Text, txtFroncontent.Text, TextAreaDetail.Value.ToString(), xcmbBlogType.SelectedItem.Value, xdateBlog.Value };
                string sonuc = methodlar.EkleGuncelleSil("connBlog", "sp_blog", parametreAdi, parametreDeğeri);
                //Response.Redirect(Request.RawUrl);
                SONUC.Text = sonuc;
            }
            else
            {
                SONUC.Text = kontroller();
            }
            
        }

        string kontroller()
        {
            string mesaj = "";
          
            if (!(txtFroncontent.Text.Length > 10  && txtFroncontent.Text.Length < 300))
            {
                mesaj += "EN AZ 10 EN FAZLA 300 KARAKTER GİREBİLİRSİNİZ.<br/>";
            }
            if (!(blog.blogharfMi(txtBloggerName.Text)==""))
            {
                mesaj += blog.blogharfMi(txtBloggerName.Text);
            }
            if (!(blog.blogharfMiKİ(txtBaslik.Text)==""))
            {
                mesaj += blog.blogharfMiKİ(txtBaslik.Text);
            }
            return mesaj;
        }
    }
}