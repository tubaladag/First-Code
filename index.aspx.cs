using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFramework_23_02_23
{
    public partial class index : System.Web.UI.Page
    {
        Entities db = new Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
           

            string katId= Request.QueryString["id"];
            if (!string.IsNullOrEmpty(katId))
            {
                int id = int.Parse(katId);

                var kategori = db.Categories.Find(id);

                if (kategori==null)
                {
                    Response.Redirect("index.aspx");
                }
                else 
                {
                    db.Categories.Remove(kategori);

                    string mesajFormati = "<div class='alert alert-{0}'>{1}</div>";

                    try
                    {
                        db.SaveChanges();
                        lblBilgi.Text = string.Format(mesajFormati, "success", "Silme işlemi başarı ile tamamlanmıştır.");
                    }
                    catch (Exception)
                    {
                        lblBilgi.Text = string.Format(mesajFormati, "danger", "Silme işlemi esnasında bir hata meydana geldi.");
                    }
                }

            }

            rptListe.DataSource = db.Categories.ToList();
            rptListe.DataBind();

        }
    }
}