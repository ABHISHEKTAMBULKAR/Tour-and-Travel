using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    Connection cc = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
            try
            {
                string pas1 = cusaddr.Text;
                string passdata1 = cc.read_record("select* from Registration where Email= '" + cusaddr.Text.Trim() + "'").Rows[0][6].ToString();
                string pas2 = cuspass.Text;
                string passdata2 = cc.read_record("select* from Registration where Password= '" + cuspass.Text.Trim() + "'").Rows[0][7].ToString();


                if (pas1 == passdata1 && pas2 == passdata2)
                {

                    Label1.Visible = true;
                    Label1.Text = "Got it";
                    Session["user"] = cusaddr.Text;
                    Session["pwd"] = cuspass.Text;
                    Response.Redirect("ticketbook.aspx");
                }
                else
                {

                    Label1.Visible = true;
                    Label1.Text = "Email or password are wrong";
                }
            }
            catch 
            {
                Label1.Visible = true;
                Label1.Text = "please enter correctly";
            }
    
    }
}