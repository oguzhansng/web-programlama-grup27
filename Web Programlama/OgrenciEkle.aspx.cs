using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Programlama
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciEkle(TxtOgrNumara.Text,TxtOgrAd1.Text, TxtOgrSoyad.Text, TxtOgrTelefon.Text, TxtOgrMail.Text
                , TxtOgrSifre.Text, TxtOgrFoto.Text,DropDownList1.SelectedValue);
            Response.Redirect("Default.aspx");
        }
    }
}