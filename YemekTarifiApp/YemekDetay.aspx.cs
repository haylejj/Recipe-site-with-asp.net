using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiApp
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        sqlManagement conn=new sqlManagement();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid=Request.QueryString["YemekId"];
            SqlCommand cmd = new SqlCommand("Select YemekAd from Yemekler where yemekId=@p1",conn.connection());
            cmd.Parameters.AddWithValue("@p1", Convert.ToInt32(yemekid));
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text=dr[0].ToString();
            }
            conn.connection().Close();

            // list of comments
            SqlCommand cmd2 = new SqlCommand("Select * from Yorumlar where yemekId=@p2", conn.connection());
            cmd2.Parameters.AddWithValue("@p2", Convert.ToInt32(yemekid));
            SqlDataReader dr2=cmd2.ExecuteReader();
            DataList2.DataSource=dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd3 = new SqlCommand("insert into Yorumlar (YorumAdSoyad,YorumMail,YorumIcerik,YemekId) values (@p1,@p2,@p3,@p4) ", conn.connection());
            cmd3.Parameters.AddWithValue("@p1",TextBox1.Text);
            cmd3.Parameters.AddWithValue("@p2",TextBox2.Text );
            cmd3.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd3.Parameters.AddWithValue("@p4", Convert.ToInt32(yemekid));
            cmd3.ExecuteNonQuery();
            conn.connection().Close();
            Response.Write("Yorumunuz Başarıyla Yapılmıştır.");
        }
    }
}