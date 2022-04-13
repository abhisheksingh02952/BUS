using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Retailer_Customer_details : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["lid"] == null)
        {

            Response.Redirect("../cover/Login.aspx");
        }
        if (!IsPostBack)
        {
            DataTable dt = obj.getdata("select * from City_master");
            ddlcity.DataSource = dt;
            ddlcity.DataTextField = "city_name";
            ddlcity.DataValueField = "city_id";
            ddlcity.DataBind();
            ddlcity.Items.Insert(0, "--select--");
        }
    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = obj.getdata("select * from Customer_master where cust_fname='"+txtfname.Text+"' and cust_lname='"+txtlname.Text+"'");
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('Data Duplicated')</script>");
        }
        else
        {
            string g;
            if (RadioButton1.Checked == true)
            {
                g = "Male";
            }
            else
            {
                g = "Female";
            }
            int i = obj.savedata("insert into Customer_master values('"+txtfname.Text+"','"+txtlname.Text+"','"+g+"','"+txtstatename.Text+"',"+ddlcity.SelectedValue+","+txtmno.Text+","+txtlno.Text+",'"+txtemail.Text+"')");
            if (i == 1)
            {
                Response.Write("<script>alert('Data Inserted')</script>");
            }
            else
            {
                Response.Write("<script>alert('Data Not Inserted')</script>");
            }
        }
    }
    protected void cmdcancel_Click(object sender, EventArgs e)
    {
        txtemail.Text = "";
        txtfname.Text = "";
        txtlname.Text = "";
        txtlno.Text="";
        txtstatename.Text = "";
        txtmno.Text = "";
        ddlcity.SelectedIndex = 0;

    }
}