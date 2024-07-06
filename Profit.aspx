<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Profit.aspx.cs" Inherits="Eve_managent.Profit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" CssClass="panel-background" Height="900px">
         <style>
        .panel-background{
            
            background-repeat:no-repeat;
           background-image:linear-gradient(rgba(0,0,0,0.20),rgba(0,0,0,0.20)),url('image/profit1.jfif');
            background-size:cover;
        }
    </style>
        <div class="row">
            <div class="col-8">
                <center>
                    <b style="color: #FFFFFF">PROFIT</b>
                </center>
           
        <br />
        <center>
        <div class="row">
            <div class="col-6">
                <b style="color: #FFFFFF"> Booking ID</b>
            </div>
            <div class="col-4">
                <asp:TextBox ID="TextBox1" runat="server">   </asp:TextBox>
            </div>
            <div class="col-2">
                <asp:Button ID="Button4" runat="server" class="btn btn-outline-primary" Text="Show" OnClick="Button4_Click"  />
            </div>
        </div>
            <br />
         <div class="row">
            <div class="col-6">
                <b style="color: #FFFFFF"> Booking Event</b>
            </div>
             <div class="col-4">
                 <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
             </div>
        </div>
            <br />
            <div class="row">
            <div class="col-6">
                <b style="color: #FFFFFF">Status</b>
                </div>
                <div class="col-4">
                    <asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox>
                    </div>
                  <div class="col-2">
                      <asp:Button ID="Button5" runat="server" class="btn btn-outline-warning" Text="Click" OnClick="Button5_Click" />
                      </div>
                </div>
             <br />
            <div class="row">
            <div class="col-6">
                <asp:Label ID="Label1" runat="server" Text="Refund Amount" ForeColor="White"></asp:Label>
                </div>
                 <div class="col-4">
                     <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                     </div>
                      </div>
            <br />

         <div class="row">
            <div class="col-6">
                <b style="color: #FFFFFF">Total Amount</b>
            </div>
             <div class="col-4">
                  <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
             </div>
             <div class="col-2">
                  <asp:Button ID="Button1" runat="server" Text="Expense" OnClick="Button1_Click"  />
             </div>
        </div>
            <br />

         <div class="row">
             <div class="col-6">
                 <asp:Label ID="Label2" runat="server" Text="Expense" ForeColor="White"></asp:Label>
             </div>
            <div class="col-4">
                
               <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
            </div>
             <div class="col-2">
                  <asp:Button ID="Button2" runat="server" class="btn btn-outline-info" Text="Profit" OnClick="Button2_Click"  />
             </div>
        </div>
            <br />

         <div class="row">
            <div class="col-6">
                <b style="color: #FFFFFF">Profit</b>
                
                
            </div>
             <div class="col-4">
                  <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
             </div>
        </div>
        <br />
            
            <br />           
         <div class="row">
            <div class="col">
                <asp:Button ID="Button3" runat="server" Text="Save" class="btn btn-outline-success" OnClick="Button3_Click" />
            </div>
        </div>
            <br />
</center>
                </div>
           <br />
                  <asp:GridView ID="GridView1" class="table table-striped table-bordered " runat="server" BorderStyle="Solid" BorderWidth="5px" CellSpacing="3" Font-Bold="True" BackColor="White"></asp:GridView>
                 
            </div>
    </asp:Panel>
</asp:Content>
