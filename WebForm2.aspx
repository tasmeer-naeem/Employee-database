<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Q_NO_5.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 133px;
        }
        .auto-style2 {
            width: 141px;
        }
        .auto-style3 {
            width: 204px;
        }
        .auto-style4 {
            margin-left: 7px;
        }
        .auto-style6 {
            margin-left: 10px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td  rowspan="7" class="auto-style1">
                        <asp:ListBox ID="ListBox1" runat="server" Height="141px" Width="95px" DataSourceID="SqlDataSource1" DataTextField="EmployeeName" DataValueField="Id" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [employee]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style2">Employee Name</td>
                    <td class="auto-style3"> <asp:TextBox ID="employename" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Date Of Birth</td>
                    <td class="auto-style3"> <asp:TextBox ID="dob" runat="server" TextMode="Date"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Status</td>
                    <td class="auto-style3"> <asp:CheckBox ID="status1" runat="server" Text="Single" GroupName="status" />
                        <asp:CheckBox ID="status2" runat="server" Text="Married" GroupName="status" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender</td>
                    <td class="auto-style3"> <asp:RadioButton ID="mgender" runat="server" Text="Male" GroupName="gender" />
                     <asp:RadioButton ID="fgender" runat="server" Text="Female" GroupName="gender" /></td>
                </tr>
                <tr>
                    <td class="auto-style2">Contact Number</td>
                    <td class="auto-style3"><asp:TextBox ID="contact" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Address</td>
                    <td class="auto-style3"><asp:TextBox ID="address" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td class="auto-style3"><asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox></td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="register" runat="server" Text="REGISTER" OnClick="register_Click" CssClass="auto-style4" />
            <asp:Button ID="update" runat="server" Text="UPDATE" OnClick="update_Click" CssClass="auto-style4" />
            <asp:Button ID="delete" runat="server" Text="DELETE" OnClick="delete_Click" CssClass="auto-style4" />
            <asp:Button ID="logout" runat="server" Text="LOGOUT" OnClick="logout_Click" CssClass="auto-style6" Width="73px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" SortExpression="EmployeeName" />
                    <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                    <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [employee]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
