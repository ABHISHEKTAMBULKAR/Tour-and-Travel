<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="package.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div id ="left" style ="height:100%; width:49%; float:left; border:solid 1px;"><br />
  <center>
 <h3> PACKAGE SETUP</h3><br /><br />
 Package ID:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="Txtid" runat="server"></asp:TextBox><br /><br />
 Package Name:&nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="Txtname" runat="server"></asp:TextBox><br /><br />
 Description:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="Txtdecr" runat="server" TextMode ="MultiLine"></asp:TextBox><br /><br />
 Package Price:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="Txtprice" runat="server"></asp:TextBox><br /><br />
 Vehical:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="Txtvehical" runat="server"></asp:TextBox><br />
 <br />
 Select photo:<asp:FileUpload ID="filedata" runat="server" />   
 <br />
 <br />
      <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      <asp:Button ID="Button2" runat="server" Text="Clear" onclick="Button2_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      <asp:Button ID="Button3" runat="server" Text="Delete" onclick="Button3_Click" />
<br />
  <asp:Label ID="sahu" runat="server"  style="height:20px; width:auto; font-style:oblique; color:Red;"  ></asp:Label>

</center>
 </div>
  <div id ="right" style ="height:100%; width:50%; float:left; overflow:auto "><br />
  <center>
  <h3>PACKAGE LIST</h3>
  
      <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" 
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

