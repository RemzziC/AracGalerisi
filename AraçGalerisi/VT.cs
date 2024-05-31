using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AraçGalerisi
{
    public class VT
    {
        public SqlConnection SQLbaglan()
        {
            SqlConnection b1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Galeri;Integrated Security=true");// (connection string /bağlantı cümleciği)
            b1.Open();
            return b1;

            // Sınıfın_ismi   nesnenin_ismi = new_anahtar_kelimesi   Sınıfın_ismi()
        }
    }
}