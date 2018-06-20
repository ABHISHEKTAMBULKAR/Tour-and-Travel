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
    Connection CC = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtfedemail.Text.Length > 0 && txtfedname.Text.Length > 0 && txtfedback.Text.Length > 0 && txtdate.Text.Length > 0)
            {
                string str = "insert into FEEDBACK (username,useremail,feedback,date)values('" + txtfedname.Text.Trim() + "','" + txtfedemail.Text.Trim() + "','" + txtfedback.Text.Trim() + "','" + txtdate.Text.Trim() + "')";
                string res = CC.execute_record(str);
                sahu.Text = "Feedback Sent Successfully ";
            }
            else { sahu.Text = "Please Enter All the Entries"; }
            }
        catch 
        {
            sahu.Text = "Feedback Failed ";
        }
    }


    protected void button2_Click(object sender, EventArgs e)
    {
        txtfedback.Text = "";
        txtfedemail.Text = "";
        txtfedname.Text = "";
        txtdate.Text = "";
        sahu.Text = "";
    }
}