using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiApp
{
    public partial class AdminTarifOnerDetay : System.Web.UI.Page
    {
        sqlManagement conn = new sqlManagement();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id=Request.QueryString["TarifId"];
            SqlCommand cmd = new SqlCommand("Select * from Tarifler where TarifId=@p1", conn.connection());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text=dr[1].ToString();
                TextBox2.Text=dr[2].ToString();
                TextBox3.Text=dr[3].ToString();
                TextBox4.Text=dr[4].ToString();
                TextBox5.Text=dr[5].ToString();
            }
            conn.connection().Close();

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
            //Guncelleme
            SqlCommand cmd = new SqlCommand("update Tarifler set TarifDurum=1 where TarifId=@p1", conn.connection());
            cmd.Parameters.AddWithValue("@p1", id);
            cmd.ExecuteNonQuery();
            conn.connection().Close();

            SqlCommand cmd2 = new SqlCommand("insert into Yemekler (YemekAd,YemekMalzeme,YemekTarifi,CategoryId) values (@p1,@p2,@p3,@p4)", conn.connection());
            cmd2.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd2.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd2.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd2.ExecuteNonQuery();
            conn.connection().Close();

            //Kategori Sayısını Arttırma
            SqlCommand komut3 = new SqlCommand("update Kategoriler set CategoryAdet=CategoryAdet+1 where CategoryId=@p6", conn.connection());
            komut3.Parameters.AddWithValue("@p6", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            conn.connection().Close();
            
            
        }
    }
}