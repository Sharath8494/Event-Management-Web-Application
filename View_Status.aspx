<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="View_Status.aspx.cs" Inherits="Eve_managent.View_Status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="panel-background" Height="900px" Width="1400px">
        <style>
        .panel-background{
            
            background-repeat:no-repeat;
           background-image:linear-gradient(rgba(0,0,0,0),rgba(0,0,0,0)),url('image/BackDe.jpeg');
            background-size:cover;
        }
    </style>
    <div class="row">
        <div class="col">
            <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered " AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BorderColor="#996600" BorderStyle="Solid" BorderWidth="5px" CellSpacing="5" DataKeyNames="Id" Font-Bold="True">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="Event" HeaderText="Event" SortExpression="Event" />
                    <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="decoration" HeaderText="decoration" SortExpression="decoration" />
                    <asp:BoundField DataField="Food" HeaderText="Food" SortExpression="Food" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Booking]"></asp:SqlDataSource>
        </div>
    </div>
        <br />
         <center>
                <div class="row">
            <div class="col">
                <asp:Button ID="Button1" runat="server" Text="Cancel" CssClass="bg-danger" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Refund" CssClass="btn-dark" OnClick="Button2_Click" />
               
            </div>
        </div>    
                    
                </center>
        <br />
       
         <div class="row">
        <div class="col">
            <asp:GridView ID="GridView2" runat="server" class="table table-striped table-bordered " AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BorderColor="#996600" BorderStyle="Solid" BorderWidth="5px" CellSpacing="5" DataKeyNames="id" Font-Bold="True">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" ReadOnly="True" />
                    <asp:BoundField DataField="Event" HeaderText="Event" SortExpression="Event" />
                    <asp:BoundField DataField="card" HeaderText="card" SortExpression="card" />
                    <asp:BoundField DataField="cvv" HeaderText="cvv" SortExpression="cvv" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Payment]"></asp:SqlDataSource>
        </div>
    </div>
        </asp:Panel>
</asp:Content>
