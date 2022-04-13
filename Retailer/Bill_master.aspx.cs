using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Retailer_Bill_master : System.Web.UI.Page
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
            DataTable dt = obj.getdata("select * from Sales_details where Sales_details_id="+Request.QueryString["sid"].ToString()+"");
            DataTable dt1 = obj.getdata("select * from Product_master where product_id ="+dt.Rows[0]["product_id"].ToString()+"");
            txtpname.Text = dt1.Rows[0]["product_name"].ToString();
            txtqty.Text = dt.Rows[0]["Qty"].ToString();
            txtmrp.Text = dt.Rows[0]["Rate"].ToString();
            txtamount.Text = dt.Rows[0]["Amount"].ToString();
            dt = obj.getdata("select * from Bill_master where status = 0");
            if (dt.Rows.Count > 0)
            {
                txtbno.Text = dt.Rows[0]["bill_no"].ToString();
                txtbno.Enabled = false;
            }
        }
    }
    protected void cmdcontinue_Click(object sender, EventArgs e)
    {
        int i = obj.savedata("insert into Bill_master values ('"+txtbno.Text +"','"+txtpname.Text +"',"+txtqty.Text +",'"+txtpno.Text +"','"+txtbatch.Text +"','"+txtmfg.Text +"','"+txtexp.Text +"',"+txtmrp.Text +","+txtamount.Text +",0,'"+System.DateTime.Now+"')");
        txtbno.Enabled = false;
        int s = Convert.ToInt16( Request.QueryString["sid"].ToString());
        Response.Redirect("Sales_master.aspx?sid="+s+"");
    }
    protected void cmdend_Click(object sender, EventArgs e)
    {
        int i = obj.savedata("insert into Bill_master values ('" + txtbno.Text + "','" + txtpname.Text + "'," + txtqty.Text + ",'" + txtpno.Text + "','" + txtbatch.Text + "','" + txtmfg.Text + "','" + txtexp.Text + "'," + txtmrp.Text + "," + txtamount.Text + ",0,'"+System.DateTime.Now+"')");
        Response.Redirect("Bill_receipt.aspx?bno="+txtbno.Text +"");
    }
    
}