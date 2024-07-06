<%@ Page Title="" Language="C#" MasterPageFile="~/Custemer.Master" AutoEventWireup="true" CodeBehind="book2.aspx.cs" Inherits="Eve_managent.book2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <asp:Panel ID="Panel1" runat="server" CssClass="panel-background" Height="900px">
         <center>
         <style>
        .panel-background{
            
            background-repeat:no-repeat;
           background-image:linear-gradient(rgba(0,0,0,0.20),rgba(0,0,0,0.20)),url('image/book2.jpg');
            background-size:cover;
        }
    </style>
    <div class="row">
    <div class="col-6">
       
          <div class="row">
          <div class="col">
        <center>
            <b style="color: #FFFFFF">Booking Event</b>
        </center>
              </div>
              </div>
          <div class="row">
          <div class="col-4">
             <b style="color: #FFFFFF">Customer ID:</b>
              </div>
              <div class="col-4">
                <asp:TextBox ID="TextBox3" Class="form-control " runat="server" ReadOnly="True"></asp:TextBox>
              </div>
                 </div>
            <br />
        <div class="row">
            <div class="col-4">
                <b style="color: #FFFFFF">Email ID</b>
            </div>
            <div class="col-4">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </div>
        </div>
        <br />
          <div class="row">
          <div class="col-4">
             <b style="color: #FFFFFF">Event</b>
              </div>
              <div class="col-4">
                  <asp:DropDownList ID="DropDownList1" runat="server"   Width="140px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"  >
                 
                  <asp:ListItem Text="--select--"></asp:ListItem> 
                 
              </asp:DropDownList>
              </div>
              <div class="col-4">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="DropDownList1" InitialValue="--select--" SetFocusOnError="True" Font-Size="Small" ValidationGroup="b" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
              </div>
       
            <br />
        <div class="row">
            <div class="col">
                <asp:Image ID="Image2" runat="server" Height="131px" Width="185px" />
            </div>
        </div>
        <br />
          <div class="row">
          <div class="col-4">
            <b style="color: #FFFFFF">Venue</b> 
              </div>
              <div class="col-4">
                  <asp:DropDownList ID="DropDownList2" runat="server"  Width="128px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" > <asp:ListItem Text="--select--"></asp:ListItem>
                 </asp:DropDownList>
              </div>
              <div class="col-2">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="DropDownList2" InitialValue="--select--" SetFocusOnError="True" Font-Size="Small" ValidationGroup="b" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;&nbsp;              <asp:Button ID="Button5" runat="server" class="btn btn-outline-primary" Text="Show" ValidationGroup="b" OnClick="Button5_Click" />

  </div>
              

               
              </div>
             

       
              <br />
              
              <asp:Panel ID="Panel2" runat="server" Visible="False">
              <center>
              <asp:Image ID="Image1" runat="server" Height="117px" Width="175px" />
                  </center>
              <br />
                  <br />
                 <div class="row">
          <div class="col-4">
              <b style="color: #FFFFFF">Capacity</b> 
              </div>
                     <div class="col-4">
                         <asp:TextBox ID="TextBox2" runat="server" Height="25px" ></asp:TextBox>
                     </div>
              </div>
              <br />
        <div class="row">
          <div class="col-4">
              &nbsp&nbsp<b style="color: #FFFFFF">Cost</b> 
              </div>
            <div class="col-4">
                <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
            </div>
              </div>
              <br />
           
              
             
              
              <br />
      
          <div class="row">
          <div class="col-4">
              <b style="color: #FFFFFF">Date</b>
          </div>
              <div class="col-4">
                  <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
              </div>
              
            
          
          <div class="col-4">
              
              <asp:Button ID="Button1" runat="server" Text="Check Date" OnClick="Button1_Click"  />&nbsp&nbsp
                  
              </div>
             </div>
</asp:Panel>
         </div>
   
    <div class="col-6">
         <asp:Panel ID="Panel3" runat="server">
             <center>
                  <div class="row">
          <div class="col-4">  
              <b style="color: #FFFFFF">Decoration</b> 
              </div>
                      <div class="col-4">
                          <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" >
                  <asp:ListItem>---Select---</asp:ListItem>
              </asp:DropDownList>
                      </div>
                      <div class="col-4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="DropDownList3" InitialValue="--Select--" SetFocusOnError="True" Font-Size="Small" ValidationGroup="a" ForeColor="Red"></asp:RequiredFieldValidator>

</div>
                      </div>
              <br />

                 <center>
              <asp:Image ID="Image4" runat="server" Height="111px" Width="136px" />
                     </center>
             <div class="row">
                 <div class="col-4">
                     <b style="color: #FFFFFF">Cost</b>
                 </div>

<div class="col-4">
<asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
</div>
             </div>
             <br />
               <br />

              <div class="row">
          <div class="col-4">  
              <b style="color: #FFFFFF">Food</b> 
              </div>
                  <div class="col-4">
                      <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                  <asp:ListItem>---Select---</asp:ListItem>
              </asp:DropDownList>
                      </div>
                  <div class="col-4">

                  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="DropDownList4" InitialValue="--Select--" SetFocusOnError="True" Font-Size="Small" ValidationGroup="a" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
                  </div>
                      <br />
              <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" ForeColor="White" >
                  <asp:ListItem>normal</asp:ListItem>
                  <asp:ListItem>standard</asp:ListItem>
                  <asp:ListItem>Royal</asp:ListItem>
              </asp:RadioButtonList>
              <br />
             <div class="row">
                 <div class="col-4">
<b style="color: #FFFFFF">No of People</b>
                 </div>
                 <div class="col-4">
                     <asp:TextBox ID="TextBox6" runat="server" TextMode="Number"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter the number of Guest" ControlToValidate="TextBox6" ValidationGroup="A" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
                 <div class="col-4">
              <asp:Label ID="Label14"  runat="server" ForeColor="Red" Text="Label"></asp:Label>

                 </div>
             </div>
               
              <br />
              <asp:Button ID="Button7" runat="server" Text="Calculate" OnClick="Button7_Click" ValidationGroup="A"  />
              <br />
             <div class="row">
             <div class="col-4">
              <b style="color: #FFFFFF">Food Amt for Per Person</b>
                 </div>
             <div class="col-4">
             <asp:Label ID="Label11" runat="server" Text="." ForeColor="White"></asp:Label>
                 </div>
                 </div>
              <br />
              <div class="row">
             <div class="col-4">
              <b style="color: #FFFFFF">Food Amount</b>
                 </div>
                   <div class="col-4">
                  <asp:Label ID="Label12" runat="server" Text="." ForeColor="White"></asp:Label>
             </div>
                  </div>
                       <br />
              <asp:Button ID="Button6" runat="server" Text="Total" OnClick="Button6_Click"  />
          
                    
                     <br />
                   <div class="row">
                        <div class="col-4">
                            <b style="color: #FFFFFF">Total Amount</b>
                            
                            </div>
                       &nbsp;<div class="col-4">
                           <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                       </div>
                   </div>
                   <br />
                   <asp:Label ID="Label13" runat="server" Text="."></asp:Label>
                   <div class="row">
          <div class="col-4">
              <asp:Button ID="Button2" runat="server" Text="Book" OnClick="Button2_Click"  />
              </div>
                       <div class="col-4">
                 <asp:Button ID="Button4" runat="server" Text="Clear" OnClick="Button4_Click" />
              </div>
                       </div>
                       
                     <br /> 
                 </center>
        </asp:Panel>

        </div>
    </div>
             </center>
   </asp:Panel>

</asp:Content>
