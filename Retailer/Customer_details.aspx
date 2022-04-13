<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Customer_details.aspx.cs" Inherits="Retailer_Customer_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 81%;
        }
        .style2
        {
            color: #0066CC;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2" colspan="4" style="text-align: center; font-weight: 700">
                Customer Details</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtfname" ErrorMessage="please enter  fname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
            </td>
            <td colspan="2" style="margin-left: 40px">
                <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtlname" ErrorMessage="please enter lname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Gender:"></asp:Label>
            </td>
            <td colspan="2" style="margin-left: 40px">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="abc" Text="Male" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="abc" Text="Female" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label4" runat="server" Text="State:"></asp:Label>
            </td>
            <td colspan="2" style="margin-left: 40px">
                <asp:TextBox ID="txtstatename" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtstatename" ErrorMessage="please enter state name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label5" runat="server" Text="City:"></asp:Label>
            </td>
            <td colspan="2" style="margin-left: 40px">
                <asp:DropDownList ID="ddlcity" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label6" runat="server" Text="Mobile Number:"></asp:Label>
            </td>
            <td colspan="2" style="margin-left: 40px">
                <asp:TextBox ID="txtmno" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmno" ErrorMessage="enter valid mobile no" 
                    ValidationExpression="\d{0,10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label7" runat="server" Text="Landline Number:"></asp:Label>
            </td>
            <td colspan="2" style="margin-left: 40px">
                <asp:TextBox ID="txtlno" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtlno" ErrorMessage="enter valid land line no" 
                    ValidationExpression="\d{0,10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
            </td>
            <td colspan="2" style="margin-left: 40px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="enter valid email id"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2" style="margin-left: 40px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right">
                <asp:Button ID="cmdsave" runat="server" onclick="cmdsave_Click" Text="Save" />
            </td>
            <td colspan="2">
                <asp:Button ID="cmdcancel" runat="server" onclick="cmdcancel_Click" 
                    Text="Cancel" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td colspan="2" style="text-align: right">
                &nbsp;</td>
            <td style="text-align: right">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

