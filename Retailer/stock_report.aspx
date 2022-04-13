<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="stock_report.aspx.cs" Inherits="Retailer_stock_report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            font-weight: bold;
            text-align: center;
            color: #0066CC;
        }
        .style4
        {
            font-weight: bold;
            text-align: center;
            color: #0066CC;
            font-size: x-large;
        }
        .style5
        {
            font-weight: bold;
            text-align: center;
            color: #0066CC;
            width: 235px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style2">
        <tr>
            <td class="style4" colspan="3">
                Stock Report</td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    style="color: #000000" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Category_name" HeaderText="Product Category" />
                        <asp:BoundField DataField="product_code" HeaderText="Product Code" />
                        <asp:BoundField DataField="product_name" HeaderText="Product Name" />
                        <asp:BoundField DataField="stock" HeaderText="Stock" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

