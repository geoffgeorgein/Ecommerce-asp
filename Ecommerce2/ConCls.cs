using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Ecommerce2
{
    public class Class1
    {
        SqlConnection con;
        SqlCommand cmd;

        public Class1()
        {
          
            //con = new SqlConnection(@"GEOFF\SQLEXPRESS;database=PROJECT;Integrated Security=True");
            con = new SqlConnection(@"server=GEOFF\SQLEXPRESS;database=PROJECT;Integrated Security=True");
        }

        public int Fun_Non_Query(string sql)
        {
            cmd = new SqlCommand(sql, con);

            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            return i;
        }

        public string Fun_Scalar(string sql)
        {
            cmd = new SqlCommand(sql, con);

            con.Open();
            string i = cmd.ExecuteScalar().ToString();
            con.Close();

            return i;
        }

        public SqlDataReader Fun_DataReader(string sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            cmd = new SqlCommand(sqlquery, con);
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        // Function for DataSet
        public DataSet Fun_DataAdapter(string sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            SqlDataAdapter da = new SqlDataAdapter(sqlquery, con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;

        }
    }
}