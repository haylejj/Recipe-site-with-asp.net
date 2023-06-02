using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiApp
{
    public partial class AdminYemek : System.Web.UI.Page
    {
        sqlManagement conn=new sqlManagement();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack==false)
            {
                id=Request.QueryString["YemekId"];
                islem=Request.QueryString["islem"];
                //Kategori listesi çekme
                SqlCommand cmd2 = new SqlCommand("Select * from Kategoriler", conn.connection());
                SqlDataReader dr2 = cmd2.ExecuteReader();
                DropDownList1.DataTextField="CategoryAd";
                DropDownList1.DataValueField="CategoryId";
                DropDownList1.DataSource=dr2;
                DropDownList1.DataBind();

                
            }
            // kategori eksiltme
            

            Panel2.Visible=false;
            Panel4.Visible=false;


            SqlCommand cmd = new SqlCommand("Select * from Yemekler",conn.connection());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource=dr;
            DataList1.DataBind();
            // Silme işlemi
            if (islem=="sil")
            {
                SqlCommand cmd2 = new SqlCommand("Delete from Yemekler where YemekId=@p1", conn.connection());
                cmd2.Parameters.AddWithValue("@p1", id);
                cmd2.ExecuteNonQuery();
                conn.connection().Close();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible=true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible=true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible=false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible=false;
        }

        protected void btn_yemekekle_Click(object sender, EventArgs e)
        {
            //Yemek ekleme
            SqlCommand cmd = new SqlCommand("insert into Yemekler (YemekAd,YemekMalzeme,YemekTarifi,CategoryId) values (@p1,@p2,@p3,@p4)", conn.connection());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd.ExecuteNonQuery();
            conn.connection().Close();

            //Kategori sayısını arttırma
            SqlCommand cmd2 = new SqlCommand("update Kategoriler set CategoryAdet=CategoryAdet+1 where CategoryId=@p1", conn.connection());
            cmd2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            cmd2.ExecuteNonQuery();
            conn.connection();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}