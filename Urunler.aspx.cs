using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFramework_23_02_23
{
    public partial class Urunler : System.Web.UI.Page
    {
        Entities db = new Entities();   
        protected void Page_Load(object sender, EventArgs e)
        {
            rptListe.DataSource= db.Products.ToList();
            rptListe.DataBind();
        }
    }
}