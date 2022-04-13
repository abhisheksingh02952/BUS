using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Retailer_City : System.Web.UI.Page
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
            fillgrid();
        }

    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = obj.getdata("select * from City_master where city_name='" + txtcity.Text + "'");
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('Data duplicated')</script>");
        }
        else
        {
            if (cmdsave.Text == "Save")
            {
                int i = obj.savedata("insert into City_master values('" + txtcity.Text + "')");
                if (i == 1)
                {
                    Response.Write("<script>alert('Data inserted')</script>");
                    txtcity.Text = "";
                    fillgrid();
                }
                else
                {
                    Response.Write("<script>alert('Data not inserted')</script>");
                }
            }
            else
            {
                int i = obj.savedata("update City_master set city_name='" + txtcity.Text + "' where city_id=" + GridView1.SelectedRow.Cells[0].Text + "");
                if (i == 1)
                {
                    Response.Write("<script>alert('Data Updated')</script>");
                    
                    fillgrid();
                }
                else
                {
                    Response.Write("<script>alert('Data not Updated')</script>");
                }
            }

        }
        txtcity.Text = "";
        cmdsave.Text = "Save";
    }
    public void fillgrid()
    {
        DataTable dt = new DataTable();
        dt = obj.getdata("select * from City_master");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmdsave.Text = "Update";
        txtcity.Text = GridView1.SelectedRow.Cells[1].Text;
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int i = obj.savedata("delete from City_master where city_id=" + GridView1.Rows[e.RowIndex].Cells[0].Text + "");
        if (i == 1)
        {
            Response.Write("<script>alert('Data Deleted')</script>");
            fillgrid();
        }
        else
        {
            Response.Write("<script>alert('Data not Deleted')</script>");
        }
    }
    protected void cmdcancel_Click(object sender, EventArgs e)
    {
        txtcity.Text = "";
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fillgrid();

    }



   
}