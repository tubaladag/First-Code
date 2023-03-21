using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFramework_23_02_23
{
    public partial class KategoriEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Entities db = new Entities();
            Categories kategori = new Categories();
            kategori.CategoryName= txtKategoriAdi.Text;
            kategori.Description= txtAciklama.Text;

            db.Categories.Add(kategori);

            string mesajFormati = "<div class='alert alert-{0}'>{1}</div>";

            try  
            {
                db.SaveChanges();
                lblBilgi.Text = string.Format(mesajFormati, "success", "Kayıt işlemi başarı ile tamamlanmıştır.");
            }
            catch (Exception)
            {
                lblBilgi.Text = string.Format(mesajFormati, "danger", "KAyıt işlemi esnasında bir hata meydana geldi.");
            }
        }
    }
}