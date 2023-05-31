using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifiApp
{
    public class sqlManagement
    {
        public SqlConnection connection()
        {
            SqlConnection connection=new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Dbo_yemektarifi;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            connection.Open();
            return connection;
        }

    }
}