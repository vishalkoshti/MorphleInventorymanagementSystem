<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="receivepart.aspx.cs" Inherits="MorphleInventorymanagementSystem.receivepart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 108%;
        }
        .auto-style2 {
            width: 372px;
        }
        .auto-style3 {
            width: 115px;
        }
        .auto-style4 {
            width: 372px;
            height: 101px;
        }
        .auto-style5 {
            height: 101px;
        }
        .auto-style6 {
            width: 115px;
            height: 101px;
        }
        .auto-style7 {
            width: 189px;
        }
        .auto-style8 {
            width: 189px;
            height: 101px;
        }
        .auto-style9 {
            width: 217px;
        }
        .auto-style10 {
            width: 217px;
            height: 101px;
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
                        <asp:Label ID="Label1" runat="server" Text="Search by Part Discription"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="searchpartdiscription" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Panel ID="Panel1" runat="server">
                            <asp:CheckBoxList ID="selectpart" runat="server" DataSourceID="fetchdatafromBOM" DataTextField="Part_Discription" DataValueField="Part_Discription" Height="59px" Width="648px">
                            </asp:CheckBoxList>
                            <asp:SqlDataSource ID="fetchdatafromBOM" runat="server" ConnectionString="<%$ ConnectionStrings:MorphleInventoryManagementSystemConnectionString %>" SelectCommand="SELECT [Part_Number], [Part_Discription], [Category] FROM [BOM] WHERE ([Part_Discription] LIKE '%' + @Part_Discription + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="searchpartdiscription" Name="Part_Discription" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </asp:Panel>
                    </td>
                    <td class="auto-style10">
                        <asp:Button ID="fetch" runat="server" OnClick="fetch_Click" Text="Fetch Details" />
                    </td>
                    <td class="auto-style6"></td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Part Number"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="partnumber" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Part Discription"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="partdiscription" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Category"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="category" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Name of Person Receiving Part"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="date" runat="server" OnTextChanged="date_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="dateselection" runat="server" OnClick="dateselection_Click" Text="Select Date" Width="112px" />
                        <asp:Calendar ID="Calendar" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Qty Recived"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="qtyreceived" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="receive" runat="server" OnClick="receive_Click1" Text="Receive" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="movetoQC" runat="server" Text="Move for QC List" OnClick="movetoQC_Click1" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="receivedpartreport" runat="server" OnClick="receivedpartreport_Click" Text="Received Parts Report" />
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
