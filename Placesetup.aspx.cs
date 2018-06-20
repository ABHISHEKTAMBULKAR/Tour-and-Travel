using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    Connection cc = new Connection();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            gridfill();
            ddlfill();

        }
    }
    void ddlfill()
    {
        string rw = "select*from CITY";
        DataTable dp = cc.read_record(rw);
        string str = "select * from STATE";
        DataTable dt = cc.read_record(str);
        ddl2.DataSource = dt;
        ddl2.DataTextField = "s_name";
        ddl2.DataValueField = "s_id";
        ddl2.DataBind();

        ddl1.DataSource = dp;
        ddl1.DataTextField = "c_name";
        ddl1.DataValueField = "c_id";
        ddl1.DataBind();
        ddl1.Items.Insert(0, new ListItem("--Select--", "0"));
        ddl2.Items.Insert(0, new ListItem("--Select--", "0"));
        if (ddl2.SelectedValue == "0")
        {
            ddl1.Items.Clear();
            ddl1.Items.Insert(0, new ListItem("--Select--", "0"));
        }
   
    }
    void gridfill()
    {
        string rc = "select*from Place";
        DataTable dt = cc.read_record(rc);
        gv1.DataSource = dt;
        gv1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (filedata.HasFile && txtplace.Text.Length>0 && Description.Text.Length>0)
            {
                string fname = filedata.PostedFile.FileName;
                filedata.SaveAs(Server.MapPath("upload/") + filedata.FileName);

                string fpath = "upload/" + filedata.FileName;

                string qry = "insert into Place(Place_Name,Descrription,c_id,p_image)values('" + txtplace.Text.Trim() + "','" + Description.Text.Trim() + "','" + ddl1.Text.Trim() + "','" + fpath + "')";
                string res = cc.execute_record(qry);
                gridfill();
            }
            else { sahu.Text = "PLEASE ENTER THE DATA"; }
        }
        catch { sahu.Text = "Error occure"; }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtplace.Text = "";
        Description.Text = "";
        sahu.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (txtplace.Text.Length>0)
        {
            string qry = "delete from Place where Place_name='" + txtplace.Text.Trim() + "'";
            string res = cc.execute_record(qry);
            gridfill();
            sahu.Text = "";
            txtplace.Text = "";
        }
        else { sahu.Text = "PLEASE ENTER PLACE NAME TO DELETE"; }

        }
    protected void ddl2_SelectedIndexChanged(object sender, EventArgs e)
    {
        int sid = Convert.ToInt32(ddl2.SelectedValue);
        DataTable dt = new DataTable();
        string str = "select * from CITY where s_id ='" + ddl2.SelectedValue.Trim()+ "' ";
        dt = cc.read_record(str);
        ddl1.DataSource = dt;
        ddl1.DataTextField = "c_name";
        ddl1.DataValueField = "c_id";
        ddl1.DataBind();

    }
    protected void Description_TextChanged(object sender, EventArgs e)
    {

    }
}
