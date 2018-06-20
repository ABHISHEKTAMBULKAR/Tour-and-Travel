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
        
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtemail.Text.Length > 0 && txtmob.Text.Length > 0 && txtname.Text.Length > 0 && txtmulti.InnerText.Length > 0)
            {
                string qry = "insert into CONTACT(name,mobile,email,subject)values('"+txtname.Text.Trim()+"', '"+txtmob.Text.Trim()+"','"+txtemail.Text.Trim()+"','"+txtmulti.InnerText.Trim()+"')";
                string str = cc.execute_record(qry);
                sahu.Text = "Details Submitted ";
            }
            else { sahu.Text = "PLEASE FILL THE ALL ENTRIES "; }
        }
        catch
        {
            sahu.Text = "Contact Failed ";
        }
    }
}