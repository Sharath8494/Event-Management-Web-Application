<%@ Page Title="" Language="C#" MasterPageFile="~/Custemer.Master" AutoEventWireup="true" CodeBehind="EditPro.aspx.cs" Inherits="Eve_managent.EditPro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="panel-background" Height="900px" Width="1400px">
         <style>
        .panel-background{
            
            background-repeat:no-repeat;
           background-image:linear-gradient(rgba(0,0,0,0.10),rgba(0,0,0,0.10)),url('image/edit1.jpg');
            background-size:cover;
        }
    </style>
        <br />
        <br />
        <br />

        <br />

        <br />

        <br />

        <br />
<center>
    <div class="row">
    <div class="col">
    <center>
        <asp:Image id="profilePicture" runat="server" class="rounded-circle" width="90" height="90" ImageUrl="~/Images/happy.png" BorderStyle="Dashed"></asp:Image>
       
        <br />
        <b>My Profile</b>
    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</center>
        <br />
        <br />

        <asp:FileUpload ID="profilePictureUpload" runat="server" />
    </div>
    </div>
    <hr />
    <div class="row">
    <div class="col-6">
    &nbsp&nbsp
          <b>Name</b><asp:TextBox ID="TextBox1"
            runat="server"></asp:TextBox> 
            </div>
           
         <div class="col-6">
             <b>My DOB</b>  <asp:TextBox ID="TextBox2"
            runat="server"></asp:TextBox> &nbsp;</div>
        </div>
        <br/>
       
         <div class="row">
         <div class="col-6">
            &nbsp <b>Contact</b> <asp:TextBox ID="TextBox3"
            runat="server"></asp:TextBox>
            </div>
              <div class="col-6">
             <b>Address</b>  <asp:TextBox ID="TextBox4"
            runat="server"></asp:TextBox>
            </div>
             </div>
        <br />
       <div class="row">
         <div class="col-6">
             &nbsp<b>Email_ID</b>  <asp:TextBox ID="TextBox5"
            runat="server"></asp:TextBox>
            </div>
              <div class="col-6">
           <b>Password</b>  <asp:TextBox ID="TextBox6"
            runat="server" TextMode="Password"></asp:TextBox>
            </div>
             </div>
        <br />
         <div class="row">
    <div class="col">
        <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click" class="btn btn-outline-success"  Height="50px" Width="250px" Text="UPDATE" />
        </div>
        </div>
        <br />




           

    </center>
    </asp:Panel>

</asp:Content>
