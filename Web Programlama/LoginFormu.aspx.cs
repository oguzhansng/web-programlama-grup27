using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Web_Programlama
{
    public partial class LoginFormu : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-46H0O01;Initial Catalog=WebProjeDb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * from TBL_OGRENCI where NUMARA=@p1 and OGRSIFRE=@p2",baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("numara",TxtNumara.Text);
                Response.Redirect("OgrenciDefault.aspx?Numara="+TxtNumara.Text);
            }
            else {
                TxtSifre.Text = "Hatalı Şifre";

            }

            baglanti.Close();
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * from TBL_OGRETMEN where OGRTNUMARA=@p1 and OGRTSIFRE=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("ogrtnumara", TxtNumara.Text);
                Response.Redirect("Default.aspx?ogrtnumara" + TxtNumara.Text);
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre";

            }

            baglanti.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Write(@"<script language='javascript'>alert('Şifre Değiştirmek İçin Lütfen Okulunuz ile İletişime Geçiniz')</script>");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Write(@"<script language='javascript'>alert('İLETİŞİM: Adres: Gazi Üniversitesi Rektörlüğü 06560 Emniyet Mahallesi Bandırma Caddesi No:6/1 Yenimahalle - ANKARA '+' Telefon: 0(312) 202 20 00')</script>");
        }
    }
    }
