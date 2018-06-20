using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

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
        string qrye = "select * from VEHICAL_CATEGORY";
        DataTable dt = new DataTable();
        dt = cc.read_record(qrye);
        gvd1.DataSource = dt;
        gvd1.DataBind();
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        txtid.Text="";
        txtname.Text="";
        sahu.Text = "";

    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        if (txtid.Text.Length > 0 && txtname.Text.Length > 0)
        {
            string qry = "insert into VEHICAL_CATEGORY(vcat_id,catname) values ('" + txtid.Text.Trim() + "' , '" + txtname.Text.Trim() + "') ";
            string res = cc.execute_record(qry);
            gridfill();
        }
        else { sahu.Text = "PLEASE ENTER THE DATA"; }
   
    }
    protected void btn3_Click(object sender, EventArgs e)
    {
        if (txtid.Text.Length > 0)
        {
            string str = "delete from VEHICAL_CATEGORY where vcat_id='" + txtid.Text.Trim() + "' ";
            string res = cc.execute_record(str);
            gridfill();
            sahu.Text = "";
        }
        else { sahu.Text = "PLEASE ENTER ID TO DELETE THE DATA"; }
    }
}
