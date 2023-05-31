using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiApp
{
    public partial class TarifOner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        sqlManagement conn=new sqlManagement();
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifSahip,TarifSahipMail,TarifResim) values (@t1,@t2,@t3,@t4,@t5,@t6)", conn.connection());
            cmd.Parameters.AddWithValue("@t1", TextTarif.Text);
            cmd.Parameters.AddWithValue("@t2", TextMalzeme.Text);
            cmd.Parameters.AddWithValue("@t3", TextYapılıs.Text);
            cmd.Parameters.AddWithValue("@t4", TextTarifOner.Text);
            cmd.Parameters.AddWithValue("@t5", TextMail.Text);
            cmd.Parameters.AddWithValue("@t6", FileUploadTarif.FileName);
            cmd.ExecuteNonQuery();
            conn.connection().Close();
            
        }
    }
}