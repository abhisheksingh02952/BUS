<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.master" AutoEventWireup="true" CodeFile="view_retailers.aspx.cs" Inherits="Admin_view_retailers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style2">
    <tr>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" 
                style="margin-left: 143px" AllowPaging="True" DataKeyNames="reg_id" 
                DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/false2.jpg" 
                        ShowDeleteButton="True" />
                    <asp:BoundField DataField="reg_id" HeaderText="reg_id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="reg_id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="address" HeaderText="address" 
                        SortExpression="address" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" 
                        SortExpression="mobile_no" />
                    <asp:BoundField DataField="sale_tax_no" HeaderText="sale_tax_no" 
                        SortExpression="sale_tax_no" />
                    <asp:BoundField DataField="sale_tax_date" HeaderText="sale_tax_date" 
                        SortExpression="sale_tax_date" />
                    <asp:BoundField DataField="tin_no" HeaderText="tin_no" 
                        SortExpression="tin_no" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
                DeleteCommand="DELETE FROM [regstration_master] WHERE [reg_id] = @original_reg_id AND [name] = @original_name AND [address] = @original_address AND [city] = @original_city AND [mobile_no] = @original_mobile_no AND [sale_tax_no] = @original_sale_tax_no AND [sale_tax_date] = @original_sale_tax_date AND [tin_no] = @original_tin_no" 
                InsertCommand="INSERT INTO [regstration_master] ([name], [address], [city], [mobile_no], [sale_tax_no], [sale_tax_date], [tin_no]) VALUES (@name, @address, @city, @mobile_no, @sale_tax_no, @sale_tax_date, @tin_no)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [regstration_master]" 
                UpdateCommand="UPDATE [regstration_master] SET [name] = @name, [address] = @address, [city] = @city, [mobile_no] = @mobile_no, [sale_tax_no] = @sale_tax_no, [sale_tax_date] = @sale_tax_date, [tin_no] = @tin_no WHERE [reg_id] = @original_reg_id AND [name] = @original_name AND [address] = @original_address AND [city] = @original_city AND [mobile_no] = @original_mobile_no AND [sale_tax_no] = @original_sale_tax_no AND [sale_tax_date] = @original_sale_tax_date AND [tin_no] = @original_tin_no">
                <DeleteParameters>
                    <asp:Parameter Name="original_reg_id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_city" Type="String" />
                    <asp:Parameter Name="original_mobile_no" Type="Decimal" />
                    <asp:Parameter Name="original_sale_tax_no" Type="String" />
                    <asp:Parameter Name="original_sale_tax_date" Type="DateTime" />
                    <asp:Parameter Name="original_tin_no" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="mobile_no" Type="Decimal" />
                    <asp:Parameter Name="sale_tax_no" Type="String" />
                    <asp:Parameter Name="sale_tax_date" Type="DateTime" />
                    <asp:Parameter Name="tin_no" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="mobile_no" Type="Decimal" />
                    <asp:Parameter Name="sale_tax_no" Type="String" />
                    <asp:Parameter Name="sale_tax_date" Type="DateTime" />
                    <asp:Parameter Name="tin_no" Type="Int32" />
                    <asp:Parameter Name="original_reg_id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_city" Type="String" />
                    <asp:Parameter Name="original_mobile_no" Type="Decimal" />
                    <asp:Parameter Name="original_sale_tax_no" Type="String" />
                    <asp:Parameter Name="original_sale_tax_date" Type="DateTime" />
                    <asp:Parameter Name="original_tin_no" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

