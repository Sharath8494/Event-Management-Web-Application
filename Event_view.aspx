<%@ Page Title="" Language="C#" MasterPageFile="~/Custemer.Master" AutoEventWireup="true" CodeBehind="Event_view.aspx.cs" Inherits="Eve_managent.Event_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server"  CssClass="panel-background" Height="1100px" Width="1400px">
        <style>
        .panel-background{
            
            background-repeat:no-repeat;
           background-image:linear-gradient(rgba(0,0,0,0.05),rgba(0,0,0,0.05)),url('image/ind6.jpg');
            background-size:cover;
        }
    </style>
    <div class="row">
        <div class="col" style="font-family: 'Calisto MT'; font-size: x-large; font-weight: bold; font-style: normal; font-variant: normal; color: #000000; text-decoration: blink; align-content:center ">
            Welcome to our event management company! We specialize in organizing and planning a wide range of events including weddings, Birthdays. Our dedicated team of professionals strives to make every event a memorable and successful one.
            
            </div>
    </div>
     <div class="row">
        <div class="col" style="font-family: 'Calisto MT'; font-size: x-large; font-weight: bold; font-style: normal; font-variant: normal; color: #000000; text-decoration: blink; align-content:center ">
            <br/>
            Available Halls in Our Company
    <asp:GridView runat="server" class="table table-striped table-bordered " AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="capacity" HeaderText="capacity" SortExpression="capacity" />
            <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
            <asp:TemplateField HeaderText="image" SortExpression="image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="96px" ImageUrl='<%# Eval("image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Venue]"></asp:SqlDataSource>
     </div>
    </div>
    
     <div class="row">
        <div class="col" style="font-family: 'Calisto MT'; font-size: x-large; font-weight: bold; font-style: normal; font-variant: normal; color: #000000; text-decoration: blink; align-content:center ">
            <br/>
            Available Decorations in Our Company
            <br/>
            <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered " AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="decoration_type" HeaderText="decoration_type" SortExpression="decoration_type" />
                    <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                    <asp:TemplateField HeaderText="image" SortExpression="image">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" Height="116px" ImageUrl='<%# Eval("image") %>' Width="105px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Decoration]"></asp:SqlDataSource>
             <br />
             </div>
    </div>
        </asp:Panel>
</asp:Content>
