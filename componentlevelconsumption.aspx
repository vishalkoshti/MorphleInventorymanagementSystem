<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation = "false" CodeBehind="componentlevelconsumption.aspx.cs" Inherits="MorphleInventorymanagementSystem.componentlevelconsumption" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 567px;
        }
        .auto-style3 {
            width: 862px;
        }
        .auto-style4 {
            width: 7458px;
        }
        .auto-style5 {
            width: 7458px;
            height: 29px;
        }
        .auto-style6 {
            width: 862px;
            height: 29px;
        }
        .auto-style7 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;<asp:Label ID="Label1" runat="server" Text="Search By"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="option" runat="server">
                            <asp:ListItem>Part Number</asp:ListItem>
                            <asp:ListItem>Part Discription</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" Width="481px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="search" runat="server" OnClick="search_Click" Text="Search" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="download" runat="server" OnClick="download_Click" Text="Download" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" Height="189px" Width="930px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
        </asp:GridView>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Part Number"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="partnumber" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Part Discription"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="partdiscription" runat="server" Width="618px"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Qty Given"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Qty" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Category"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="category" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Pupose/Project"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="purpose" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="Date"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="date" runat="server"></asp:TextBox>
&nbsp;
                    <asp:Button ID="dateselection" runat="server" OnClick="dateselection_Click" Text="Date" />
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label8" runat="server" Text="Given by"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="givenby" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label9" runat="server" Text="Received by"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="receivedby" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Record" runat="server" OnClick="Record_Click" Text="Record" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="updatestock" runat="server" OnClick="updatestock_Click" Text="Update Stock" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
