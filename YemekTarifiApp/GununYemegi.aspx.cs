using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiApp
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        sqlManagement conn=new sqlManagement();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Yemekler where Durum=1", conn.connection());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource= dr;
            DataList2.DataBind();
        }

        
    }
}