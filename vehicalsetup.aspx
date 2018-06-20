<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="vehicalsetup.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            margin-left: 27px;
        }
        .style2
        {
            margin-left: 84px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="ful" runat="server" style=" height:100%; width:100%;">

<div id="left" runat="server" style=" height:99%; width:48.5%; float:left; border-right:solid 1px #000000;">
<center style="margin-left: 40px">
<h3>Vehical Setup</h3>
Select Category<asp:DropDownList ID="ddl1" runat="server" CssClass="style1" 
        Height="28px" Width="160px" ></asp:DropDownList>
<br />
<br />
Vehical Id<asp:TextBox ID="txtid" runat="server" style="margin-left: 61px" ></asp:TextBox>
<br />
<br />
Vehical Name<asp:TextBox ID="txtname" runat="server" style="margin-left: 36px" ></asp:TextBox>
<br />
<br />
Vehical Number <asp:TextBox ID="txtno" runat="server" style="margin-left: 18px"></asp:TextBox>
<br/>
<br />
Time<asp:TextBox ID="txttime" runat="server" 
        style="margin-left: 93px" ></asp:TextBox>
<br />
<br />
Source<asp:TextBox ID="txtsource" runat="server" CssClass="style2" 
        ontextchanged="txtsource_TextChanged"></asp:TextBox>
<br />
<br />
Destination<asp:TextBox ID="txtdesti" runat="server" style="margin-left: 50px"></asp:TextBox>
<br />
<br />
<br />
<asp:Button ID="btn1" runat="server" Text="Save" onclick="btn1_Click" />&nbsp&nbsp
<asp:Button ID="btn2" runat="server" Text="Delete" onclick="btn2_Click" />&nbsp&nbsp
<asp:Button ID="btn3" runat="server" Text="Cancel" onclick="btn3_Click" />
<br />
  <asp:Label ID="sahu" runat="server"  style="height:20px; width:auto; font-style:oblique; color:Red;"  ></asp:Label>
 
</center>

</div>

<div id="right" runat="server" style=" height:99.5%; width:49%; float:left; " >
<center>
<h3>Vehical List</h3>
<br />
<asp:GridView ID="gvd1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" 
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

</div>
</asp:Content>

