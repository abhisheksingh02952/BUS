using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Retailer_Category_master : System.Web.UI.Page
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
            drpmain_cat.DataSource = obj.getdata("select * from main_category_master where login_id="+Session["lid"]+"");
            drpmain_cat.DataTextField = "main_cat_name";
            drpmain_cat.DataValueField = "main_cat_id";
            drpmain_cat.DataBind();
            drpmain_cat.Items.Insert(0, "--Select--");
            fillgrid();
        }
    }
    public void fillgrid()
    {
        GridView1.DataSource = obj.getdata("select * from main_category_master m,category_master c where c.main_cat_id=m.main_cat_id and c.login_id="+Session["lid"]+"");
        GridView1.DataBind();
    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
            if (cmdsave.Text == "Save")
            {
                int i = obj.savedata("insert into Category_master values ('" + txtcat_name.Text + "'," + drpmain_cat.SelectedValue + ","+Session["lid"]+")");
                if (i == 1)
                {
                    Response.Write("<script>alert('Data inserted')</script>");
                    fillgrid();
                }
                else
                {
                    Response.Write("<script>alert('Data not inserted')</script>");
                }

            }
            else
            {
                int i = obj.savedata("update Category_master set category_name = '"+txtcat_name.Text +"',main_cat_id="+drpmain_cat.SelectedValue +" where category_id="+GridView1.SelectedRow.Cells[0].Text +"");
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
        txtcat_name.Text = "";
        drpmain_cat.SelectedIndex = 0;
        cmdsave.Text = "Save";
    }
    protected void cmdcancel_Click(object sender, EventArgs e)
    {
        txtcat_name.Text = "";
        drpmain_cat.SelectedIndex = 0;
        cmdsave.Text = "Save";
    
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtcat_name.Text = GridView1.SelectedRow.Cells[1].Text;
        for (int i = 0; i < drpmain_cat.Items.Count; i++)
        {
            if (drpmain_cat.Items[i].Text == GridView1.SelectedRow.Cells[2].Text)
            {
                drpmain_cat.SelectedIndex = i;
            }
        }
        cmdsave.Text = "Update";
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int i = obj.savedata("delete from Category_master where category_id=" + GridView1.Rows[e.RowIndex].Cells[0].Text + "");
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
}