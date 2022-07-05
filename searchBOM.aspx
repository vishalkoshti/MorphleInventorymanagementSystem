<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchBOM.aspx.cs" Inherits="MorphleInventorymanagementSystem.searchBOM" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
        <asp:GridView ID="GridView1" runat="server" Height="189px" Width="930px">
        </asp:GridView>
    </form>
</body>
</html>
