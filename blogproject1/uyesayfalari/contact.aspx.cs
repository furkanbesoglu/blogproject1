using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace blogproject1.uyesayfalari
{
    public partial class about : System.Web.UI.Page
    {
        string kullanici = System.Web.HttpContext.Current.User.Identity.Name;

        protected void Page_Load(object sender, EventArgs e)
        {
            string[] parametreAdi = new string[] { "Event", "@userName" };
            object[] parametreDeğeri = new object[] { "SELECTBYID", kullanici };
            DataTable sonuc = methodlar.gosterDataTablosu("connBlog", "sp_person", parametreAdi, parametreDeğeri);
            if (!(sonuc.Rows.Count > 0))
            {
                btnGonder.Visible = false;

            }
            else
            {
                if (IsPostBack == false)
                {
                    btnGonder.Visible = true;
                    TextBox2.Text = sonuc.Rows[0]["mail"].ToString();

                }
            }
        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {

            //MailMessage mail = new MailMessage();
            //mail.From = new MailAddress("furkababali@gmail.com");
            //mail.To.Add(TextBox2.Text);
            //mail.Subject = TextBox1.Text;
            //mail.Body = TextArea1.Value;

            //SmtpClient istemci = new SmtpClient();
            //istemci.Credentials = new System.Net.NetworkCredential("furkababali@gmail.com", "Kralkel.3478");
            //istemci.Port = 587;
            //istemci.Host = "smtp.gmail.com";
            //istemci.EnableSsl = true;
            //istemci.Send(mail);
            //SONUC.Text = "Başarılı Bir Şekilde Gönderildi";

            MailMessage mail = new MailMessage(); //yeni bir mail nesnesi Oluşturuldu.
            mail.IsBodyHtml = true; //mail içeriğinde html etiketleri kullanılsın mı?
            mail.To.Add("furkababali@gmail.com"); //Kime mail gönderilecek.

            //mail kimden geliyor, hangi ifade görünsün?
            mail.From = new MailAddress(TextBox2.Text, TextBox1.Text, System.Text.Encoding.UTF8);
            mail.Subject ="Gönderen Kullanıcı : " + TextBox2.Text;//mailin konusu

            //mailin içeriği.. Bu alan isteğe göre genişletilip daraltılabilir.
            mail.Body = TextArea1.Value;
            mail.IsBodyHtml = true;
            SmtpClient smp = new SmtpClient();

            //mailin gönderileceği adres ve şifresi
            smp.Credentials = new NetworkCredential("furkababali@gmail.com", "Kralkel.3478");
            smp.Port = 587;
            smp.Host = "smtp.gmail.com";//gmail üzerinden gönderiliyor.
            smp.EnableSsl = true;
            smp.Send(mail);//mail isimli mail gönderiliyor.
            SONUC.Text = "Bizimle İletişime Geçtiğiniz İçin Teşekkürler";


            //string[] parametreAdi = new string[] { "@Event", "@userName", "@mail", "@message" };
            //object[] parametreDeğeri = new object[] { "INSERT", kullanici,xtxtemail.Text,TextArea1.Value };
            //string sonuc = methodlar.EkleGuncelleSil("connBlog", "sp_contact", parametreAdi, parametreDeğeri);
            ////Response.Redirect(Request.RawUrl);
            //SONUC.Text = sonuc;


        }
    }
}