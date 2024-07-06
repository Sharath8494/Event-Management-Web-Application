<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Manage_venue.aspx.cs" Inherits="Eve_managent.Manage_venue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server" CssClass="panel-background" Height="900px" Width="1400px">
        <style>
        .panel-background{
            
            background-repeat:no-repeat;
           background-image:linear-gradient(rgba(0,0,0,0.05),rgba(0,0,0,0.05)),url('image/dec2.jpg');
            background-size:cover;
        }
    </style>

           <div class="row">
         <div class="col-6">
              <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" >
                  <center>
                      <br />
                      <br />
                      <br />
                  <div class="row">
                    <div class="col">
                         <b style="font-size: x-large"> Admin Manage</b>
                    </div>
                 </div>
<br />
                      <br />
                  <div class="row">
                    <div class="col">
                        <asp:Label ID="Label1" runat="server" Text="Venue Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                   </div>
                 </div>
<br />
                   <div class="row">
                    <div class="col">
                        <asp:Image ID="Image1"  runat="server" Height="100px" Width="100px" ImageUrl="~/App_Data/Database1.mdf" />
                        <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                   </div>
                 </div>
                      <br />

                  <div class="row">
                    <div class="col">
                        <asp:Label ID="Label2" runat="server" Text="Capacity"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                   </div>
                 </div>
                      <br />
                  <div class="row">
                    <div class="col">
                        <asp:Label ID="Label3" runat="server" Text="Venue cost"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                   </div>
                 </div>
<br />
                 

                  <div class="row">
            <div class="col">
                 <asp:Button ID="Button1" runat="server" class="btn btn-outline-success" Text="Insert" OnClick="Button1_Click"  /> <asp:Button ID="Button4" runat="server" class="btn btn-outline-warning" Text="Update" OnClick="Button4_Click" /> <asp:Button ID="Button2" runat="server" class="btn btn-outline-danger" Text="Delete" OnClick="Button2_Click"  />  <asp:Button ID="Button3" runat="server" class="btn btn-outline-light" Text="Clear" OnClick="Button3_Click"  />
        </div>
      
             </div>
                      </center>
                  <br />
                  <br />
               </asp:Panel>
             </div>

         <div class="col-6">
              <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" >
                  <br />
                  &nbsp;&nbsp;<asp:GridView ID="GridView1" class="table table-striped table-bordered " runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellSpacing="5" BorderStyle="Solid" BorderWidth="5px" GridLines="Vertical" Font-Bold="True">
                      <Columns>
                          <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                          <asp:BoundField DataField="capacity" HeaderText="capacity" SortExpression="capacity" />
                          <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                          <asp:TemplateField HeaderText="image" SortExpression="image">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Image ID="Image2" runat="server" Height="104px" ImageUrl='<%# Eval("image") %>' Width="125px" />
                              </ItemTemplate>
                          </asp:TemplateField>
                      </Columns>
                  </asp:GridView>
                 
                 <br />

                      
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Venue]"></asp:SqlDataSource>
                 
                 

                      
              </asp:Panel>
           </div>
     </div>
       </asp:Panel>    
</asp:Content>
