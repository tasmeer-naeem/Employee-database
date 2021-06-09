<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Q_NO_5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div  id="dv1">
            <div id="dv2">
            <h1>USERNAME</h1>
            <asp:TextBox ID="username" runat="server" Height="41px" Width="201px"></asp:TextBox><br /><br />
            <h1>PASSWORD</h1>
            <asp:TextBox ID="password" runat="server" Height="41px" Width="201px" TextMode="Password"></asp:TextBox>
            <br /><br /><br /><br /><br />
            <asp:Button ID="login" runat="server" Text="LOGIN" OnClick="login_Click" /><br /><br />
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
             </div>
        </div>
    </form>
</body>
</html>
