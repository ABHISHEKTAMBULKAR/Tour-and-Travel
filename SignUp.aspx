<%@ Page Title="" Language="C#" MasterPageFile="~/palace.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="StyleSheet" href ="mainpr.css" />
    <style type="text/css">
        .style1
        {
            height: 640px;
            width: 99.857%;
            float: left;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="div1" style="background-color:black;" class="style1">
        
    

        <center>
            <br />
            <div id="dv2"style="height:600px;width:94% ;background-color:bisque">
                 <br />
                <h2 style="">REGISTRATION FORM</h2>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
             
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
             <asp:Label ID="Label1" Class="rs" runat="server" Text="Select State" ></asp:Label>
             <asp:DropDownList ID="ddlstate" class="dl" AutoPostBack="true" AppendDataBoundItems="true" 
                         runat="server"   Height="26px" Width="160px" 
                         onselectedindexchanged="ddlstate_SelectedIndexChanged" style =" margin-left:30px;"  ></asp:DropDownList>
                           </ContentTemplate>
                  <Triggers >
       <asp:AsyncPostBackTrigger ControlID ="ddlstate" EventName="SelectedIndexChanged" />
       </Triggers>
  
                 </asp:UpdatePanel><br /><br />

                  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                 <ContentTemplate>
            <asp:Label ID="Label6" Class="rs" runat="server" Text="Select City" ></asp:Label>
             <asp:DropDownList ID="ddlcity" class="dl" 
                   AutoPostBack="true" AppendDataBoundItems="true" 
                         runat="server" Height="26px" Width="160px" style =" margin-left:30px;"   ></asp:DropDownList></td></tr>
                     </ContentTemplate>
                  <Triggers >
       <asp:AsyncPostBackTrigger ControlID ="ddlcity" EventName="SelectedIndexChanged" />
       </Triggers>
  
                 </asp:UpdatePanel>
                  
                     <tr>
                <td><br /><br /><asp:Label ID="Label2" runat="server" class="rs" Text="Customer Name"></asp:Label></td>
                 
                <td>&nbsp<asp:TextBox ID="cusname" class="tb" runat="server" ></asp:TextBox></td> 
                <td><asp:RequiredFieldValidator ID="rq1" runat="server" style=" position:absolute;" ControlToValidate="cusname" ErrorMessage="Enter Name !" Display="Dynamic" SetFocusOnError="true" ></asp:RequiredFieldValidator></td>

                   
             </tr>
                         <tr>
                   
                   <td><br /><br />
                <asp:Label ID="Label3" runat="server" class="rs" Text="Address"></asp:Label></td>
                <td>&nbsp<asp:TextBox ID="cusaddr" class="tb" runat="server" style ="margin-left:60px;"></asp:TextBox> </td>
                 <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" style=" position:absolute;" ControlToValidate="cusaddr" ErrorMessage="Enter Name !" Display="Dynamic" SetFocusOnError="true" ></asp:RequiredFieldValidator></td>
               
               </tr><br /><br /><br />
                <tr><td>
                    
                 <asp:Label ID="Label4" runat="server" class="rs" Text="Mobile No."></asp:Label></td>
               <td> &nbsp<asp:TextBox ID="cusmo" class="tb" runat="server" style ="margin-left:30px;"></asp:TextBox></td>
                <td><asp:RangeValidator ID="rv1" runat="server" style=" position:absolute;" ControlToValidate="cusmo" MinimumValue="6500000000" MaximumValue="9999999999" ErrorMessage="Please Enter Correct Mob.no" SetFocusOnError="true" Display="Dynamic" Type="Double"></asp:RangeValidator></td>
                 
               </tr>
               <br /><br /><br />
                <tr><td>
                 <asp:Label ID="Label5" runat="server" class="rs" Text="Email"></asp:Label></td>
                <td>&nbsp<asp:TextBox ID="cusemail" class="tb" runat="server" style ="margin-left:70px;"></asp:TextBox></td> 
                                    <td><asp:RequiredFieldValidator ID="req8" runat="server" style =" position:absolute;" ControlToValidate="cusemail" ErrorMessage="Enter Email!" Display="Dynamic" SetFocusOnError="true" ></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="req9" runat="server" style=" position:absolute;" ControlToValidate="cusemail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Enter Correct Email(abc@gmail.com)!" SetFocusOnError="true" ></asp:RegularExpressionValidator>
    </td>

                 
                </tr><br /><br /><br />
                 <tr><td>
                 <asp:Label ID="Label7" runat="server" class="rs" Text="Password" ></asp:Label></td>
                <td>&nbsp<asp:TextBox ID="cuspass" class="tb" runat="server" TextMode="Password" style ="margin-left:38px;"></asp:TextBox></td>
                 <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style=" position:absolute;" ControlToValidate="cuspass" ErrorMessage="Please Enter Password!" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator></td>
                  
                </tr><br />
              
                  
<br /><br />
             <asp:Button ID="Button3" Class="but" runat="server" Text="SAVE" 
                     onclick="Button3_Click"  />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             
            <asp:Button ID="Button2" Class="but" runat="server" Text="CLEAR" /><br />
                <asp:Label ID="lblmess" runat="server" Visible="false"></asp:Label>
            </div>
       </center>
    </div>
 
</asp:Content>

