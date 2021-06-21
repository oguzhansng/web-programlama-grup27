using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Web_Programlama
{
    public partial class Ogretmen : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["OGRTNUMARA"].ToString();



            string id1 = Session["OGRTNUMARA"].ToString();

            DataSetTableAdapters.OgrtBilgiTableAdapter dt = new DataSetTableAdapters.OgrtBilgiTableAdapter();
            Label2.Text = dt.OgretmenPaneli(Label1.Text)[0].OGRTADSOYAD;
            Label3.Text = dt.OgretmenPaneli2(Label1.Text)[0].DERSAD;
            //SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebProjeDbConnectionString"].ConnectionString);

            //string sorgu = "SELECT OGRTID, OGRTADSOYAD,  DERSAD, OGRTBRANS, OGRTNUMARA, OGRTSIFRE FROM  TBL_OGRETMEN INNER JOIN TBL_DERSLER ON TBL_DERSLER.DERSID = TBL_OGRETMEN.OGRTBRANS WHERE OGRTNUMARA = @OGRTNUMARA";

            //SqlCommand cmd = new SqlCommand(sorgu, cnn);
            //cmd.Parameters.AddWithValue("@OGRTNUMARA", id1);
            //cnn.Open();
            //SqlDataReader dr = cmd.ExecuteReader();

            //if (dr.Read())
            //{
            //    image1.ImageUrl = dr["OGRTFOTO"].ToString();
            //    Label2.Text = dr["OGRTADSOYAD"].ToString();
            //    Label3.Text = dr["DERSAD"].ToString();
            //}
            //cnn.Close();

        }
    }
}