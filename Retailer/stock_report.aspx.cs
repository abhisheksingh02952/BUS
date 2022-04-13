using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Retailer_stock_report : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["lid"] == null)
        {
            Response.Redirect("../cover/Login.aspx");
        }
        DataTable dt = new DataTable();
        string str1 = "select * from Product_retailer_master prm,Product_master pm,Category_master cm,final_stock_master fs where prm.login_id="+Session["lid"]+" and prm.product_id=pm.product_id and pm.category_id=cm.category_id and pm.product_id=fs.product_id";
        dt = obj.getdata(str1);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
}