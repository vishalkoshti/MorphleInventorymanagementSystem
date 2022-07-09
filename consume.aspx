<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consume.aspx.cs" Inherits="MorphleInventorymanagementSystem.consume" %>

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
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Button ID="BulkConsumption" runat="server" Text="Bulk Consumption" />
                    </td>
                    <td>
                        <asp:Button ID="Componentlevelconsumption" runat="server" OnClick="Componentlevelconsumption_Click" Text="Component Level Consumption" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</body>
</html>
