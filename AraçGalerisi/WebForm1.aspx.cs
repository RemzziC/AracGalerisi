using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AraçGalerisi
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sonLabel.Visible = true;

            string kullaniciAd = TextBox1.Text;
            string kullaniciSoyad = TextBox2.Text;
            string kullaniciTC = TextBox3.Text;
            string kullaniciTel = TextBox4.Text;
            string aracIsim = DropDownList1.SelectedValue;

            string connectionString = @"Data Source=.\SQLEXPRESS;Initial Catalog=Galeri;Integrated Security=true";
            using (SqlConnection b1 = new SqlConnection(connectionString))
            {
                b1.Open();

                string query = "INSERT INTO Musteri (kullaniciAd, kullaniciSoyad, kullaniciTC, kullaniciTel, arac) " +
                               "VALUES (@kullaniciAd, @kullaniciSoyad, @kullaniciTC, @kullaniciTel, @arac)";
                SqlCommand c1 = new SqlCommand(query, b1);


                c1.Parameters.AddWithValue("@kullaniciAd", kullaniciAd);
                c1.Parameters.AddWithValue("@kullaniciSoyad", kullaniciSoyad);
                c1.Parameters.AddWithValue("@kullaniciTC", kullaniciTC);
                c1.Parameters.AddWithValue("@kullaniciTel", kullaniciTel);
                c1.Parameters.AddWithValue("@arac", aracIsim);

                c1.ExecuteNonQuery();

                b1.Close();
            }
        }


    }
}