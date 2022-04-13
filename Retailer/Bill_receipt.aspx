<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Bill_receipt.aspx.cs" Inherits="Retailer_Bill_receipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .style3
    {
        width: 58px;
    }
    .style4
    {
        height: 25px;
    }
    .style5
    {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="Label1" runat="server" 
                    style="font-weight: 700; text-decoration: underline; color: #0066CC; font-size: x-large" 
                    Text="Bill Receipt"></asp:Label>
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
                <asp:Label ID="Label2" runat="server" Text="Doctor Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdrname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtdrname" ErrorMessage="please enter doctor name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Customer Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtcname" ErrorMessage="please enter customer name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Chemist Sign:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsign" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtsign" ErrorMessage="please enter chemist sign"></asp:RequiredFieldValidator>
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
                <asp:Button ID="Button1" runat="server" Text="Show Receipt" 
                    onclick="Button1_Click" />
            </td>
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
            <td colspan="2">
            
                <asp:Panel ID="Panel1" runat="server">
                    <table class="style1">
                        <tr>
                            <td style="text-align: left">
                                <asp:Label ID="Label5" runat="server" Text="Bill No:"></asp:Label>
                                <asp:Label ID="lblbno" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="style5">
                                &nbsp;</td>
                            <td style="text-align: right">
                                <asp:Label ID="Label7" runat="server" style="text-align: right" Text="Date"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label9" runat="server" Text="Customer Name:"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblcname" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label11" runat="server" Text="Doctor Name:"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lbldrname" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:DataList ID="DataList1" runat="server">
                                    <HeaderStyle BackColor="White" Font-Bold="False" Font-Italic="False" 
                                        Font-Names="Arial Black" Font-Overline="False" Font-Size="Smaller" 
                                        Font-Strikeout="False" Font-Underline="False" ForeColor="Black" 
                                        HorizontalAlign="Left" VerticalAlign="Top" />
                                    <HeaderTemplate>
                                        <table class="style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label20" runat="server" Text="Name"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label21" runat="server" Text="Qty"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label22" runat="server" Text="MRP"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label23" runat="server" Text="Amount"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <table class="style1">
                                            <tr>
                                                <td class="style3">
                                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("Qty") %>'></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("mrp") %>'></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label16" runat="server" Text='<%# Eval("amount") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style3">
                                                    &nbsp;</td>
                                                <td colspan="3">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label17" runat="server" Text="Total Amount:"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:Label ID="lbltamt" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="style5" colspan="3">
                                &nbsp;&nbsp;<asp:Label ID="Label19" runat="server" Text="Chemist Sign:"></asp:Label>
                                &nbsp;
                                <asp:Label ID="lblsign" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style4">
                </td>
        </tr>
    </table>
</asp:Content>

