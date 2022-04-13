<%@ Page Language="C#" AutoEventWireup="true" CodeFile="waiting.aspx.cs" Inherits="cover_waiting" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <script>        alert('Your Registration successfully, please wait for admin approval.')</script>

        <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/images/i can infotech logo 2.jpg" Width="500px" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/cover/chome.aspx">Home</asp:HyperLink>

    <p> Thank you for register your account. we will contact you soon after your approval.
    <br />
    For any query call: +91 98765 43210
    </p>
    </div>
    </form>
</body>
</html>
