<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Eve_managent.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" CssClass="panel-background" Height="900px">
         <style>
        .panel-background{
            
            background-repeat:no-repeat;
           background-image:linear-gradient(rgba(0,0,0,0.20),rgba(0,0,0,0.20)),url('img/ct1.jpg');
            background-size:cover;
        }
    </style>
       <div style="font-family:Arial;">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />


           <center> 
            <fieldset style="width:350px; background-color:pink">
                <legend>Contact Us</legend>
                <table>
                    <tr>
                        <td>
                            <b>Name</b>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" width="200px" runat="server"></asp:TextBox>
                        </td>
                        <td>
                           
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="Textbox1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                                </td>


                    </tr>
                    <tr>
                        <td>
                            <b>Email</b>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" width="200px" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is reqiured" ControlToValidate="Textbox2" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Plase enter a valid email" ControlToValidate="Textbox2" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <b>Subject</b>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" width="200px" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject is required" ControlToValidate="Textbox3" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <b>Comments</b>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" width="200px" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Comment is required" ControlToValidate="Textbox4" Text="*"  ForeColor="Red" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText='"please fix the following errors ' />

                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  />
 

                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.html">Back To Home</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </fieldset>
            </center>      
        </div>
            </asp:Panel>
    </form>
</body>
</html>
