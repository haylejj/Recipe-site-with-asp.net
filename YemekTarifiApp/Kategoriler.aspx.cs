using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiApp
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlManagement conn = new sqlManagement();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id=Request.QueryString["CategoryId"];
                islem=Request.QueryString["islem"];
            }
            SqlCommand cmd = new SqlCommand("Select * from Kategoriler", conn.connection());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource=dr;
            DataList1.DataBind();
            // silme işlemi
            if (islem=="sil")
            {
                SqlCommand cmd2 = new SqlCommand("Delete from Kategoriler where CategoryId=@p1", conn.connection());
                cmd2.Parameters.AddWithValue("@p1", id);
                cmd2.ExecuteNonQuery();
                conn.connection().Close();
            }

            Panel2.Visible=false;
            Panel4.Visible=false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible=true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible=false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible=true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible=false;
        }

        protected void btn_kategoriekle_Click(object sender, EventArgs e)
        {
            SqlCommand cmd2 = new SqlCommand("insert into Kategoriler (CategoryAd) values (@p1)", conn.connection());
            cmd2.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd2.ExecuteNonQuery();
            conn.connection().Close();
        }
    }
}