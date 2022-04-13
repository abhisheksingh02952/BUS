<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Sales_master.aspx.cs" Inherits="Retailer_Sales_master" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>

            <td colspan="2" 
                style="font-weight: 700; text-decoration: underline; color: #0066CC; text-align: center">
                <asp:ScriptManager ID="Scriptmanager1" runat="server"></asp:ScriptManager>
                <asp:Label ID="Label1" runat="server" style="font-size: x-large" 
                    Text="Sale Master"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Sales Master Number:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsnum" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtsnum" ErrorMessage="please enter sales master number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Sales Bill No:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpbill" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpbill" ErrorMessage="please enter sales bill no"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Sales date:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpdate" runat="server"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtpdate" Format="MM/dd/yyyy">
                </cc1:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Licence No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtlno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtlno" ErrorMessage="please enter licence number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label18" runat="server" Text="Customer Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtcname" ErrorMessage="please enter customer number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtadd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="City:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlcity" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Mobile Number:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmob" ErrorMessage="Enter valid mobile number" 
                    ValidationExpression="\d{0,10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Product name:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlpname" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Quantity:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtqty" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtqty" ErrorMessage="please enter qty"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Rate:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtrate" runat="server" ontextchanged="txtrate_TextChanged"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Calculate" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Gross Amount :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtgamt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtgamt" ErrorMessage="please enter gross amount"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Discount(%)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdis" runat="server" ontextchanged="txtdis_TextChanged"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Calculate" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label15" runat="server" Text="Net Amount:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnamt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label16" runat="server" Text="Purchase Type:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlptype" runat="server">
                    <asp:ListItem>Cash</asp:ListItem>
                    <asp:ListItem>Cheque</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Button ID="cmdsave" runat="server" onclick="cmdsave_Click" Text="Sales" />
            </td>
            <td>
                <asp:Button ID="cmdcancel" runat="server" Text="Cancel" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

