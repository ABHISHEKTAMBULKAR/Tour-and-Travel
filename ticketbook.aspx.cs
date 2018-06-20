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
            Label12.Text = Session["user"].ToString();
            custume();
            manual();
            vehcat();
            transport();
            pack();
            string qrye = "select * from TICKET_BOOK";
            DataTable dt1 = new DataTable();
            dt1 = cc.read_record(qrye);
        }

    }
    void custume()
    {
        string qrye = "select * from STATE ";
        DataTable dt = new DataTable();

        dt = cc.read_record(qrye);
        ddl1.Items.Clear();
        ddl1.DataSource = dt;
        ddl1.DataTextField = "s_name";
        ddl1.DataValueField = "s_id";
        ddl1.DataBind();
        ddl1.Items.Insert(0, new ListItem("Please select state", "0"));
    }
    void manual()
    {

        string qrye = "select * from CITY where s_id='" + ddl1.SelectedValue + "' ";
        DataTable dt = new DataTable();
        ddl2.Items.Clear();

        ddl2.Items.Insert(0, new ListItem("Please select  city", "0"));
        dt = cc.read_record(qrye);

        ddl2.DataSource = dt;
        ddl2.DataTextField = "c_name";
        ddl2.DataValueField = "c_id";
        ddl2.DataBind();
    }
    void vehcat()
    {
        string qrye = "select * from VEHICAL_CATEGORY  ";
        DataTable dt = new DataTable();

        dt = cc.read_record(qrye);
        ddl3.Items.Clear();
        ddl3.DataSource = dt;
        ddl3.DataTextField = "catname";
        ddl3.DataValueField = "vcat_id";
        ddl3.DataBind();
        ddl3.Items.Insert(0, new ListItem(" select  Catagory", "0"));
    }
    void transport()
    {

        string qrye = "Select * from TRANSPORT_VEHICAL ";
        DataTable dt = new DataTable();

        dt = cc.read_record(qrye);
        ddl4.Items.Clear();
        ddl4.DataSource = dt;
        ddl4.DataTextField = "veh_name";
        ddl4.DataValueField = "veh_id";
        ddl4.DataBind();
        ddl4.Items.Insert(0, new ListItem(" select   Vehical", "0"));
    }
    void pack()
    {
        string qrye = "select * from PACKAGES ";
        DataTable dt = new DataTable();

        dt = cc.read_record(qrye);
        ddl5.Items.Clear();
        ddl5.DataSource = dt;
        ddl5.DataTextField = "p_name";
        ddl5.DataValueField = "p_id";
        ddl5.DataBind();
        ddl5.Items.Insert(0, new ListItem(" select   Package", "0"));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {

            string qry = "insert into TICKET_BOOK(vcat_id,veh_id,p_id,source,destination,tour_city,date)values ('" + ddl3.SelectedValue + "','" + ddl4.SelectedValue + "','" + ddl5.SelectedValue + "','" + txtsource.Text.Trim() + "','" + Txtdest.Text.Trim() + "','" + ddl6.SelectedValue + "','" + Txtdate.Text.Trim() + "')";

            string rs = cc.execute_record(qry);
            string qrye = "select * from TICKET_BOOK";
            DataTable dt = new DataTable();
            dt = cc.read_record(qrye);
            Label11.Text = " Check your  Email";

        }
        catch
        {
            Label11.Text = " connection failed";

        }
    }
    protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
    {

        string qrye = "select * from CITY where s_id='" + ddl1.SelectedValue + "' ";
        DataTable dt = new DataTable();
        ddl2.Items.Clear();
        ddl2.Items.Insert(0, new ListItem("Please select  city", "0"));
        dt = cc.read_record(qrye);

        ddl2.DataSource = dt;
        ddl2.DataTextField = "c_name";
        ddl2.DataValueField = "c_id";
        ddl2.DataBind();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ddl1.SelectedIndex = -1;
        ddl2.SelectedIndex = -1;
        ddl3.SelectedIndex = -1;
        ddl4.SelectedIndex = -1;
        ddl5.SelectedIndex = -1;
        ddl6.SelectedIndex = -1;
        txtsource.Text = " ";
        Txtdate.Text = " ";
        Txtdest.Text = " ";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect  ("cancleticket.aspx");
    }
}