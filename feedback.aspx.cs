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

            filldata();
        }

    }
    void filldata()
    {
        string qry = "select * from FEEDBACK ";
        DataTable dt = cc.read_record(qry);
        gvd1.DataSource = dt;
        gvd1.DataBind();
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "select * from FEEDBACK where username like '" + txtfedlist.Text.Trim() + "%' ";
            DataTable dt = cc.read_record(qry);
            gvd1.DataSource = dt;
            gvd1.DataBind();

        }
        catch 
        {
        
        }
    }
}