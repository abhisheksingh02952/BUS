using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Retailer_Company_details : System.Web.UI.Page
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
            DataTable dt = obj.getdata("select * from City_master");
            drpcity.DataSource = dt;
            drpcity.DataTextField = "city_name";
            drpcity.DataValueField = "city_id";
            drpcity.DataBind();
            drpcity.Items.Insert(0, "--select--");
            fillgrid();
        }


    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
       
            if (cmdsave.Text == "Save")
            {
                 DataTable dt = new DataTable();
        dt = obj.getdata("select * from Company_details where comp_name='" + txtcname.Text + "' and comp_no="+txtcno.Text+"");
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('Data duplicated')</script>");
        }
        else
        {
                int i = obj.savedata("insert into Company_details values(" + txtcno.Text + ",'"+txtcname.Text+"','"+txtcadd.Text+"',"+drpcity.SelectedValue+","+txtphone.Text+",'"+txtemail.Text+"',"+txtcetaxno.Text+",'"+txtcetaxdate.Text+"',"+txtcocentaxno.Text+",'"+txtcocentaxdate.Text+"',"+txtflag.Text+","+txttinno.Text+")");
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
                int i = obj.savedata("update Company_details set comp_name='"+txtcname.Text+"',comp_add='"+txtcadd.Text+"',city_id="+drpcity.SelectedValue+",phone="+txtphone.Text+",email='"+txtemail.Text+"',central_sale_tax_no="+txtcetaxno.Text+",central_sale_tax_date='"+txtcetaxdate.Text+"',comp_central_sale_tax_no="+txtcocentaxno.Text+",comp_sale_tax_date='"+txtcocentaxdate.Text+"' where comp_no="+GridView1.SelectedRow.Cells[0].Text+" ");

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
        txtcno.Text = "";
        txtcname.Text = "";
        txtcadd.Text = "";
        drpcity.SelectedIndex = 0;
        txtphone.Text = "";
        txtemail.Text = "";
        txtcetaxno.Text = "";
        txtcetaxdate.Text = "";
        txtcocentaxno.Text = "";
        txtcocentaxdate.Text = "";
        txtflag.Text = "";
        txttinno.Text = "";
        cmdsave.Text = "Save";
    }
    public void fillgrid()
    {
        DataTable dt = obj.getdata("select * from Company_Details m,City_master n where m.city_id=n.city_id");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        for (int i = 0; i < drpcity.Items.Count; i++)
        {
            if (drpcity.Items[i].Text == GridView1.SelectedRow.Cells[3].Text)
            {
                drpcity.SelectedIndex = i;
            }
        }
        txtcno.Text = GridView1.SelectedRow.Cells[0].Text;
        txtcno.Enabled = true;
        txtcname.Text = GridView1.SelectedRow.Cells[1].Text;
        txtcadd.Text = GridView1.SelectedRow.Cells[2].Text;
        txtphone.Text = GridView1.SelectedRow.Cells[4].Text;
        txtemail.Text = GridView1.SelectedRow.Cells[5].Text;
        DataTable dt = new DataTable();
        dt = obj.getdata("select * from Company_details where comp_no="+GridView1.SelectedRow.Cells[0].Text+"");
        txtcetaxno.Text = dt.Rows[0][7].ToString();
        txtcetaxdate.Text = Convert.ToDateTime( dt.Rows[0][8].ToString()).ToString("MM/dd/yyyy");
        txtcocentaxno.Text = dt.Rows[0][9].ToString();
        txtcocentaxdate.Text = Convert.ToDateTime( dt.Rows[0][10].ToString()).ToString("MM/dd/yyyy");
        txtflag.Text = dt.Rows[0][11].ToString();
        txttinno.Text = dt.Rows[0][12].ToString();
        cmdsave.Text = "update";
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        
    }
protected void  GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
{
    GridView1.PageIndex = e.NewPageIndex;
        fillgrid();

}
protected void  GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
{
     int i = obj.savedata("delete from Company_details where comp_no="+GridView1.Rows[e.RowIndex].Cells[0].Text+"");
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
    txtcno.Text = "";
    txtcname.Text = "";
    txtcadd.Text = "";
    drpcity.SelectedIndex = 0;
    txtphone.Text = "";
    txtemail.Text = "";
    txtcetaxno.Text = "";
    txtcetaxdate.Text = "";
    txtcocentaxno.Text = "";
    txtcocentaxdate.Text = "";
    txtflag.Text = "";
    txttinno.Text = "";
    cmdsave.Text = "Save";
}
}