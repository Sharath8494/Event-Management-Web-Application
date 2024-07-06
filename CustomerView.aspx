<%@ Page Title="" Language="C#" MasterPageFile="~/Custemer.Master" AutoEventWireup="true" CodeBehind="CustomerView.aspx.cs" Inherits="Eve_managent.CustomerView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/img/Picturebg.jpg" Height="900px">
         
         <br />
        <br />

        <br />

        <br />
        
        <div class="row">
            <div class="col">
                <center>
                <b>Booking ID</b>&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Show" CssClass="btn-info" OnClick="Button1_Click1"  />
                <br />
               
                <br />
                    </center>
                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered " BorderColor="Black" BorderStyle="Ridge" BorderWidth="5px" CellSpacing="3"></asp:GridView>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col">
                <center>
                <asp:Button ID="Button2" runat="server" Text="Cancel Event" CssClass="btn-danger" OnClick="Button2_Click"  />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" CssClass="btn-link" OnClick="Button7_Click" Text="Payment" />
           </center>
                    </div>
        </div>
        <br />
        <div class="row">
            <div class="col">
                <asp:GridView ID="GridView2" runat="server"  class="table table-striped table-bordered " BorderColor="Black" BorderStyle="Ridge" BorderWidth="5px" CellSpacing="3"></asp:GridView>
            </div>
        </div>
        <br />

    </asp:Panel>
</asp:Content>
