<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="State.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="left_div" style="height:90%;float:left;margin-top:5px; width:50%;border-right:3px solid #000000">

<center>
    <h3>STATE SETUP</h3>      
    <br/>
        &nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="lblstate" runat="server" Text="State_id" class="cls1"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:TextBox ID="txtid" runat="server" style="margin-left: 33px" Width="143px"></asp:TextBox><br/><br/><br/>
         &nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="Label1" runat="server" Text="State_name" class="cls1"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:TextBox ID="txtname" runat="server" style="margin-left: 7px" Width="143px"></asp:TextBox>
     <br/><br/><br/>
    <asp:Button ID="Button1" runat="server" Text="SAVE" Class="clsbtn" 
        onclick="Button1_Click" />
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Button ID="Button2" runat="server" Text="CLEAR" Class="clsbtn" 
        onclick="Button2_Click"  />
   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Button ID="Button3" runat="server" Text="DELETE" Class="clsbtn" 
        onclick="Button3_Click"  />
  <br />
  <br />
  <asp:Label ID="sahu" runat="server"  style="height:20px; width:auto; font-style:oblique; color:Red;"  ></asp:Label>
    </center>
   
    </div>
    
    <div id="rgb" style="height:98%;width:48%;margin-top:4px;float:left">
                
                <center>
                 <h3>State List</h3>
                     <br />
                   <asp:GridView ID="gv1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
        ForeColor="Black" Height="80px" style="margin-left: 0px" Width="350px" >
     <FooterStyle BackColor="#CCCCCC" />
     <HeaderStyle BackColor="006699" Font-Bold="True" ForeColor="White" />
     <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
     <RowStyle BackColor="White" />
     <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
     <SortedAscendingCellStyle BackColor="#F1F1F1" />
     <SortedAscendingHeaderStyle BackColor="#808080" />
     <SortedDescendingCellStyle BackColor="#CAC9C9" />
     <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

  </center>
  </div>
         

   
</asp:Content>

