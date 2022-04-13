<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Company_details.aspx.cs" Inherits="Retailer_Company_details" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

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
                Company Details</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Company Number:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtcno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcno" ErrorMessage="please enter company number"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtcno" ErrorMessage="enter numbers only" 
                    ValidationExpression="\d{0,5}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Company Name:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtcname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtcname" ErrorMessage="please enter company name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbl" runat="server" Text="Company Address:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtcadd" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label4" runat="server" Text="City:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:DropDownList ID="drpcity" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label5" runat="server" Text="Phone:"></asp:Label>

            </td>
            <td colspan="2">
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="eneter valid phone number" 
                    ValidationExpression="\d{0,10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label6" runat="server" Text="Email:"></asp:Label>
            </td>
            <asp:ScriptManager ID="sc1" runat="server"></asp:ScriptManager>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="enter valid email id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label7" runat="server" Text="Central Sale Tax No:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtcetaxno" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtcetaxno" ErrorMessage="enter numbers only" 
                    ValidationGroup="\d{0,5}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label8" runat="server" Text="Central Sale Tax Date"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtcetaxdate" runat="server"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtcetaxdate" Format="MM/dd/yyyy">
                </cc1:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label9" runat="server" Text="Company Central Sale Tax No:"></asp:Label>
            </td>
            <td colspan="2" style="margin-left: 40px">
                <asp:TextBox ID="txtcocentaxno" runat="server" ></asp:TextBox>
            
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label10" runat="server" Text="Company Central Sale Tax Date:"></asp:Label>
            </td>
            <td colspan="2" style="margin-left: 40px">
                <asp:TextBox ID="txtcocentaxdate" runat="server"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtcocentaxdate" Format="MM/dd/yyyy">
                </cc1:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label11" runat="server" Text="Flag:"></asp:Label>
            </td>
            <td colspan="2" style="margin-left: 40px">
                <asp:TextBox ID="txtflag" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtflag" ErrorMessage="enter flag value"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label12" runat="server" Text="Tin No:"></asp:Label>
            </td>
            <td colspan="2" style="margin-left: 40px">
                <asp:TextBox ID="txttinno" runat="server"></asp:TextBox>
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
                <asp:Button ID="cmdsave" runat="server" Text="Save" onclick="cmdsave_Click" />
            </td>
            <td colspan="2" style="margin-left: 40px">
                <asp:Button ID="cmdcancel" runat="server" Text="Cancel" 
                    onclick="cmdcancel_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2" style="margin-left: 40px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2" style="margin-left: 40px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="6" 
                    onpageindexchanging="GridView1_PageIndexChanging" 
                    onrowdeleted="GridView1_RowDeleted" onrowdeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:BoundField DataField="comp_no" HeaderText="Company Number" />
                        <asp:BoundField DataField="comp_name" HeaderText="Company Name" />
                        <asp:BoundField DataField="comp_add" HeaderText="Company Address" />
                        <asp:BoundField DataField="city_name" HeaderText="City" />
                        <asp:BoundField DataField="phone" HeaderText="Phone_number" />
                        <asp:BoundField DataField="email" HeaderText="Email" />
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

