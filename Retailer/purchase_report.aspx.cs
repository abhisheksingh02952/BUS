using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Retailer_purchase_report : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["lid"] == null)
        {
            Response.Redirect("../cover/Login.aspx");
        }
        DataTable dt = new DataTable();
        dt = obj.getdata("SELECT dbo.Category_master.*, dbo.Purchase_details.*, dbo.Product_master.* FROM     dbo.Category_master INNER JOIN dbo.Product_master ON dbo.Category_master.category_id = dbo.Product_master.category_id INNER JOIN dbo.Purchase_details ON dbo.Product_master.product_id = dbo.Purchase_details.product_id");
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
}