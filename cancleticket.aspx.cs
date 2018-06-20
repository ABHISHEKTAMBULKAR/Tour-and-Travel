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
       

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {

        string qry = "delete from  TICKET_BOOK where ticket_no= '" + cusaddr.Text.Trim() + "'";
          
        string rs = cc.execute_record(qry);
       
        Label1.Text = " caceled ticket further chek your email";

          

    }
}