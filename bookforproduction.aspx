<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookforproduction.aspx.cs" Inherits="MorphleInventorymanagementSystem.bookforproduction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 283px;
        }
        .auto-style3 {
            width: 283px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="C240 Scanner Qty"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="c240" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Optimus Scanner Qty"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="optimus" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="H1 Scanner Qty"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="h1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="H6 Scanner Qty"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="h6" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Index Scanner Qty"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="index" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />
                    </td>
                    <td>
                        <asp:Button ID="clear" runat="server" Text="Clear" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Brain Scanner Qty"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="brain" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="download" runat="server" OnClick="download_Click" Text="Download" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
