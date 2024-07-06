<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="Eve_managent.Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            margin-top: 0px;
        }
    </style>
</head>
<body style="margin-top: 0px">
   
    <form id="form1" runat="server">
          <div style="margin-top: 0px";>
    <center >
            <asp:Panel ID="Panel1" runat="server" Height="565px" style="margin-left: 0px; margin-top: 119px; text-align: center; color: #FFFFFF;" Width="935px" BackImageUrl="~/Image/SASS.jpg" Font-Size="14pt">
                <br />
                <asp:Label ID="Label1" runat="server" Text="About Us" style="font-size: xx-large; font-weight: 700; color: #FFFFFF;"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" style="font-size: xx-large; font-family: sans-serif; color: #FFFFFF;" Text="ABOUT DREAMS EVENTS"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" style="font-size: x-large; font-weight: 700; color: #FFFFFF; background-color: #000000" Text="Welcome to our event management company! We specialize in organizing and planning a wide range of events including weddings, Birthdays. Our dedicated team of professionals strives to make every event a memorable and successful one."></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" style="font-size: xx-large; font-weight: 700; color: #FFFFFF; background-color: #333333" Text="We Make Events To Remember"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" style="font-weight: 700; color: #FFFFFF; font-size: x-large; background-color: #000000" Text="We are here to create memorable and successful events that exceed our client’s expectations, nurture relationships and delight the senses – one client, one event, one experience at a time."></asp:Label>
                <br />
                <br />
                <br />
                Terms &amp; Conditions
                <br />
                &nbsp;<br /> If the Event is cancled after the Payment We will charge 25% of the Event Total Amount<br /> If the Total Amount Of the Event cannot received within the 3days Of the Event date we cannot Organize the Event<br />
            </asp:Panel>
</center>
        </div>
         
    </form>
       
</body>
</html>
