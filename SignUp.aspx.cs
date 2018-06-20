using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    Connection cc = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind_ddlstate();

            Bind_ddlcity();

          

        }
    }

    void Bind_ddlstate()
    {
        string qrye = "select * from STATE ";
        DataTable dt = new DataTable();

        dt = cc.read_record(qrye);
        ddlstate.Items.Clear();
        ddlstate.DataSource = dt;   
        ddlstate.DataTextField = "s_name";
        ddlstate.DataValueField = "s_id";
        ddlstate.DataBind();
        ddlstate.Items.Insert(0, new ListItem("Please select state", "0"));

    }

    void Bind_ddlcity()
    {

        string qrye = "select * from CITY where s_id='" + ddlstate.SelectedValue + "' ";
        DataTable dt = new DataTable();
        ddlcity.Items.Clear();

        ddlcity.Items.Insert(0, new ListItem("Please select  city", "0"));
        dt = cc.read_record(qrye);

        ddlcity.DataSource = dt;
        ddlcity.DataTextField = "c_name";
        ddlcity.DataValueField = "c_id";
        ddlcity.DataBind();
    }
 
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
            string qrye = "select * from CITY where s_id='" + ddlstate.SelectedValue + "' ";
            DataTable dt = new DataTable();
            ddlcity.Items.Clear();
            dt = cc.read_record(qrye);

            ddlcity.DataSource = dt;
            ddlcity.DataTextField = "c_name";
            ddlcity.DataValueField = "c_id";
            ddlcity.DataBind();
}

    protected void  Button3_Click(object sender, EventArgs e)
{
    try
    {
        if (cusname.Text.Length > 0 && cusaddr.Text.Length > 0 && cusmo.Text.Length > 0 && cusemail.Text.Length > 0 && cuspass.Text.Length > 0  )
        {
            string qry = "insert into Registration(Cus_Name,State,City,Address,Mo_no,Email,Password)values('" + cusname.Text.Trim() + "','" + ddlstate.Text.Trim() + "','" + ddlcity.Text.Trim() + "','" + cusaddr.Text.Trim() + "','" + cusmo.Text.Trim() + "','" + cusemail.Text.Trim() + "','" + cuspass.Text.Trim() + "')";
            string reg = cc.execute_record(qry);
            cusname.Text = "";
            cusmo.Text = "";
            cusaddr.Text = "";
            cusemail.Text = "";
            cuspass.Text = "";
            lblmess.Text = "Registration Successful";
            lblmess.Visible = true;
        }
        else
        {
            lblmess.Text = "All Entries Must Be Filled";

            lblmess.Visible = true;

        }
    }
    catch
    {
        lblmess.Text = "Registration Failed";
        lblmess.Visible = true;
    }


}
}
