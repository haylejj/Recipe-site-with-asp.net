using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiApp
{
    public partial class AdminYorumDetay : System.Web.UI.Page
    {
        sqlManagement conn = new sqlManagement();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            


                id=Request.QueryString["YorumId"];
                SqlCommand cmd = new SqlCommand("Select YorumAdSoyad,YorumMail,YorumIcerik,YemekAd from Yorumlar inner join Yemekler on Yorumlar.YemekId=Yemekler.YemekId where YorumId=@p1", conn.connection());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text=dr[0].ToString();
                    TextBox2.Text=dr[1].ToString();
                    TextBox3.Text=dr[2].ToString();
                    TextBox4.Text=dr[3].ToString();

                }
                conn.connection().Close();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Update Yorumlar set YorumIcerik=@p1,YorumOnay=@p2 where YorumId=@p3", conn.connection());
            cmd.Parameters.AddWithValue("@p1", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p2", "True");
            cmd.Parameters.AddWithValue("@p3", id);
            cmd.ExecuteNonQuery();
            conn.connection().Close();

        }
    }
}