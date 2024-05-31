using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AraçGalerisi
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        VT n1 = new VT();
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand k = new SqlCommand("Select * from Kategoriler", n1.SQLbaglan());
            SqlDataReader oku = k.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

        }
    }
}