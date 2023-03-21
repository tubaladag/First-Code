using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFramework_23_02_23
{
    public partial class KategoriGuncelle : System.Web.UI.Page
    {
        Entities db = new Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Request.QueryString[parametreAdi] url içerisinde get metodu ile göndreilen içerisindeki değerleri okumak için kullanılır.

            if (!IsPostBack) // sayfanıon post olup olamdığının bilgisini bool tipinde verir.
            {
                if (string.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    Response.Redirect("index.aspx");
                }

                int kategoriId = int.Parse(Request.QueryString["id"]);

                var kategori = db.Categories.Find(kategoriId);

                if (kategori != null)
                {
                    txtKategoriAdi.Text = kategori.CategoryName;
                    txtAciklama.Text = kategori.Description;
                }
                else
                {
                    Response.Redirect("index.aspx");
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int kategoriId = int.Parse(Request.QueryString["id"]);
            var kat = db.Categories.Find(kategoriId);

            string mesajFormati = "<div class='alert alert-{0}'>{1}</div>";

            if (kat != null)
            {
                kat.CategoryName = txtKategoriAdi.Text;
                kat.Description = txtAciklama.Text;

                try
                {
                    db.SaveChanges();
                    lblBilgi.Text = string.Format(mesajFormati, "success", "Güncelleme işlemi başarı ile tamamlanmıştır.");
                }
                catch (Exception)
                {
                    lblBilgi.Text = string.Format(mesajFormati, "danger", "Güncelleme işlemi esnasında bir hata meydana geldi.");

                }

            }


        }
    }
}