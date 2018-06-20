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
            fill_gridview();
            Response.Write(Request.QueryString["sid"]);
            filldrop();
          //  string qry = Convert.ToString(Request.QueryString["sid"]);
        }
    }
    void fill_gridview()
    {


        DataTable dt = new DataTable();
        string id=Request.QueryString["sid"];
        string qry = "select * from Place where place_id='"+id+"'";  
       
        dt = cc.read_record(qry);
        if (dt.Rows.Count > 0)
        {
            pacname.Text = dt.Rows[0]["Place_name"].ToString();
            pacdetail.Text = dt.Rows[0]["Descrription"].ToString();
            Image1.ImageUrl = dt.Rows[0]["p_image"].ToString();
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
        ddl3.DataValueField = "place_name";
        ddl3.DataBind();
    }
    protected void ddl3_SelectedIndexChanged(object sender, EventArgs e)
    {
    //    string sid = Convert.ToString(ddl3.SelectedValue);
    //    Response.Redirect("detailplace.aspx?sid");
    //    filldrop();
    }
}