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
                    <td class="auto-style2">Search by</td>
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
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="ReceivedPartsReport">
                            <Columns>
                                <asp:BoundField DataField="Part_Number" HeaderText="Part_Number" SortExpression="Part_Number" />
                                <asp:BoundField DataField="Part_Discription" HeaderText="Part_Discription" SortExpression="Part_Discription" />
                                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                                <asp:BoundField DataField="Name of Person Receiving" HeaderText="Name of Person Receiving" SortExpression="Name of Person Receiving" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Qty Received" HeaderText="Qty Received" SortExpression="Qty Received" />
                                <asp:BoundField DataField="Qty QC Done" HeaderText="Qty QC Done" SortExpression="Qty QC Done" />
                                <asp:BoundField DataField="Qty QC Pending" HeaderText="Qty QC Pending" SortExpression="Qty QC Pending" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="ReceivedPartsReport" runat="server" ConnectionString="<%$ ConnectionStrings:MorphleInventoryManagementSystemConnectionString %>" SelectCommand="SELECT * FROM [ReceivePart] WHERE ([Name of Person Receiving] LIKE '%' + @Name_of_Person_Receiving + '%')">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="Name_of_Person_Receiving" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
