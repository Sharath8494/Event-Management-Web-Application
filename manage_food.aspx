<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="manage_food.aspx.cs" Inherits="Eve_managent.manage_food" %>
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
              <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Height="307px" >
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
                        <asp:Label ID="Label1" runat="server" Text="food type"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                   </div>
                 </div>
                  <br />
                  

                 

                  <div class="row">
            <div class="col">
                 <asp:Button ID="Button1" runat="server" class="btn btn-outline-success" Text="Insert" OnClick="Button1_Click" />  <asp:Button ID="Button2" runat="server" class="btn btn-outline-danger" Text="Delete" OnClick="Button2_Click"  />  <asp:Button ID="Button3" runat="server" class="btn btn-outline-light" Text="Clear" OnClick="Button3_Click" />
        </div>
      
             </div>
                  <br />
                  <br />
                  </center>
               </asp:Panel>
             </div>

         <div class="col-6">
              <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" >
                  <br />
                  <br />
             &nbsp;&nbsp;&nbsp;       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered " DataSourceID="SqlDataSource1" BorderStyle="Solid" BorderWidth="5" CellSpacing="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Font-Bold="True">
                          <Columns>
                      <asp:BoundField DataField="food_type" HeaderText="food_type" SortExpression="food_type" />
                      
                  </Columns>
                  </asp:GridView>
                  <br />
                  <br />
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [food]"></asp:SqlDataSource>
                 
                 

                      
              </asp:Panel>
           </div>
     </div>
             
       </asp:Panel>    
</asp:Content>
