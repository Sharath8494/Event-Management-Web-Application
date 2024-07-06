<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cancel.aspx.cs" Inherits="Eve_managent.Cancel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
<div class="row">
    <div class="col">
        <b>Booking ID</b>&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="cancel" CssClass="btn-danger" Width="68px" OnClick="Button1_Click" />&nbsp;&nbsp;<asp:Button ID="Button2" runat="server"  CssClass="btn-close" Width="68px" OnClick="Button2_Click" Text="Back" />
        <br />

    </div>
</div>
        </center>
    </form>
</body>
</html>
