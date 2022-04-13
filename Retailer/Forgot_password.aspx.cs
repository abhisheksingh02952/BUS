using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;


public partial class Retailer_Forgot_password : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmdok_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = obj.getdata("select * from Login_details where username='"+txtuname.Text+"'");
        if (dt.Rows.Count > 0)
        {
            string em = dt.Rows[0][3].ToString();
            string pass = dt.Rows[0][2].ToString();
            MailAddress fromAddress = new MailAddress("dreamproperty20@gmail.com", "realdreamproperty");
            const string subject = "Subject";

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;

            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("dreamproperty20@gmail.com", "realdreamproperty");
            MailMessage message = new MailMessage("dreamproperty20@gmail.com", em);
            message.Subject = "Your Password";
            //obj.savedata("insert into Inq_details values('" + txtname.Text + "','" + txtemail.Text + "'," + txtcno.Text + ",'" + txtaddress.Text + "')");

            message.Body = pass;
            message.Subject = subject;

            // SEND EMAIL
            smtp.Send(message);

            Response.Write("<script>alert('password is send on your email id........')</script>");
        }
        else
        {
            Response.Write("<script>alert('Invalid username........')</script>");
        }


    }
    protected void cmdcancel_Click(object sender, EventArgs e)
    {
        txtuname.Text = "";
    }
}