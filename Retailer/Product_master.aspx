<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Product_master.aspx.cs" Inherits="Retailer_Product_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: left;
        }
        .style3
        {
            height: 25px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="4" class="style3">
                <asp:Label ID="Label1" runat="server" Text="Product Master" 
                    style="font-weight: 700; font-size: x-large; color: #0033CC"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Product Code :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtpcode" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtpcode" ErrorMessage="please enter product code"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Product Name :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtpname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpname" ErrorMessage="please enter product name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label4" runat="server" Text="Main Category Name :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:DropDownList ID="drpmaincat" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpmaincat_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label5" runat="server" Text="Category Name :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:DropDownList ID="drpcat" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label6" runat="server" Text="Unit :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtunit" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtunit" ErrorMessage="enter numbers only" 
                    ValidationExpression="\d{0,5}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label7" runat="server" Text="Unit Rate :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txturate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <%--<tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label8" runat="server" Text="Loss In Sale :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtsale" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label14" runat="server" Text="Order Level :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtorder_level" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtorder_level" ErrorMessage="please enter the order level"></asp:RequiredFieldValidator>
            </td>
        </tr>--%>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label9" runat="server" Text="Product Image :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label10" runat="server" Text="IS Texable :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:RadioButton ID="rbyes" runat="server" GroupName="aa" Text="Yes" />
                <asp:RadioButton ID="rbno" runat="server" GroupName="aa" Text="No" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label11" runat="server" Text="VAT :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtvat" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label12" runat="server" Text="Advance Tax :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtatax" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label13" runat="server" Text="Status :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:RadioButton ID="rbavailable" runat="server" GroupName="b" 
                    Text="Available" />
                <asp:RadioButton ID="not_available" runat="server" GroupName="b" 
                    Text="Not Available" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right" >
                <asp:Button ID="cmdsave" runat="server" Text="Save" onclick="cmdsave_Click" />
            </td>
            <td colspan="2">
                <asp:Button ID="cmdcancel" runat="server" Text="Cancel" 
                    onclick="cmdcancel_Click" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" onpageindexchanging="GridView1_PageIndexChanging" 
                    onrowdeleting="GridView1_RowDeleting" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="6">
                    <Columns>
                        <asp:BoundField DataField="product_code" HeaderText="Product Code" />
                        <asp:BoundField DataField="product_name" HeaderText="Product Name" />
                        <asp:BoundField DataField="category_name" HeaderText="Cateogry Name" />
                        <asp:BoundField DataField="status" HeaderText="Status" />
                        <asp:ImageField DataImageUrlField="image" 
                            DataImageUrlFormatString="../images/{0}" HeaderText="Product Image">
                            <ControlStyle Height="50px" Width="50px" />
                        </asp:ImageField>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

