<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MorphleInventorymanagementSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Morphle Inventory Management"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Login"></asp:Label>
        </p>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="password" runat="server" EnableViewState="False" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="authorize" runat="server" OnClick="Button1_Click" Text="Login" />
    </form>
</body>
</html>
