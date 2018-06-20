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
            filldata();
        }
    }
    void filldata()
    {
        string qry = "select * from CONTACT ";
        DataTable dt = cc.read_record(qry);
        gvd.DataSource = dt;
        gvd.DataBind();


    }
}