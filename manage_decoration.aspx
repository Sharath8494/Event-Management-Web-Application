<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="manage_decoration.aspx.cs" Inherits="Eve_managent.manage_decoration" %>
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
        <center>
           <div class="row">
         <div class="col-6">
              <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" >
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
                        <asp:Label ID="Label1" runat="server" Text="Decoration Type"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                   </div>
                 </div>
                  <br />
                 
                   <div class="row">
                    <div class="col">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp<asp:Image ID="Image1" runat="server" Height="100px" Width="100px" /> 
                        <br />
                        
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                   </div>
                 </div>
                  <br />
                  
                  <div class="row">
                    <div class="col">
                        <asp:Label ID="Label2" runat="server" Text="Cost"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                   </div>
                 </div>

                 <br />
                  

                  <div class="row">
            <div class="col">
                 <asp:Button ID="Button1" runat="server" class="btn btn-outline-success" Text="Insert" OnClick="Button1_Click" Width="67px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp <asp:Button ID="Button5" runat="server" class="btn btn-outline-warning" Text="Update" OnClick="Button5_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp <asp:Button ID="Button2" runat="server" class="btn btn-outline-danger" Text="Delete" OnClick="Button2_Click" Width="67px"  /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp <asp:Button ID="Button3" runat="server" class="btn btn-outline-light" Text="Clear" OnClick="Button3_Click" Width="67px" />
        </div>
      
             </div>
                  <br />
                  <br />
               </asp:Panel>
             </div>
         <div class="col-6">
              <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" >
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered " DataSourceID="SqlDataSource1" BorderStyle="Inset" BorderWidth="5px" CellSpacing="5" GridLines="None" FooterStyle-Wrap="True" Font-Bold="True">
                      <Columns>
                          <asp:BoundField DataField="decoration_type" HeaderText="decoration_type" SortExpression="decoration_type" />
                          <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                          <asp:TemplateField HeaderText="image" SortExpression="image">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Image ID="Image2" runat="server" Height="130px" ImageUrl='<%# Eval("image") %>' />
                              </ItemTemplate>
                          </asp:TemplateField>
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Decoration]"></asp:SqlDataSource>
                 
                 

                      
              </asp:Panel>
           </div>
     </div>

        </center>
       </asp:Panel>   
</asp:Content>
