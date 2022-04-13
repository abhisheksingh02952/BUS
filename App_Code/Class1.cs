using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    string cnstr = @"Data Source=.\SQLEXPRESS;AttachDbFilename='|DataDirectory|\Database.mdf';Integrated Security=True;User Instance=True";
    SqlConnection con;


    public Class1()
    {
        con = new SqlConnection(cnstr);

    }

    public DataTable getdata(string str)
    {
        SqlCommand cmd = new SqlCommand(str,con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
        

    }

    public int savedata(string str)
    {
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (i > 0)
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
}

    