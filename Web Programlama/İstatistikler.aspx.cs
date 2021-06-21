using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Programlama
{
    public partial class İstatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //İstatistik 1
            DataSetTableAdapters.DataTable1TableAdapter dt = new DataSetTableAdapters.DataTable1TableAdapter();
            Textbox1.Text = "Toplam Öğrenci Sayısı: "+dt.İstatistik1().ToString();

            //İstatistik 2
            Textbox2.Text = "Toplam Öğretmen Sayısı: " + dt.İstatistik2().ToString();

            //İstatistik 3
            Textbox3.Text = "Toplam Ders Sayısı: " + dt.İstatistik3().ToString();

            //İstatistik 4
            Textbox4.Text = "Matematik Sınav 1'de En Başarılı Öğrenci: " + dt.İstatistik4().ToString();

            //İstatistik 5
            Textbox5.Text = "Dil Anlatım  Sınav 1'de En Başarılı Öğrenci: " + dt.İstatistik5().ToString();

            //İstatistik 6
            Textbox6.Text = "Edebiyat  Sınav 1'de En Başarılı Öğrenci: " + dt.İstatistik6().ToString();

            //İstatistik 7
            Textbox7.Text = "Matematik Sınav 1 Ortalaması :  " + dt.İstatistik7().ToString();

            //İstatistik 8
            Textbox8.Text = "Dil Anlatım Sınav 1 Ortalaması:  " + dt.İstatistik8().ToString();

            //İstatistik 9
            Textbox9.Text = "Edebiyat Sınav 1 Ortalaması :  " + dt.İstatistik9().ToString();

            //İstatistik 10
            Textbox10.Text = "Matematik Dersinden Geçen Öğrenci Sayısı: :  " + dt.İstatistik10().ToString();

            //İstatistik 11
            Textbox11.Text = "Matematik Dersinden Kalan Öğrenci Sayısı: :  " + dt.İstatistik11().ToString();

        }
    }
}