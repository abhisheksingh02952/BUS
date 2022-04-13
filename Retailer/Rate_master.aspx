<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Rate_master.aspx.cs" Inherits="Retailer_Rate_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: x-large;
            font-weight: bold;
            color: #0066CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2" colspan="4" style="text-align: center">
                Rate Details</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Product:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:DropDownList ID="ddlproduct" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Rate Minimum:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtratemin" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtratemin" ErrorMessage="enter numbers only" 
                    ValidationGroup="\d{0,6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Text=" Rate 0:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtrate0" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtrate0" ErrorMessage="enter numbers only" 
                    ValidationExpression="\d{0,6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label4" runat="server" Text="Rate1:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtrate1" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtrate1" ErrorMessage="enter numbers only" 
                    ValidationExpression="\d{0,6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
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
            <td colspan="2" style="text-align: right">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td colspan="2" style="text-align: right">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" onpageindexchanging="GridView1_PageIndexChanging" 
                    onrowdeleting="GridView1_RowDeleting" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="6">
                    <Columns>
                        <asp:BoundField DataField="rate_id" HeaderText="Rate Id" />
                        <asp:BoundField DataField="product_name" HeaderText="Product" />
                        <asp:BoundField DataField="rate_minimum" HeaderText="Rate Minimum" />
                        <asp:BoundField DataField="rate_0" HeaderText="Rate 0" />
                        <asp:BoundField DataField="rate_1" HeaderText="Rate 1" />
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
            <td style="text-align: right">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

