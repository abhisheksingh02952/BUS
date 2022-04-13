using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Retailer_main_category_master : System.Web.UI.Page
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
        
            if (cmdsave.Text == "Save")
            {
                int i = obj.savedata("insert into main_category_master values('" + txtmaincat.Text + "',"+Session["lid"]+")");
                if (i == 1)
                {
                    Response.Write("<script>alert('Data inserted')</script>");
                    txtmaincat.Text = "";
                    fillgrid();
                }
                else
                {
                    Response.Write("<script>alert('Data not inserted')</script>");
                }
            }
            else
            {
                int i = obj.savedata("update main_category_master set main_cat_name='" + txtmaincat.Text + "' where main_cat_id=" + GridView1.SelectedRow.Cells[0].Text + "");
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

        txtmaincat.Text = "";
        cmdsave.Text = "Save";
    }
    public void fillgrid()
    {
        DataTable dt = new DataTable();
        dt = obj.getdata("select * from main_category_master where login_id="+Session["lid"]+"");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmdsave.Text = "Update";
        txtmaincat.Text = GridView1.SelectedRow.Cells[1].Text;
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int i = obj.savedata("delete from main_category_master where main_cat_id=" + GridView1.Rows[e.RowIndex].Cells[0].Text + "");
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
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fillgrid();
    }
    protected void cmdcancel_Click(object sender, EventArgs e)
    {
        txtmaincat.Text = "";
    }
}