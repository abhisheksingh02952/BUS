using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class cover_Login : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        //DataTable dt = obj.getdata("select * from Login_details where username='"+txtuname.Text+"' and password='"+txtpass.Text+"' and status=1");
        //if (dt.Rows.Count > 0)
        //{
            //int r = Convert.ToInt16(dt.Rows[0]["reg_id"].ToString());
            //if (Convert.ToInt16( DropDownList1.SelectedValue) == 0 && txtuname.Text=="admin")
            //{
             //   Session["lid"] = dt.Rows[0][0].ToString();
             //   Response.Redirect("../Admin/admin_home.aspx");

           // }
            //else
            //{
             //   Session["lid"] = dt.Rows[0][0].ToString();
            //    Response.Redirect("../Retailer/Home.aspx");
          //  }
        //}
        //else
        //{
        //    Response.Write("<script>alert('User Name Or Password is incorrect ......... ')</script>");
       // }
        if (Convert.ToInt16(DropDownList1.SelectedValue) == 0)
        {
            if (txtuname.Text == "admin" && txtpass.Text == "admin123")
            {
                Session["lid"] = 6;
                Response.Redirect("../Admin/admin_home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Password is incorrect ......... ')</script>");
            }
        }
        if (Convert.ToInt16(DropDownList1.SelectedValue) == 1)
        {
            DataTable dt = obj.getdata("select * from Login_details where username='" + txtuname.Text + "' and password='" + txtpass.Text + "' and status=1");

            if (dt.Rows.Count == 0)
            {
                Response.Write("<script>alert('please wait, you are still not authorized by admin. ')</script>");
            }
            else
            {
                int id = Convert.ToInt16(dt.Rows[0]["login_id"].ToString());
                if (id != 6)
                {
                    int r = Convert.ToInt16(dt.Rows[0]["reg_id"].ToString());

                    Session["lid"] = dt.Rows[0][0].ToString();
                    Response.Redirect("../Retailer/Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('You are admin, please login via admin panel ')</script>");
                }
            }
            

            
        }






    





    }
    protected void cmdcancel_Click(object sender, EventArgs e)
    {
        txtuname.Text="";
        txtuname.Text = "";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt16(DropDownList1.SelectedValue) == 0)
        {
            txtuname.Text = "admin";
            txtuname.Enabled = false;

        }
        if (Convert.ToInt16(DropDownList1.SelectedValue) == 1)
        {
            txtuname.Text = "";
            txtuname.Enabled = true;

        }

    }
}