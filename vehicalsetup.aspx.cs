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
            fill();
            gridfill();
           

        }
    }
 void fill()
    {
        string qrye = "select * from VEHICAL_CATEGORY ";
        DataTable dt = new DataTable();

        dt = cc.read_record(qrye);

        ddl1.DataSource = dt;
        ddl1.DataTextField = "catname";
        ddl1.DataValueField = "vcat_id";
        ddl1.DataBind();

        ddl1.Items.Insert(0, new ListItem("Please select area", "0"));
    }
 void gridfill()
 {
     string qrye = "select * from TRANSPORT_VEHICAL";
     DataTable dt = new DataTable();
     dt = cc.read_record(qrye);
     gvd1.DataSource = dt;
     gvd1.DataBind();
 }
 protected void btn3_Click(object sender, EventArgs e)
 {
     txtid.Text = "";
     txtname.Text = "";
     txtdesti.Text="";
     txtno.Text = "";
     txtsource.Text = "";
     txttime.Text = "";
     sahu.Text = "";


 }
 protected void btn1_Click(object sender, EventArgs e)
 {
     try
     {  
         if(txtdesti.Text.Length>0 && txtid.Text.Length>0 && txtname.Text.Length>0 && txtno.Text.Length>0 && txtsource.Text.Length>0 && txttime.Text.Length>0)
         {
         string qry = "insert into TRANSPORT_VEHICAL(veh_id,veh_name,vcat_id,veh_number,time,source,destination)values('" + txtid.Text.Trim() + "','" + txtname.Text.Trim() + "', '" + ddl1.Text.Trim() + "','" + txtno.Text.Trim() + "','" + txttime.Text.Trim() + "', '" + txtsource.Text.Trim() + "','" + txtdesti.Text.Trim() + "')";
         string res = cc.execute_record(qry);
         gridfill();
         }
         else { sahu.Text = "PLEASE ENTER THE DATA"; }
     }
     catch { sahu.Text = "Error occure"; }
 }
 protected void btn2_Click(object sender, EventArgs e)
 {
     if (txtid.Text.Length > 0)
     {
         string str = "delete from TRANSPORT_VEHICAL where veh_id='" + txtid.Text.Trim() + "' ";
         string res = cc.execute_record(str);
         gridfill();
         sahu.Text = "";
         txtid.Text = "";
     }
     else {sahu.Text = "PLEASE ENTER ID TO DELETE THE DATA";}
 }
 protected void txtsource_TextChanged(object sender, EventArgs e)
 {

 }
}
