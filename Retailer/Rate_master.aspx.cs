using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Retailer_Rate_master : System.Web.UI.Page
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
            DataTable dt = new DataTable();
            dt = obj.getdata("select * from Product_master");
            ddlproduct.DataSource = dt;
            ddlproduct.DataTextField = "product_name";
            ddlproduct.DataValueField = "product_id";
            ddlproduct.DataBind();
            ddlproduct.Items.Insert(0,"select");
            fillgrid();
        }

    }
    public void fillgrid()
    {
        DataTable dt = new DataTable();
        dt = obj.getdata("select * from Rate_master r,Product_master p where p.product_id=r.product_id");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
          if (cmdsave.Text == "Save")
            {
              DataTable dt = obj.getdata("select * from Rate_master where  product_id=" + ddlproduct.SelectedValue + " ");
              if (dt.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Data duplicated')</script>");

                }
            else
            {
          
                int i = obj.savedata("insert into Rate_master values (" + ddlproduct.SelectedValue + ","+txtratemin.Text+","+txtrate0.Text+","+txtrate1.Text+")");
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
            }
            else
            {
                int i = obj.savedata("update Rate_master set product_id="+ddlproduct.SelectedValue+" ,rate_minimum="+txtratemin.Text+",rate_0="+txtrate0.Text+",rate_1="+txtrate1.Text+" where rate_id="+GridView1.SelectedRow.Cells[0].Text+"");
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
        
        txtratemin.Text = "";
        ddlproduct.SelectedIndex = 0;
        txtrate0.Text = "";
        txtrate1.Text = "";
        cmdsave.Text = "Save";

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fillgrid();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtratemin.Text = GridView1.SelectedRow.Cells[2].Text;
        txtrate0.Text = GridView1.SelectedRow.Cells[3].Text;
        txtrate1.Text = GridView1.SelectedRow.Cells[4].Text;
        for (int i = 0; i < ddlproduct.Items.Count; i++)
        {
            if (ddlproduct.Items[i].Text == GridView1.SelectedRow.Cells[1].Text)
            {
                ddlproduct.SelectedIndex = i;
            }
        }
        cmdsave.Text = "Update";
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int i = obj.savedata("delete from Rate_master where rate_id=" + GridView1.Rows[e.RowIndex].Cells[0].Text + "");
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
        ddlproduct.SelectedIndex = 0;
        txtratemin.Text = "";
        txtrate0.Text = "";
        txtrate1.Text = "";
        cmdsave.Text = "Save";
    }
}