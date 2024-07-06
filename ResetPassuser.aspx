<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassuser.aspx.cs" Inherits="Eve_managent.ResetPassuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 1231px">
    
        <asp:Panel ID="Panel1" runat="server" Height="547px" 
            
            style="text-align: center; margin-top: 0px; margin-left: 392px; margin-right: 306px;" 
            BorderColor="White" BorderStyle="Groove" Width="998px" BackColor="#3366FF" 
            BackImageUrl="~/image/b9.jpg" ForeColor="White">
            <asp:Image ID="Image2" runat="server" Height="173px" 
            ImageUrl="~/img/password.jpg" Width="207px" BorderColor="White" 
                BorderStyle="Solid" style="margin-top: 21px" />
            <br />
            <br />
            Reset Password<br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="New Password" 
                style="font-size: large; font-weight: 700;" ForeColor="White"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="30px" 
                Width="164px" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="* Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="Label4" runat="server" ForeColor="White" 
                style="font-size: large; font-weight: 700;" Text="Confirm Password  "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" Height="29px" 
                Width="162px" TextMode="Password"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="* Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
&nbsp;<br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Change_pass" runat="server" onclick="Button2_Click" Text="Change Password" 
                Width="135px" BorderStyle="Groove" Height="31px" ValidationGroup="a" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" ForeColor="White">.</asp:Label>
            <br />
            &nbsp;
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
