using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Retailer_Bill_receipt : System.Web.UI.Page
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
            Panel1.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        lbldate.Text = Convert.ToString( System.DateTime.Today);
        lblbno.Text = Request.QueryString["bno"].ToString();
        lblcname.Text = txtcname.Text;
        lbldrname.Text = txtdrname.Text;
        lblsign.Text = txtsign.Text;
        DataList1.DataSource = obj.getdata("select * from Bill_master where bill_no = '"+Request.QueryString["bno"].ToString()+"'");
        DataList1 .DataBind();
        DataTable dt = obj.getdata("select amount from Bill_master where bill_no = '" + Request.QueryString["bno"].ToString() + "'");
        int s = 0;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            s = s + Convert.ToInt16(dt.Rows[i][0].ToString());
        }
        lbltamt.Text = s.ToString();
        int j = obj.savedata ("update Bill_master set status = 1 where bill_no = '" + Request.QueryString["bno"].ToString() + "'");
    }
}