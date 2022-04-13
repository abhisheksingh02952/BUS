<%@ Page Title="" Language="C#" MasterPageFile="~/cover/cover_master.master" AutoEventWireup="true" CodeFile="Create_User.aspx.cs" Inherits="Retailer_Create_User" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

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
            <td class="style2" colspan="4">
                Create A&nbsp; New Account</td>
        </tr>
        <tr>
            <td colspan="2">            
            <asp:ScriptManager ID="Scriptmanager1" runat="server"></asp:ScriptManager>
                    &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label5" runat="server" Text="Name :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="please enter your name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label6" runat="server" Text="Address:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtadd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label7" runat="server" Text="City Name :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label8" runat="server" Text="Mobile Number :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtmno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label9" runat="server" Text="Sales Tax Bill No :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtsale" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label10" runat="server" Text="Sales Tax Date :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtsaledate" runat="server"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" Format="MM/dd/yyyy" 
                    TargetControlID="txtsaledate">
                </cc1:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label11" runat="server" Text="Tin No. :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txttin" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtuname" ErrorMessage="please enter username" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Email id:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemailid" ErrorMessage="Enter Valid email.........." 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtcpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtcpass" 
                    ErrorMessage="Password not Match...."></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Create User" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

