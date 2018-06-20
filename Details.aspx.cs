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
        }
    }
    void fill_gridview()
    {
        string qry = "select *from PACKAGES where p_name='" + Request.QueryString["p_name"].ToString() +"' ";

        DataTable dt = new DataTable();
        dt = cc.read_record(qry);
       
        pacname.Text = dt.Rows[0]["p_name"].ToString();
        pacprice.Text = dt.Rows[0]["price"].ToString();
        pacdetail.Text = dt.Rows[0]["description"].ToString();
        Image1.ImageUrl = dt.Rows[0]["p_images"].ToString();

    }
}