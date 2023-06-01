using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiApp
{
    public partial class AdminYemekGuncelle : System.Web.UI.Page
    {
        sqlManagement conn=new sqlManagement();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            id=Request.QueryString["YemekId"];

            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("Select * from Yemekler where YemekId=@p1", conn.connection());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text=dr[1].ToString();
                    TextBox2.Text=dr[2].ToString();
                    TextBox3.Text=dr[3].ToString();
                }
                conn.connection().Close();
            }
            if (Page.IsPostBack==false)
            {
                //Kategori listesi çekme
                SqlCommand cmd2 = new SqlCommand("Select * from Kategoriler", conn.connection());
                SqlDataReader dr2 = cmd2.ExecuteReader();
                DropDownList1.DataTextField="CategoryAd";
                DropDownList1.DataValueField="CategoryId";
                DropDownList1.DataSource=dr2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarifi=@p3,CategoryId=@p4 where YemekId=@p5", conn.connection());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@p5",id);

            cmd.ExecuteNonQuery();
            conn.connection().Close();
        }
    }
}