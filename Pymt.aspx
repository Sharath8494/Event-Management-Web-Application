<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pymt.aspx.cs" Inherits="Eve_managent.Pymt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Panel ID="Panel1" runat="server" CssClass="panel-background" Height="900px">
                  <style>
        .panel-background{
            
            background-repeat:no-repeat;
           background-image:linear-gradient(rgba(0,0,0,0.10),rgba(0,0,0,0.10)),url('image/pay2.jpg.png');
            background-size:cover;
        }
    </style>
    <center>
        <b style="color: #FFFFFF">Payment</b>
    

    <b style="color: #FFFFFF">Enter Credit Card Details</b>
        <br />
        <br />

        <div class="row">
            <div class="col-1">

            </div>
            <div class="col-4" style="color: #FFFFFF">
  <b>User ID</b>
               
            

            </div>
            <div class="col-4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
<div class="col-2">
    <asp:Button ID="Button3" runat="server"  Text="Click" class="btn btn-outline-warning" OnClick="Button3_Click" CssClass="btn-outline-warning" />
    </div>

        </div>
        <br />
        <br />

        <div class="row">
            <div class="col-1">

            </div>
            <div class="col-4">
 <b style="color: #FFFFFF">Event</b> 
            </div>
           
            <div class="col-4">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
            </div>
        <br />
        <br />

       <div class="row">
           <div class="col-1">

            </div>
            <div class="col-4">
 <b style="color: #FFFFFF">Enter Credit card Number</b> 
                </div>
           
           <div class="col-4">
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="16" TextMode="Number"></asp:TextBox>&nbsp;&nbsp;                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter proper Card number" ForeColor="Red" ValidationGroup="a">*</asp:RequiredFieldValidator><br/>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="*only numbers are allowed"  Display="Dynamic" ControlToValidate="TextBox3" Font-Size="Small" Font-Bold="True" ForeColor="Red" ValidationGroup="a" SetFocusOnError="True" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="*need 16 digit card number"  Display="Dynamic" ControlToValidate="TextBox3" Font-Size="Small" Font-Bold="True" ForeColor="Red" ValidationGroup="a" SetFocusOnError="True" ValidationExpression="^[0-9]{16}$"></asp:RegularExpressionValidator>

                 </div>
        </div>
        <br />
        <br />

         <%--<div class="row">
             <div class="col-6">

            </div>
            <div class="col-6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter proper Card number" ForeColor="Red" ValidationGroup="a">*</asp:RequiredFieldValidator>
           </div>
             </div>
        <br />
        <br />--%>

         <div class="row">
             <div class="col-1">

            </div>
            <div class="col-4">
 <b style="color: #FFFFFF">Enter CVV</b> 
               
                
                </div>
            
             <div class="col-4">
             <asp:TextBox ID="TextBox4" runat="server" MaxLength="3" TextMode="Number"></asp:TextBox><br/>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="*need 3 digit cvv"  Display="Dynamic" ControlToValidate="TextBox4" Font-Size="Small" Font-Bold="True" ForeColor="Red" ValidationGroup="a" SetFocusOnError="True" ValidationExpression="^[0-9]{3}$"></asp:RegularExpressionValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="*only numbers are allowed"  Display="Dynamic" ControlToValidate="TextBox4" Font-Size="Small" Font-Bold="True" ForeColor="Red" ValidationGroup="a" SetFocusOnError="True" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>

        </div>
             </div>
        <br />
        <br />
        

         <div class="row">
             <div class="col-1">

            </div>
            <div class="col-4">
 <b style="color: #FFFFFF">Enter Expire Date</b> 
            </div>
             
             <div class="col-4">
             <asp:TextBox ID="TextBox5" runat="server" placeholder="MM/YY"></asp:TextBox>
                 </div>
             <div class="col-2">
             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 </div>
        </div>
        <br />
        <br />
  <div class="row">
       <div class="col-1">

            </div>
            <div class="col-4">
                <b style="color: #FFFFFF">Total Amount</b> 
                </div>
      
      <div class="col-4">
      <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True"></asp:TextBox>
      </div>
      </div>
        <br />
        <br />

        <br />

         <div class="row">
             
            <div class="col">
                <asp:Button ID="Button2" runat="server" Text="Pay"  OnClick="Button2_Click" Class=" btn btn-success" ValidationGroup="a" Height="50px" Width="250px" />

            </div>
        </div>
                 <br />
                
                 <asp:Button ID="Button1" runat="server" Text="Back" BackColor="#FF9900" CssClass="btn-link" ForeColor="Red" OnClick="Button1_Click1" />
                    
        </center>
        </asp:Panel>
        </div>
    </form>
</body>
</html>
