using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class Retailer_Product_master : System.Web.UI.Page
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
            drpmaincat.DataSource = obj.getdata("select * from main_category_master where login_id="+Session["lid"]+"");
            drpmaincat.DataTextField = "main_cat_name";
            drpmaincat.DataValueField = "main_cat_id";
            drpmaincat.DataBind();
            drpmaincat.Items.Insert(0, "--Select--");
            fillgrid();
        }
    }
    public void fillgrid()
    {
        GridView1.DataSource = obj.getdata("select * from Product_master pm,Category_master cm,Product_retailer_master prm where pm.category_id=cm.category_id and prm.login_id="+Session["lid"].ToString()+" and prm.product_id=pm.product_id");
        GridView1.DataBind();
    }
    protected void drpmaincat_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpcat.DataSource = obj.getdata("select * from Category_master where main_cat_id="+drpmaincat.SelectedValue +"");
        drpcat.DataTextField = "category_name";
        drpcat.DataValueField = "category_id";
        drpcat.DataBind();
    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
        string str, pth;
        str = Path.GetFileName(FileUpload1.FileName );
        pth = Server.MapPath("../images/" + FileUpload1.FileName);
        FileUpload1.SaveAs(pth);
        int j=0;
        if (rbyes.Checked == true)
        {
            j = 1;
        }
        else
        {
            j = 0;
        }
        string s;
        if (rbavailable.Checked == true)
        {
            s = "Available";
        }
        else
        {
            s = "Not Available";
        }
        if (cmdsave.Text == "Save")
        {
            

                int i = obj.savedata("insert into Product_master values  ('" + txtpcode.Text + "','" + txtpname.Text + "'," + drpcat.SelectedValue + "," + txtunit.Text + "," + txturate.Text + ",'" + FileUpload1.FileName + "'," + j + "," + txtvat.Text + "," + txtatax.Text + ",'" + s + "')");
                DataTable dt1 = obj.getdata("select MAX(product_id) from Product_master");
                int m = obj.savedata("insert into product_retailer_master values ("+dt1.Rows[0][0].ToString()+","+Session["lid"].ToString()+")");
                int k = obj.savedata("insert into final_stock_master (product_id,stock) values ("+dt1.Rows[0][0].ToString()+",0)");
                if (i == 1)
                {
                    Response.Write("<script>alert('Data inserted')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Data not inserted')</script>");
                }
            
        }
        else
        {
            int i = obj.savedata("update Product_master set product_code="+txtpcode.Text +",category_id="+drpcat.SelectedValue +",unit="+txtunit.Text +",unitrate="+txturate.Text +",image='"+FileUpload1.FileName +"',IS_texable= "+j+",vat="+txtvat.Text +",advance_tax="+txtatax.Text +",status='"+s+"' where product_name='"+GridView1.SelectedRow.Cells[1].Text +"'");
            if (i == 1)
            {
                Response.Write("<script>alert('Data Updated')</script>");
            }
            else
            {
                Response.Write("<script>alert('Data not Updated')</script>");
            }
        }
        fillgrid();
        txtatax.Text = "";
        //txtorder_level.Text = "";
        txtpcode.Text = "";
        txtpname.Text = "";
        //txtsale.Text = "";
        txtunit.Text = "";
        txturate.Text = "";
        txtvat.Text = "";
        rbavailable.Checked = false;
        rbno.Checked = false;
        rbyes.Checked = false;
        not_available.Checked = false;
        cmdsave.Text = "Save";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtpcode.Text = GridView1.SelectedRow.Cells[0].Text;
        txtpname.Text = GridView1.SelectedRow.Cells[1].Text;
        txtpname.Enabled = false;
        for (int i = 0; i < drpcat .Items.Count; i++)
        {
            if (drpcat .Items[i].Text == GridView1.SelectedRow.Cells[2].Text)
            {
                drpcat .SelectedIndex = i;
            }
        }
        if (GridView1.SelectedRow.Cells[3].Text == "Available")
        {
            rbavailable.Checked = true;
            not_available.Checked = false;
        }
        else
        {
            rbavailable.Checked = false ;
            not_available.Checked = true ;
        }
        DataTable dt = obj.getdata("select * from Product_master where product_name='"+txtpname.Text +"'");
        txtunit.Text = dt.Rows[0][4].ToString();
        txturate.Text = dt.Rows[0][5].ToString();
        //txtsale .Text = dt.Rows[0][6].ToString();
        //txtorder_level.Text = dt.Rows[0][7].ToString();
        if (Convert.ToInt16(dt.Rows[0][9]) == 1)
        {
            rbno.Checked = false;
            rbyes.Checked = true;
        }
        else
        {
            rbno.Checked = true ;
            rbyes.Checked = false ;
        }
        txtvat.Text = dt.Rows[0][10].ToString();
        txtatax.Text = dt.Rows[0][11].ToString();
        cmdsave.Text = "Update";
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fillgrid();
    }
    protected void cmdcancel_Click(object sender, EventArgs e)
    {
        txtatax.Text = "";
       
        txtpcode.Text = "";
        txtpname.Text = "";
       
        txtunit.Text = "";
        txturate.Text = "";
        txtvat.Text = "";
        rbavailable.Checked = false;
        rbno.Checked = false;
        rbyes.Checked = false;
        not_available.Checked = false;
        cmdsave.Text = "Save";
    
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int i = obj.savedata("delete from Product_master where product_name='" + GridView1.Rows[e.RowIndex].Cells[1].Text + "'");
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
}