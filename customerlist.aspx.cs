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
            gridfill();

        }
    }
    void gridfill()
    {
        string str = "select * from Registration ";
        DataTable dt = new DataTable();
        dt = cc.read_record(str);
        gvd1.DataSource = dt;
        gvd1.DataBind();
    }
}