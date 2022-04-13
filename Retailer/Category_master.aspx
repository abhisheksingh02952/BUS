<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Category_master.aspx.cs" Inherits="Retailer_Category_master" %>

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
            <td colspan="4" style="text-align: center">
                <asp:Label ID="Label1" runat="server" 
                    style="font-weight: 700; font-size: x-large; color: #0033CC" 
                    Text="Category Master"></asp:Label>
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
                <asp:Label ID="Label2" runat="server" Text="Main Category Name :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:DropDownList ID="drpmain_cat" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Category name :"></asp:Label>
            </td>
            <td colspan="2" style="margin-left: 160px">
                <asp:TextBox ID="txtcat_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcat_name" ErrorMessage="please enter category name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2" style="margin-left: 160px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right">
                <asp:Button ID="cmdsave" runat="server" onclick="cmdsave_Click" Text="Save" />
            </td>
            <td colspan="2" style="margin-left: 160px">
                <asp:Button ID="cmdcancel" runat="server" onclick="cmdcancel_Click" 
                    Text="Cancel" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2" style="margin-left: 160px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" onpageindexchanging="GridView1_PageIndexChanging" 
                    onrowdeleting="GridView1_RowDeleting" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="6">
                    <Columns>
                        <asp:BoundField DataField="category_id" HeaderText="Category ID" />
                        <asp:BoundField DataField="category_name" HeaderText="Category Name" />
                        <asp:BoundField DataField="main_cat_name" HeaderText="Main Category Name" />
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

