using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Retailer_Create_User : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = obj.getdata("select * from Login_details where username='"+txtuname.Text+"'");
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('Entered User Name is not Available.so pls enter another username.... ')</script>");

        }
        else
        {
            int j = obj.savedata("insert into regstration_master values ('"+txtname.Text +"','"+txtadd.Text +"','"+txtcity.Text +"',"+txtmno.Text +",'"+txtsale.Text +"','"+txtsaledate.Text +"',"+txttin.Text +")");
            dt = obj.getdata("select MAX(reg_id) from regstration_master");
            int i = obj.savedata("insert into Login_details values('" + txtuname.Text + "','" + txtpassword.Text + "','" + txtemailid.Text + "',0,"+dt.Rows[0][0].ToString()+")");
            if (i == 1)
            {
                
                Response.Redirect("waiting.aspx");
                
                
                
            }
        }

    }
}