<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="citysetup.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            margin-left: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="left_div" style="height:90%;float:left;margin-top:5px; width:50%;border-right:3px solid #000000">

<center>
    
    <h3>CITY SETUP</h3>
    <br/>
    <asp:Label ID="Label2" runat="server" Text="State" class="cls1"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:DropDownList ID="ddl1" runat="server" CssClass="style1" Height="22px" 
        Width="112px"></asp:DropDownList><br /><br />
        &nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="lblcity" runat="server" Text="City_id" class="cls1"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:TextBox ID="txtid" runat="server"  style="margin-left: 33px" Width="143px"></asp:TextBox><br/><br/>
         &nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="Label1" runat="server" Text="City_name" class="cls1"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:TextBox ID="txtname" runat="server" style="margin-left: 7px" Width="143px"></asp:TextBox>
     <br/><br/>
    
    
    <asp:Button ID="Button1" runat="server" Text="SAVE" Class="clsbtn" OnClick="Button1_Click" />
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Button ID="Button2" runat="server" Text="CLEAR" Class="clsbtn" OnClick="Button2_Click" />
   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Button ID="Button3" runat="server" Text="DELETE" Class="clsbtn" OnClick="Button3_Click" />
   <br />
   <br />
  <asp:Label ID="sahu" runat="server"  style="height:20px; width:auto; font-style:oblique; color:Red;"  ></asp:Label>
 
    </center>
   
    </div>
  
             <div id="right_div" style="float:left;height:90%;float:left; width:48%">
                 <center>
                 <h3>City List</h3>
                     <br /><br />
                     <asp:GridView ID="gv1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
        ForeColor="Black" Height="80px" style="margin-left: 0px" Width="400px" >
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

