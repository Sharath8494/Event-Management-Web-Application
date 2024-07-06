<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="report1.aspx.cs" Inherits="Eve_managent.report1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="panel-background" Height="1400px" Width="1400px">
            <style>
        .panel-background{
            
            background-repeat:no-repeat;
           background-image:linear-gradient(rgba(0,0,0,0.20),rgba(0,0,0,0.20)),url('image/report1.jpg');
            background-size:cover;
        }
    </style>
            <center>
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
           
            <asp:Button ID="Button1" runat="server" Text="Show" OnClick="Button1_Click"/>
                
            <br />
                
            <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
            <br />
            <br />
            <br />
            
            <asp:GridView ID="GridView1" class="table table-striped table-bordered " runat="server" Font-Bold="True"></asp:GridView>
              
            <br />
            <br />
            <br />
            <br />
            
             <b style="font-size: xx-large">Event Booking Report Hallvise</b>
            <br />
            <br />
            <br />
            <b style="font-size: large">Enter Venue Name</b>&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>---Select---</asp:ListItem>
            </asp:DropDownList>&nbsp;&nbsp;              

            <br />
            <br />
           
            <asp:Button ID="Button2" runat="server" Text="Show" OnClick="Button2_Click"  ValidationGroup="b" />
                <br />
            <br />
                <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" class="table table-striped table-bordered " runat="server" Font-Bold="True"></asp:GridView>

            <b style="font-size: xx-large">Event Booking Report</b>
            <br />
            <br />
            <br />
            <b style="font-size: large">Enter Event Name</b>&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>---Select---</asp:ListItem>
            </asp:DropDownList>&nbsp;&nbsp;              
            <br />
            <br />
            <br />
            
            <asp:Button ID="Button3" runat="server" Text="Show" OnClick="Button3_Click"  ValidationGroup="c" />
                <br />
            <br />
                <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
            <br />
            <asp:GridView ID="GridView3" class="table table-striped table-bordered " runat="server" Font-Bold="True"></asp:GridView>

        </div>
                </center>
            </asp:Panel>
</asp:Content>
