<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Viewfeed.aspx.cs" Inherits="Eve_managent.Viewfeed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" CssClass="panel-background" Height="900px" Width="1400px" >
          <style>
        .panel-background{
            
            background-repeat:no-repeat;
           background-image:linear-gradient(rgba(0,0,0,0.00),rgba(0,0,0,0.00)),url('image/feed8.jpg');
            background-size:cover;
        }
    </style>
    <div class="row">
        <div class="col">
            <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered " AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1" Font-Bold="True">
                <Columns>
                    <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                    <asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback" />
                    <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [rating]"></asp:SqlDataSource>
        </div>
    </div>
         </asp:Panel>
</asp:Content>
