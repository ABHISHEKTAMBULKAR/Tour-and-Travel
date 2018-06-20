using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    Connection cc = new Connection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridfill();
            DDlFill();

        }
    }
    void gridfill()
    { 
                string rc = "select*from CITY";
                DataTable dt = cc.read_record(rc);
                gv1.DataSource = dt;
                gv1.DataBind();
    }
    void DDlFill()
    {

        string rw = "select*from STATE";
        DataTable dp = cc.read_record(rw);
        ddl1.DataSource = dp;
        ddl1.DataTextField = "s_name";
        ddl1.DataValueField = "s_id";
        ddl1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtname.Text = "";
        sahu.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtname.Text.Length > 0 && txtid.Text.Length > 0)
        {
            string qry = "insert into CITY(c_id,c_name,s_id)values('" + txtid.Text.Trim() + "','" + txtname.Text.Trim() + "','" + ddl1.Text.Trim() + "')";
            string res = cc.execute_record(qry);
            gridfill();
        }
        else
        { sahu.Text = "PLEASE ENTER THE DATA"; }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (txtid.Text.Length > 0)
        {
            string qry = "delete from CITY where c_id='" + txtid.Text.Trim() + "'or c_name='" + txtname.Text.Trim() + "'";
            string res = cc.execute_record(qry);
            gridfill();
            sahu.Text = "";
        }
        else { sahu.Text = "PLEASE ENTER ID TO DELETE THE DATA"; }
    }
}