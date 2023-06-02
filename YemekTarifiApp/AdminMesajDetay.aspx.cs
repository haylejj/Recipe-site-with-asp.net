using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiApp
{
    public partial class AdminMesajDetay : System.Web.UI.Page
    {
        sqlManagement conn=new sqlManagement();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id=Request.QueryString["MesajId"];
            SqlCommand cmd = new SqlCommand("Select * from Mesajlar where MesajId=@p1",conn.connection());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text=dr[1].ToString();
                TextBox2.Text=dr[2].ToString();
                TextBox3.Text=dr[3].ToString();
                TextBox4.Text=dr[4].ToString();
            }
            conn.connection().Close();
        }
    }
}