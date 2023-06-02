using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiApp
{
    public partial class AdminTarifÖner : System.Web.UI.Page
    {
        sqlManagement conn = new sqlManagement();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible=false;
            SqlCommand cmd = new SqlCommand("Select * from Tarifler where TarifDurum=0", conn.connection());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource=dr;
            DataList1.DataBind();

            SqlCommand cmd2 = new SqlCommand("Select * from Tarifler where TarifDurum=1", conn.connection());
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DataList2.DataSource=dr2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}