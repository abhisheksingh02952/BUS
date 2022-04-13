using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Retailer_home : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["lid"] == null)
        {

            Response.Redirect("../cover/Login.aspx");
        }
        DataTable dt = new DataTable();
        dt = obj.getdata("select * from Login_details where login_id=" + Session["lid"].ToString() + "");
        Label1.Text = dt.Rows[0][1].ToString();


    }
}