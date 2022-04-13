<%@ Page Language="C#" MasterPageFile="~/cover/cover_master.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="cover_Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

        
    <table class="style1">
        <tr>
            <td class="style2" colspan="4" 
                style="text-align: center; font-weight: 700; color: #0066CC">
                Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <blink><asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/cover/Create_User.aspx" 
                    style="font-size: small; color: #0066CC">New Registration</asp:HyperLink></blink>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Text="User Type"></asp:Label>
            </td>
            <td colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="0">Admin</asp:ListItem>
                    <asp:ListItem Value="1">Retailer</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuname" ErrorMessage="User name can not be blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpass" ErrorMessage="Password can not be balnk "></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right" colspan="2">
                <asp:Button ID="login" runat="server" onclick="login_Click" Text="Login" />
            </td>
            <td colspan="2">
                <asp:Button ID="cmdcancel" runat="server" Text="Cancel" 
                    onclick="cmdcancel_Click" />
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/Retailer/Forgot_password.aspx" 
                    style="color: #0066CC; font-size: small; font-weight: 700">Forgot Password</asp:HyperLink>
            </td>
            <td colspan="2" style="text-align: right">
                &nbsp;</td>
            <td style="text-align: right">
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
   </asp:Content>

