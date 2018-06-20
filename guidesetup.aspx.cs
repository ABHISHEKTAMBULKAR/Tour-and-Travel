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
        string qrye = "select * from GUIDE";
        DataTable dt = new DataTable();
        dt = cc.read_record(qrye);
        gvd1.DataSource = dt;
        gvd1.DataBind();
    }
    protected void btn3_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtname.Text = "";
        txtmobile.Text = "";
        txtadd.Text = "";
        sahu.Text = "";

    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        if (txtadd.Text.Length > 0 && txtid.Text.Length > 0 && txtmobile.Text.Length > 0 && txtname.Text.Length > 0)
        {
            string qry = "insert into GUIDE (g_id,g_name,mobile_no,address)values('" + txtid.Text.Trim() + "','" + txtname.Text.Trim() + "','" + txtmobile.Text.Trim() + "','" + txtadd.Text.Trim() + "')";
            string res = cc.execute_record(qry);
            gridfill();
        }
        else { sahu.Text = "PLEASE ENTER THE DATA"; }
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        if (txtid.Text.Length > 0)
        {
            string str = "delete from GUIDE where g_id='" + txtid.Text.Trim() + "' ";
            string res = cc.execute_record(str);
            gridfill();
            sahu.Text = "";
        }
        else { sahu.Text = "PLEASE ENTER ID TO DELETE THE DATA"; }

    }
}