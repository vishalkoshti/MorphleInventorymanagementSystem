<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inspection.aspx.cs" Inherits="MorphleInventorymanagementSystem.inspection" %>

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
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataSourceID="QCPendingList" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="Part Number" HeaderText="Part Number" SortExpression="Part Number" />
                                <asp:BoundField DataField="Part Discription" HeaderText="Part Discription" SortExpression="Part Discription" />
                                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                                <asp:BoundField DataField="Qty Received" HeaderText="Qty Received" SortExpression="Qty Received" />
                                <asp:BoundField DataField="Qty QC Pending" HeaderText="Qty QC Pending" SortExpression="Qty QC Pending" />
                                <asp:BoundField DataField="Qty QC Done" HeaderText="Qty QC Done" SortExpression="Qty QC Done" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="QCPendingList" runat="server" ConnectionString="<%$ ConnectionStrings:MorphleInventoryManagementSystemConnectionString %>" SelectCommand="SELECT * FROM [QCLIST]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Part Number"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="partnumber" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Part Discription"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="partdiscription" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="category" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Name of Person"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="qtyreceived" runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="NOTE:DATE WILL BE RECORDED "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="date" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="dateselection" runat="server" OnClick="dateselection_Click" Text="Select Date" Visible="False" />
                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Qty Accepted"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="qtyaccepted" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Qty Rejected"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="qtyrejected" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
                    </td>
                    <td>
                        <asp:Button ID="updateqclist" runat="server" OnClick="updateqclist_Click" Text="Update " />
                    </td>
                    <td>
                        <asp:Button ID="addtostock" runat="server" OnClick="addtostock_Click" Text="Add to Stock" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
