using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Retailer_sales_report : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
       if (Session["lid"] == null)
        {
            Response.Redirect("../cover/Login.aspx");
        }
        DataTable dt = new DataTable();
        dt = obj.getdata("SELECT dbo.Sales_master.*, dbo.Sales_details.*, dbo.Category_master.*, dbo.Product_master.* FROM     dbo.Sales_master INNER JOIN dbo.Product_master INNER JOIN dbo.Category_master ON dbo.Product_master.category_id = dbo.Category_master.category_id INNER JOIN  dbo.Sales_details ON dbo.Product_master.product_id = dbo.Sales_details.product_id ON dbo.Sales_master.sales_master_id = dbo.Sales_details.sales_master_id");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}