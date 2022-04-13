using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Retailer_Sales_master : System.Web.UI.Page
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
            ddlcity.DataSource = obj.getdata("select * from City_master");
            ddlcity.DataTextField = "City_name";
            ddlcity.DataValueField = "City_id";
            ddlcity.DataBind();
            ddlcity.Items.Insert(0, "--Select--");
            ddlpname.DataSource = obj.getdata("select * from Product_master p,Product_retailer_master pr where pr.login_id="+Session["lid"].ToString()+" and pr.product_id=p.product_id");
            ddlpname.DataValueField = "product_id";
            ddlpname.DataTextField = "product_name";
            ddlpname.DataBind();
            ddlpname.Items.Insert(0, "--Select--");
            if (Request.QueryString["sid"] != null)
            {
                string str = "SELECT * FROM dbo.Sales_master INNER JOIN dbo.Sales_details ON dbo.Sales_master.sales_master_id = dbo.Sales_details.sales_master_id where dbo.Sales_details.sales_details_id=" + Request.QueryString["sid"].ToString() + "";
                DataTable dt = obj.getdata(str);
                txtpbill.Enabled = false;
                txtadd.Enabled = false;
                txtcname.Enabled = false;
                txtpbill.Text = dt.Rows[0]["sales_bill_no"].ToString();
                txtadd.Text = dt.Rows[0]["address"].ToString();
                txtcname.Text = dt.Rows[0]["cust_name"].ToString();

            }
            
        }
    }
    protected void txtrate_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtdis_TextChanged(object sender, EventArgs e)
    {
    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {

//        DataTable dt = obj.getdata("select * from Sales_master where sales_bill_no = '" + txtpbill.Text + "'");
        //if (dt.Rows.Count > 0)
        //{
        //    Response.Write("<script>alert('Data duplicated')</script>");
        //}

        //else
        //{
            int r = Convert.ToInt32(txtgamt.Text) - Convert.ToInt32(txtnamt.Text);
            int i = obj.savedata("insert into Sales_master values (" + txtsnum .Text + ",'" + txtpdate.Text + "','" + txtpbill.Text + "'," + txtlno.Text + ",'"+txtcname.Text +"','" + txtadd.Text + "'," + ddlcity.SelectedValue + "," + txtmob.Text + "," + txtgamt.Text + "," + txtdis.Text + "," + r + "," + txtnamt.Text + ",'" + ddlptype.SelectedItem.Text + "',"+Session["lid"].ToString()+")");
           DataTable  dt = obj.getdata("select MAX(Sales_master_id) from Sales_master");
            int j = obj.savedata("insert into Sales_details values (" + dt.Rows[0][0].ToString() + "," + ddlpname.SelectedValue + "," + txtqty.Text + "," + txtrate.Text + "," + txtnamt.Text + ")");
            int k = obj.savedata("insert into Stock_master (product_id,date,stock,sale_bill_no) values (" + ddlpname.SelectedValue + ",'" + txtpdate.Text + "'," + txtqty.Text + ",'" + txtpbill.Text + "')");
            dt = obj.getdata("select * from final_stock_master  where product_id=" + ddlpname.Text + "");
            int f = Convert.ToInt16(dt.Rows[0][2].ToString()) - Convert.ToInt16(txtqty.Text);
            if (f > 0)
            {
                k = obj.savedata("update final_stock_master set stock=" + f + " where product_id=" + ddlpname.SelectedValue + "");
                DataTable dt1 = obj.getdata("select MAX(Sales_details_id) from Sales_details");
                if (k == 1)
                {
                    Response.Write("<script>alert('Transaction Is Succesfully done........')</script>");
                    Response.Redirect("Bill_master.aspx?sid="+dt1.Rows[0][0].ToString()+"");
                }
                
            }
            else
            {
                Response.Write("<script>alert('Stock is not Available........')</script>");
            }
       // }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        float a = Convert.ToInt32(txtqty.Text) * Convert.ToInt32(txtrate.Text);
        txtgamt.Text = a.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int a = (Convert.ToInt32(txtgamt.Text) * Convert.ToInt16(txtdis.Text)) / 100;
        float b = Convert.ToInt32(txtgamt.Text) - a;
        txtnamt.Text = b.ToString();
    }
}