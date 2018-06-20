<%@ Page Title="" Language="C#" MasterPageFile="~/palace.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.pcls
{
    font-size:1.2em;
	line-height: 1.2em;
	color: #000;
	margin-bottom: 24px;
	margin: 14px 0px 24px 0px;
	font-family:Microsoft Sans Serif;
	font-style:oblique;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="detail">
<center>
<h2>Package Deatils</h2>

        <asp:Image ID="Image1" runat="server" style="height:300px;width:800px;" />
                  
    <br />
       <asp:Label ID="pacname" class="pcls" runat="server" Text=""></asp:Label> <br /><br />
        <asp:Label ID="pacprice" class="pcls" runat="server" Text=""></asp:Label><br /><br />
        <asp:Label ID="pacdetail" class="pcls" runat="server" Text=""></asp:Label> <br /><br />
  
    
</center>
</div>
</asp:Content>

