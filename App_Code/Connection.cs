using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Connection
/// </summary>
public class Connection
{
	public Connection()
	{
		
	}
    private string str = "Data Source=.\\SQLEXPRESS;Initial Catalog=Tour;Integrated Security=true;";
    public string execute_record(string qry)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = str;
       con.Open();

        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();

        con.Close();
        return "y";
    }

    public DataTable read_record(string qry)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = str;
        DataTable dt = new DataTable();

        SqlDataAdapter sda = new SqlDataAdapter(qry, con);
        sda.Fill(dt);

        return dt;
   }
}