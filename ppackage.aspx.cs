using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    Connection cc = new Connection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           filldrop();
           datafill();
        }
    }
    void filldrop()
    {

        string qry = "select * from STATE";
        DataTable dt = cc.read_record(qry);
        ddl1.DataSource = dt;
        ddl1.DataTextField = "s_name";
        ddl1.DataValueField = "s_id";
        ddl1.DataBind();

        ddl1.Items.Insert(0, new ListItem("--Select--", "0"));
        ddl2.Items.Insert(0, new ListItem("--Select--", "0"));
        ddl3.Items.Insert(0, new ListItem("--Select--", "0"));
        if (ddl1.SelectedValue == "0")
        {
            ddl2.Items.Clear();
            ddl2.Items.Insert(0, new ListItem("--Select--", "0"));
        }
   
    }
    void datafill()
    {
        string str = "select * from PACKAGES";
        DataTable dt = cc.read_record(str);
        datalist1.DataSource = dt;
        datalist1.DataBind();
    }
    protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
    {

        DataTable dt2 = new DataTable();
        string str = "select * from CITY where s_id ='" + ddl1.SelectedValue + "' ";
        dt2 = cc.read_record(str);
        ddl2.Items.Clear();
        ddl2.Items.Add("Select City");
        ddl2.DataSource = dt2;
        ddl2.DataTextField = "c_name";
        ddl2.DataValueField = "c_id";
        ddl2.DataBind();
    }
    protected void ddl2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt3 = new DataTable();
        string qry = "select * from place where c_id='" + ddl2.SelectedValue + "' ";
        dt3 = cc.read_record(qry);
        ddl3.Items.Clear();
        ddl3.Items.Add("Select Place");
        ddl3.DataSource = dt3;
        ddl3.DataTextField = "place_name";
        ddl3.DataValueField = "place_id";
        ddl3.DataBind();
    }
    protected void ddl3_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string  sid = Convert.ToString(ddl3.SelectedValue);
        Response.Redirect("detailplace.aspx?sid ="+ddl3.SelectedValue+"");
    }

}