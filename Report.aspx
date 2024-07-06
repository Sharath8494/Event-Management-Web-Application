<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Eve_managent.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" CssClass="panel-background" Height="1183px" Width="1700px">
            <style>
        .panel-background{
            
            background-repeat:no-repeat;
           background-image:linear-gradient(rgba(0,0,0,0.20),rgba(0,0,0,0.20)),url('image/report1.jpg');
            background-size:cover;
        }
    </style>
            
        <div style="text-align: center">
<b style="font-size: xx-large">Event Booking Report</b>
          
            <br />
            <br />
            <br />
            <br />
            <b style="font-size: large">From Date</b>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style="font-size: large">To Date</b>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <center>
            <asp:Button ID="Button1" runat="server" Text="Show" OnClick="Button1_Click" />
                </center>
            <asp:Label ID="Label1" runat="server" Text="."></asp:Label>
            <br />
            <br />
            <br />
            <center>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                </center>
            <br />
            
            
             <b style="font-size: xx-large">Event Booking Report Hallvise</b>
            <br />
            <br />
            <br />
            <b style="font-size: large">Enter Venue Name</b>&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>---Select---</asp:ListItem>
            </asp:DropDownList>&nbsp;&nbsp;              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="DropDownList1" InitialValue="--select--" SetFocusOnError="True" Font-Size="Small" ValidationGroup="b"></asp:RequiredFieldValidator>


            <br />
            <br />
            <br />
            <center style="margin-top: 0px">
            <asp:Button ID="Button2" runat="server" Text="Show" OnClick="Button2_Click" />
                <br />
            <br />
                <asp:Label ID="Label2" runat="server" Text="."></asp:Label>
            <br />
            <asp:GridView ID="GridView2" runat="server"></asp:GridView>
</center> 
            <b style="font-size: xx-large">Event Booking Report</b>
            <br />
            <br />
            <br />
            <b style="font-size: large">Enter Event Name</b>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <center>
            <asp:Button ID="Button3" runat="server" Text="Show" OnClick="Button3_Click" />
                <br />
            <br />
                <asp:Label ID="Label3" runat="server" Text="."></asp:Label>
            <br />
            <asp:GridView ID="GridView3" runat="server"></asp:GridView>
</center> 
        </div>
            </asp:Panel>
    </form>
</body>
</html>
