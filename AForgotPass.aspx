<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AForgotPass.aspx.cs" Inherits="Eve_managent.AForgotPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <div style="background-image: url('http://localhost:3892/backimg/image/Picture2.jpg')">
    
        <br />
<center>
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/image/Picture3.jpg" 
            Height="400px" style="text-align: center; margin-left: 0px; margin-top: 93px" 
            Width="737px">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Forgot Password" 
                style="font-family: 'Bell MT'; font-weight: 700; font-size: xx-large"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" 
                style="font-family: 'Bookman Old Style'; font-weight: 700; font-size: x-large" 
                Text="Email ID"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="150px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server"  Text="Send OTP" 
                Width="127px" onclick="Button1_click"/>
            <br />
            <asp:Label ID="Label4" runat="server" Text="." Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="."></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" 
                style="font-family: 'Bookman Old Style'; font-weight: 700; font-size: x-large" 
                Text="Verify OTP"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="150px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="."></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="Button2" runat="server"  Text="Verify " Width="101px" 
                onclick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
     </center>
        <br />
    </div>
    </form>
</body>
</html>
