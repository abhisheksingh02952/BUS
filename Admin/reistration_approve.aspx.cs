using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_reistration_approve : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataList1.DataSource = obj.getdata("select * from regstration_master rm , login_details ld where ld.status=0 and rm.reg_id=ld.reg_id");
            DataList1.DataBind();
        }
        if (Session["lid"] == null)
        {
            Response.Redirect("../cover/Login.aspx");
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "no")
        {
            int j = obj.savedata("delete from Login_details where login_id="+e.CommandArgument+" ");

            Response.Write("<script>alert('User Successfully Removed..')</script>");
            DataList1.DataSource = obj.getdata("select * from regstration_master rm , login_details ld where ld.status=0 and rm.reg_id=ld.reg_id");
            DataList1.DataBind();
        
        }
        else
        {
            int j = obj.savedata("update Login_details set status=1 where login_id= "+e.CommandArgument +"");
            DataList1.DataSource = obj.getdata("select * from regstration_master rm , login_details ld where ld.status=0 and rm.reg_id=ld.reg_id");
            DataList1.DataBind();
        
        }
    }
}