<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="receivedpartreport.aspx.cs" Inherits="MorphleInventorymanagementSystem.receivedpartreport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 257px;
        }
        .auto-style3 {
            margin-right: 58px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Search By"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="option" runat="server">
                            <asp:ListItem>Part Number</asp:ListItem>
                            <asp:ListItem>Part Discription</asp:ListItem>
                            <asp:ListItem>Name</asp:ListItem>
                            <asp:ListItem>Date</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" OnTextChanged="TextBox1_TextChanged" Width="214px"></asp:TextBox>
                        <asp:Button ID="search" runat="server" OnClick="Button1_Click" Text="Search" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="download" runat="server" OnClick="download_Click" Text="Download" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" Width="664px">
        </asp:GridView>
    </form>
</body>
</html>
