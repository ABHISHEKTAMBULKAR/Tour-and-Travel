<%@ Page Title="" Language="C#" MasterPageFile="~/palace.master" AutoEventWireup="true" CodeFile="detailplace.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
#ddldiv
{
 height:42px; width:99.88%;   
}
.dcls
{
    height:30px; width:200px; margin-top:8px; margin-left:100px; float:left;
     font-size:medium; font-style:oblique; font-family:@MS Gothic;
}
#place
{
 width:99.8%; height:610px; border-top:solid 1px #000000;    
}
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
   
    <div id="ddldiv">

<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    

<asp:DropDownList ID="ddl1" class="dcls" runat="server"  
        AppendDataBoundItems="true" AutoPostBack="true" onselectedindexchanged="ddl1_SelectedIndexChanged"
        ></asp:DropDownList>
   </ContentTemplate>
   <Triggers>
  <asp:AsyncPostBackTrigger ControlID="ddl1" EventName="SelectedIndexChanged"  />
 </Triggers>

   </asp:UpdatePanel>

   <asp:UpdatePanel ID="UpdatePanel2" runat="server">
   <ContentTemplate>
<asp:DropDownList ID="ddl2" class="dcls" runat="server" AppendDataBoundItems="true" 
           AutoPostBack="true" onselectedindexchanged="ddl2_SelectedIndexChanged" ></asp:DropDownList>
</ContentTemplate>
<Triggers>
  <asp:AsyncPostBackTrigger ControlID="ddl2" EventName="SelectedIndexChanged" />
 </Triggers>
 </asp:UpdatePanel>

 <asp:UpdatePanel ID="UpdatePanel3" runat="server">
<ContentTemplate>

<asp:DropDownList ID="ddl3" class="dcls" runat="server"  
        AppendDataBoundItems="true" AutoPostBack="true" onselectedindexchanged="ddl3_SelectedIndexChanged" 
  ></asp:DropDownList>
</ContentTemplate>
<Triggers>
  <asp:AsyncPostBackTrigger ControlID="ddl3" EventName="SelectedIndexChanged" />
 </Triggers>
 </asp:UpdatePanel>

</div>
<div id="place">
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

</div>
 </asp:Content>

