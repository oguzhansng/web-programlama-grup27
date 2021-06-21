using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Programlama
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Textbox1.Text = Session["Numara"].ToString();

            DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
            Textbox2.Text = "Ad Soyad: " +dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRAD+" "+dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRSOYAD;
            Textbox3.Text = "Mail Adresi: " +dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRMAIL;
            Textbox4.Text = "Telefon: "+dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRTELEFON;
            Textbox5.Text ="Şifre: "+  dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRSIFRE;
            //Textbox6.Text ="Fotoğraf: "+ dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRFOTOGRAF;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciGuncelle2.aspx?Numara=" + Textbox1.Text);
        }
    }
}