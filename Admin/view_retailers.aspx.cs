using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_view_retailers : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //DataTable dt = new DataTable();
            //dt = obj.getdata("select * from regstration_master m,Login_details l where l.reg_id=m.reg_id and l.status=1");
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        }
        if (Session["lid"] == null)
        {
            Response.Redirect("../cover/Login.aspx");
        }

    }
}