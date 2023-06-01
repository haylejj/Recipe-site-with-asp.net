using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiApp
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlManagement conn = new sqlManagement();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {        
            id=Request.QueryString["CategoryId"];

            if (Page.IsPostBack==false) { 
                SqlCommand komut = new SqlCommand("Select * from Kategoriler where CategoryId=@p1", conn.connection());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr=komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text=dr[1].ToString();
                TextBox2.Text=dr[2].ToString();
            }
            conn.connection().Close();
        }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update kategoriler set CategoryAd=@p1,CategoryAdet=@p2 where CategoryId=@p3",conn.connection());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", id);
            cmd.ExecuteNonQuery();
            conn.connection().Close();
        }
    }
}