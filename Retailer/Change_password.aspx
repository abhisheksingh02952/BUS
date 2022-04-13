<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Change_password.aspx.cs" Inherits="Retailer_Change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            color: #0066CC;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2" colspan="2" style="text-align: center">
                Change Password</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Old Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtoldpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtoldpass" ErrorMessage="please enter the old password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl" runat="server" Text="New Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtnewpass" ErrorMessage="please enter the new password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Confirm New Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcnewpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtnewpass" ControlToValidate="txtcnewpass" 
                    ErrorMessage="Password not match...."></asp:CompareValidator>
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
                <asp:Button ID="cmdchangepass" runat="server" onclick="cmdchangepass_Click" 
                    Text="Change Password" />
            </td>
            <td>
                <asp:Button ID="cmdcancel" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>

