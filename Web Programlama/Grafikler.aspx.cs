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
    public partial class Grafikler : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-46H0O01;Initial Catalog=WebProjeDb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //Graf 4 İçin Sorgu
            baglanti.Open();
            SqlCommand command = new SqlCommand("Execute GRAF1", baglanti);
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                Chart4.Series["Dersler"].Points.AddXY(dr[0].ToString(), dr[1].ToString());
            }
            baglanti.Close();

            //GRAF 2 İÇİN SORGU
            baglanti.Open();
            SqlCommand command2 = new SqlCommand("Execute GRAF2", baglanti);
            SqlDataReader dr2 = command2.ExecuteReader();
            while (dr2.Read())
            {
                Chart2.Series["Cinsiyet"].Points.AddXY(dr2[0].ToString(), dr2[1].ToString());
            }
            baglanti.Close();

            //GRAF 3 İÇİN SORGU
            baglanti.Open();
            SqlCommand command3 = new SqlCommand("Execute GRAF3", baglanti);
            SqlDataReader dr3 = command3.ExecuteReader();
            while (dr3.Read())
            {
                Chart3.Series["DersAd"].Points.AddXY(dr3[0].ToString(), dr3[1].ToString());
            }
            baglanti.Close();


            baglanti.Open();
            SqlCommand command4 = new SqlCommand("Execute GRAF4", baglanti);
            SqlDataReader dr4 = command4.ExecuteReader();
            while (dr4.Read())
            {
                Chart1.Series["Notlar"].Points.AddXY(dr4[0].ToString(), dr4[1].ToString());
            }
            baglanti.Close();
        }
    }
}