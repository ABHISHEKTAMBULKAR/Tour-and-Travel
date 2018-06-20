using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

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
        string qrye = "select * from PACKAGES";
        DataTable dt = new DataTable();
        dt = cc.read_record(qrye);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Txtdecr.Text.Length > 0 && Txtid.Text.Length > 0 && Txtname.Text.Length > 0 && Txtprice.Text.Length > 0 && Txtvehical.Text.Length > 0 && filedata.HasFile)
            {
                string fname = filedata.PostedFile.FileName;
                filedata.SaveAs(Server.MapPath("upload/") + filedata.FileName);

                string fpath = "upload/" + filedata.FileName;

                string qry = "insert into PACKAGES(p_id,p_name,description,price,vehical,p_images )values ('" + Txtid.Text.Trim() + "','" + Txtname.Text.Trim() + "','" + Txtdecr.Text.Trim() + "','" + Txtprice.Text.Trim() + "','" + Txtvehical.Text.Trim() + "','"+fpath+"')";

                string rs = cc.execute_record(qry);
                gridfill();
            }
            else { sahu.Text = "PLEASE ENTER THE DATA"; }

        }
        catch
        { sahu.Text = "Error occur"; }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Txtid.Text = " ";
        Txtname.Text = " ";
        Txtdecr.Text = " ";
        Txtprice.Text = " ";
        Txtvehical.Text = " ";
        sahu.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Txtid.Text.Length > 0)
        {
            string qry = "delete from  PACKAGES where  p_id ='" + Txtid.Text.Trim() + "'";

            string rs = cc.execute_record(qry);
            gridfill();
            sahu.Text = "";
            Txtid.Text = "";

        }
        else { sahu.Text = "PLEASE ENTER ID TO DELETE THE DATA"; }
    }
}