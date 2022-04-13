using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Retailer_Change_password : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["lid"] == null)
        {

            Response.Redirect("../cover/Login.aspx");
        }
    }
    protected void cmdchangepass_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = obj.getdata("select password from Login_details where login_id="+Session["lid"].ToString()+"");
        if (txtoldpass.Text == dt.Rows[0][0].ToString())
        {
            int i = obj.savedata("update Login_details set password='" + txtnewpass.Text + "' where login_id=" + Session["lid"].ToString() + "");
            Response.Write("<script>alert('Password Changed Sucessfully..... ')</script>");
        }
        else
        {
            Response.Write("<script>alert('Invalid Old Password..... ')</script>");

        }
    }
}