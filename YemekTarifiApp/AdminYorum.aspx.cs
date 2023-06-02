using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiApp
{
    public partial class AdminYorum : System.Web.UI.Page
    {
        sqlManagement conn = new sqlManagement();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible=false;
            //Yorumlu Onaylar
            SqlCommand cmd = new SqlCommand("Select * from Yorumlar where YorumOnay=1", conn.connection());
            SqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource=reader;
            DataList1.DataBind();
            //Yorumsuz Onaylar
            SqlCommand cmd2 = new SqlCommand("Select * from Yorumlar where YorumOnay=0", conn.connection());
            SqlDataReader reader2 = cmd2.ExecuteReader();
            DataList2.DataSource=reader2;
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
            Panel4.Visible=true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible= false;
        }
    }
}