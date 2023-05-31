using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiApp
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlManagement conn=new sqlManagement();
        string kategoriId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriId=Request.QueryString["CategoryId"];
            SqlCommand cmd = new SqlCommand("Select * from Yemekler where CategoryId=@p1", conn.connection());
            cmd.Parameters.AddWithValue("@p1",kategoriId);
            SqlDataReader dr=cmd.ExecuteReader();
            DataList2.DataSource= dr;
            DataList2.DataBind();

        }
    }
}