using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using blogproject1.Models;

namespace blogproject1.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayitol_Click(object sender, EventArgs e)
        {
            if (Kontroller() == "")
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
                var user = new ApplicationUser() { UserName = txtEmail.Text, Email = txtEmail.Text };
                IdentityResult result = manager.Create(user, txtPassword.Text);
                if (result.Succeeded)
                {
                    // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                    //string code = manager.GenerateEmailConfirmationToken(user.Id);
                    //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                    //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href="" + callbackUrl + "">here</a>.");
                    signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                    IdentityHelper.RedirectToReturnUrl("~/uyesayfalari/profil.aspx", Response);
                }
                else
                {
                    lblRegisterHatalar.Text = result.Errors.FirstOrDefault();

                }
            }
            else
            {
                lblRegisterHatalar.Text = Kontroller();
            }



        }

        string Kontroller()
        {
            string mesaj = "";
            if (!(txtPassword.Text == txtPasswordOnay.Text))
            {
                mesaj += "1.Kutudaki Şifre İle 2. Kutudaki Şifre Aynı Olmalıdır.";
            }
            if (!(blog.parolaKontrol(txtPassword.Text) == ""))
            {
                mesaj += blog.parolaKontrol(txtPassword.Text);
            }
            if ((blog.sayiMi(txtPassword.Text) == ""))
            {
                mesaj += "Sadece Sayılardan '(0-9)' Oluşan Bir Şifre Kullanamazsınız.";
            }
            return mesaj;
        }
    }
}