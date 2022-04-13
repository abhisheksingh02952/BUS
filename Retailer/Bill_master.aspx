<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Bill_master.aspx.cs" Inherits="Retailer_Bill_master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td>
            <asp:ScriptManager ID="sda" runat="server"></asp:ScriptManager>
        
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Bill No:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Product Name:" ></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpname" runat="server" Enabled="false"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Quatity:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtqty" runat="server" Enabled="false"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Pack No:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpno" ErrorMessage="Please enter the pack no"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Batch No:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbatch" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtbatch" ErrorMessage="Please enter the batch no"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="MFG:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmfg" runat="server"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtmfg" Format="MM/dd/yyyy">
                </cc1:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="Exp. Date:"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtexp" runat="server"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender2" runat="server" Format ="MM/dd/yyyy" TargetControlID="txtexp">
                </cc1:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="MRP : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmrp" runat="server" Enabled="false"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Final Amount :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtamount" runat="server" Enabled="False"></asp:TextBox>
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
                <asp:Button ID="cmdcontinue" runat="server" Text="Continue" 
                    onclick="cmdcontinue_Click" />
            </td>
            <td>
                <asp:Button ID="cmdend" runat="server" Text="Generate Bill Receipt" 
                    onclick="cmdend_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

