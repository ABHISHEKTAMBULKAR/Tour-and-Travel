<%@ Page Title="" Language="C#" MasterPageFile="~/palace.master" AutoEventWireup="true" CodeFile="ticketbook.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
.

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main">
    <div id="lgv" style="height:100%;width:100%; float:left; opacity:0.7; background-image: url('images/124.jpg'); ">
    <h3>Welcome:<asp:Label ID="Label12" runat="server" Text=""></asp:Label></h3>
    <center>
    <h3 style=" margin-top:32px;">Ticket Booking</h3>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
             
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
                <tr><td><asp:Label ID="Label1" Class="lb" runat="server" Text="Select State" ></asp:Label></td>
            <td> <asp:DropDownList ID="ddl1" class="dl" AutoPostBack="true" AppendDataBoundItems="true" 
                         runat="server" Height="26px" Width="200px" 
                    style="margin-left: 59px" 
                    onselectedindexchanged="ddl1_SelectedIndexChanged"   ></asp:DropDownList></td>
                     </ContentTemplate>
                  <Triggers >
       <asp:AsyncPostBackTrigger ControlID ="ddl1" />
       </Triggers>
  
                 </asp:UpdatePanel>
             <br />
    
           <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                 <ContentTemplate>
                <td><asp:Label ID="Label4" Class="lb" runat="server" Text="Select City" ></asp:Label></td>
           <td><asp:DropDownList ID="ddl2" class="dl" 
                   AutoPostBack="true" AppendDataBoundItems="true" 
                         runat="server" Height="26px" Width="200px"  style="margin-left: 65px"  ></asp:DropDownList></td>
                     </ContentTemplate>
                  <Triggers >
       <asp:AsyncPostBackTrigger ControlID ="ddl2" />
       </Triggers>
  
                 </asp:UpdatePanel>
             <br />
             <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                 <ContentTemplate>
  <td> <asp:Label ID="Label5" class = "lb" runat="server" Text=" Vehical Catagory" ></asp:Label></td>
   <td><asp:DropDownList ID="ddl3"  
            runat="server" Height="26px" Width="200px"  style="margin-left: 15px" ></asp:DropDownList></td>
                 </ContentTemplate>
                  <Triggers >
       <asp:AsyncPostBackTrigger ControlID ="ddl3" />
       </Triggers>
  
                 </asp:UpdatePanel>
<br />
<asp:UpdatePanel ID="UpdatePanel4" runat="server">
                 <ContentTemplate>
  <tr><td<asp:Label ID="Label8" class = "lb" runat="server" Text=" Vehical " ></asp:Label></td>
      <td><asp:DropDownList ID="ddl4"  runat="server" Height="26px" Width="200px"  style="margin-left: 90px" ></asp:DropDownList> <br /><br /></td></tr>
        </ContentTemplate>

                  <Triggers >
       <asp:AsyncPostBackTrigger ControlID ="ddl4" />
       </Triggers>
       </asp:UpdatePanel>
  <tr> <td> <asp:Label ID="Label6" class = "lb"  runat="server" Text=" Package Name" ></asp:Label>
   </td>
   <td><asp:DropDownList ID="ddl5" runat="server" Height="26px" Width="200px"  style="margin-left: 35px"></asp:DropDownList>
<br /><br /><br /></td></tr>
 <tr> <td> <asp:Label ID="Label9" class = "lb" runat="server" Text="Tour City"  ></asp:Label>
    </td>
   <td>  <asp:DropDownList 
            ID="ddl6" runat="server" Height="26px" Width="200px" 
            style="margin-left: 76px">
             <asp:ListItem>Select please</asp:ListItem>
            <asp:ListItem>ujjain</asp:ListItem>
            <asp:ListItem>Indore</asp:ListItem>
            <asp:ListItem>agra</asp:ListItem>
            <asp:ListItem>Panchmari</asp:ListItem>
            <asp:ListItem>sirdi</asp:ListItem>
            <asp:ListItem>badrinath</asp:ListItem>
            <asp:ListItem>jaipur</asp:ListItem>
        </asp:DropDownList>
<br /><br /></td></tr><br />

    <tr> <td><asp:Label ID="Label3" class = "lb" runat="server" Text="Source" ></asp:Label></td>
      
    <td> <asp:TextBox ID="txtsource" runat="server" Height="26px" Width="200px" 
            style="margin-left: 97px" ></asp:TextBox></td>
    <br /><br /></tr><br />
    <tr><td><asp:Label ID="Label7" class = "lb" runat="server" Text="Destination" ></asp:Label>
  </td>
    <td> 
        <asp:TextBox ID="Txtdest" runat="server"  style="margin-left: 65px" 
            Height="26px" Width="200px"></asp:TextBox>
    <br /><br /></td></tr><br />
    <tr><td> <asp:Label ID="Label10" class = "lb" runat="server" Text="Booking Date" ></asp:Label>
       <td>
    <td> 
        <asp:TextBox ID="Txtdate" runat="server"  style="margin-left: 52px" 
            Height="26px" Width="200px"></asp:TextBox>
    <br /><br /></td></tr><br />
   <tr> <td>  
        <asp:Button ID="Button1" class ="clsbtn" runat="server" Text="Ticket Book" 
            onclick="Button1_Click" /></td>
    
    <td> <asp:Button ID="Button2" runat="server" Text="Reset" Class="clsbtn" 
            onclick="Button2_Click" />
 </td>
     <td> <asp:Button ID="Button3" runat="server" Text="Cancel Ticket" Class="clsbtn" 
            onclick="Button3_Click" />
 </td>
    </tr>
    <tr><td>
        <asp:Label ID="Label11" class ="lb" runat="server" Text=""></asp:Label>
    </td></tr>
 </center>
   </div>
   </div>

</asp:Content>

