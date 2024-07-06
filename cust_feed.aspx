<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cust_feed.aspx.cs" Inherits="Eve_managent.cust_feed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css.css" rel="stylesheet" />
    <link href="feedback.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" CssClass="panel-background" Height="900px">
            <style>
        .panel-background{
            
            background-repeat:no-repeat;
           background-image:linear-gradient(rgba(0,0,0,0.20),rgba(0,0,0,0.20)),url('image/feed3.png');
            background-size:cover;
        }
    </style>
            <br />
        <br />

        <br />

        <br />
              <div class="row">
            <div class="col">
                <asp:Panel ID="Panel3" runat="server">
                    &nbsp
                    &nbsp

                  <div class="row">
                <div class="col">
            <center >
                <b style="color: #FFFFFF">FEEDBACK</b>
                <br />
                <br />
            </center>
                    </div>
                      </div>
                   
                        <center>
                     <div class="row">
                <div class="col">
                    <b style="color: #FFFFFF">Email_ID</b> &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="bg-gradient"></asp:TextBox>
                    </div>
                         </div>
        <div class="row">
                <div class="col">
       
               <b style="color: #FFFFFF">Please Give The Feedback</b>
                    <asp:RadioButtonList ID="ratinglist" runat="server" ForeColor="White" Height="89px" RepeatDirection="Horizontal" Width="385px">
                        <asp:ListItem Text="&nbsp;" Value="*"></asp:ListItem>
                        <asp:ListItem Text="&nbsp;" Value="**"></asp:ListItem>
                        <asp:ListItem Text="&nbsp;" Value="***"></asp:ListItem>
                        <asp:ListItem Text="&nbsp;" Value="****"></asp:ListItem>
                        <asp:ListItem Text="&nbsp;" Value="*****"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Bad"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="NotBad"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="Good"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="VeryGood"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" ForeColor="Black" Text="Exelent"></asp:Label>
                    <br />
                  
                    </div>
            </div>
                            
                    
                
                     
         <br/>
            <%--<div class="col-6">
                <asp:Panel ID="Panel2" runat="server">
                    <br />
                    <br />
           <center>        --%>             
        <div class="row">
                <div class="col">

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b style="color: #FFFFFF">Review</b>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                 <asp:Label ID="Label4" runat="server" Text="Label" BackColor="Red"></asp:Label>

               </div>
            </div>
           <br />
            <br />
      
            <div class="row">
                <div class="col">
                    <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" />&nbsp&nbsp&nbsp<asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" />
                </div>
            </div>
                 </center> 
                    <br />
                    <br />
             </asp:Panel>
         
        </div>
                  </div>
           </asp:Panel>

       <%-- </div>--%>
        

    </form>
</body>
</html>
