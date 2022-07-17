<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addpart.aspx.cs" Inherits="MorphleInventorymanagementSystem.addpart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 223px;
        }
        .auto-style4 {
            height: 26px;
            width: 223px;
        }
        .auto-style5 {
            width: 508px;
        }
        .auto-style6 {
            height: 26px;
            width: 508px;
        }
        .auto-style7 {
            width: 223px;
            height: 29px;
        }
        .auto-style8 {
            width: 508px;
            height: 29px;
        }
        .auto-style9 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Morphle Inventory Management"></asp:Label>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" OnDataBinding="Page_Load" Text="Part Number"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="chk" runat="server" OnClick="chk_Click" Text="Check" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" OnDataBinding="Page_Load" Text="Part Discription"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server" Width="602px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" OnDataBinding="Page_Load" Text="Category"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Engg parts</asp:ListItem>
                            <asp:ListItem>Cots</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label4" runat="server" OnDataBinding="Page_Load" Text="C240"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" OnDataBinding="Page_Load" Text="Optimus"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label6" runat="server" OnDataBinding="Page_Load" Text="H1"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label7" runat="server" OnDataBinding="Page_Load" Text="H6"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label8" runat="server" OnDataBinding="Page_Load" Text="Index"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label9" runat="server" OnDataBinding="Page_Load" Text="Brain"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add" Height="29px" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="update" runat="server" OnClick="update_Click" Text="Update" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style5">
                        <asp:Button ID="delete" runat="server" OnClick="delete_Click" Text="Delete" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="search" runat="server" Text="Search" OnClick="search_Click1" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td>
                        <asp:Button ID="uploadfromexcel" runat="server" OnClick="uploadfromexcel_Click" Text="Bulk Upload from Excel" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
