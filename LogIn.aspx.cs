using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFramework_23_02_23
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true) return;
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = string.Empty;
            string sifre = string.Empty;
            var sorgu = (from c db.Kullanicilar.Where(t => t.KullaniciAdi == email) select c).FirstDefault();
            if(sorgu != null )
            {
                string sifreSor = sorgu.Sifresi;
                if(sifreSor == sifre)
                {
                    if(sorgu.KullaniciRolu=="Admin")
                    {
                        Response.Redirect("~/admin");
                        mesaj.Text = "<script>alert('Girişiniz başarı ile sağlandı. Gerekli sayfaya yönlendiriliyorsunuz.')</script>";
                    }
                    else if(sorgu.KullaniciRolu == "User")
                    {
                        Response.Redirect ("~/user");
                        mesaj.Text = "<script>alert('Girişiniz başarı ile sağlandı. Gerekli sayfaya yönlendiriliyorsunuz.')</script>";
                    }
                    else
                    {
                        mesaj.Text = "<script>alert('Girilen şifre yanlış.')</script>";
                    }
                }
                else
                {
                    mesaj.Text = "<script>alert('Kullanıcı Adını Lütfen Kontrol Edin.')</script>";
                }
            }
        }
    }
}