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
        }
    }
    void gridfill()
    {
        string rc = "select *from STATE";
        DataTable dt = cc.read_record(rc);
        gv1.DataSource = dt;
        gv1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtid.Text.Length > 0 && txtname.Text.Length > 0)
        {
            string qry = "insert into STATE(s_id,s_name)values('" + txtid.Text.Trim() + "','" + txtname.Text.Trim() + "')";
            string res = cc.execute_record(qry);
            gridfill();
        }
        else { sahu.Text = "PLEASE ENTER THE DATA"; }
        }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (txtid.Text.Length > 0)
        {
            string str = "delete from STATE where S_id='" + txtid.Text.Trim() + "' ";
            string res = cc.execute_record(str);
            gridfill();
            sahu.Text = "";
        }
        else { sahu.Text = "PLEASE ENTER ID TO DELETE THE DATA"; }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtname.Text = "";
        sahu.Text = "";
    }
}