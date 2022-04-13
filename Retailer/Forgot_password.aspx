<%@ Page Title="" Language="C#" MasterPageFile="~/cover/cover_master.master" AutoEventWireup="true" CodeFile="Forgot_password.aspx.cs" Inherits="Retailer_Forgot_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2" colspan="2" style="text-align: center">
                Forgot Password</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Enter Username:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuname" ErrorMessage="User Name can not be blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Button ID="cmdok" runat="server" onclick="cmdok_Click" Text="Ok" />
            </td>
            <td>
                <asp:Button ID="cmdcancel" runat="server" Text="Cancel" 
                    onclick="cmdcancel_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

