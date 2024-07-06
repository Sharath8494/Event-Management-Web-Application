<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Refund.aspx.cs" Inherits="Eve_managent.Refund" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="bootstrap/css.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Panel ID="Panel1" runat="server" CssClass="panel-background" Height="900px">
                 <style>
        .panel-background{
            
            background-repeat:no-repeat;
           background-image:linear-gradient(rgba(0,0,0,0.20),rgba(0,0,0,0.20)),url('image/Picture6.jpg');

            background-size:cover;
        }
    </style>
    <center>
        <b>Refund</b>
    </center>
<hr />
<center>
    <br />
    <br />
   
        <div class="row">
            <div class="col-4">
                <b> User ID</b>
                </div>
            <div class="col-5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                
            </div>
        </div>
                 <br />
                 
                     <div class="col-3">
                       <asp:Button ID="Button3" runat="server" Text="Show" OnClick="Button3_Click"  />
                     </div>
                 
    <br />
        <div class="row">
            <div class="col-4">
                 <br /><b>Email ID </b>
        </div>
             <div class="col-5">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>
            </div>
   
       <div class="row">
            <div class="col-4">
                <b>Enter Credit card Number</b>
                </div>
           <div class="col-5">
           <asp:TextBox ID="TextBox3" runat="server" MaxLength="16"></asp:TextBox>
        </div>
           </div>
    <br />

         <div class="row">
            <div class="col-4">
                <b>Cvv</b>
        </div>
            <div class="col-5"> 
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </div>
             </div>
           

         <div class="row">
            <div class="col-4">
<b>Enter Expire Date</b>
                </div>
              <div class="col-5">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </div>
        </div>
    <br />


  <div class="row">
            <div class="col">
               <asp:Button ID="Button2" runat="server"   Text="Refund" OnClick="Button2_Click" />
                </div>
      </div>
                 <br />
               
                 <asp:Button ID="Button1" runat="server" Text="Back" BackColor="#FF9900"  ForeColor="Red" OnClick="Button1_Click" />
                     </center>
    
        </asp:Panel>
        </div>
        
    </form>
</body>
</html>
