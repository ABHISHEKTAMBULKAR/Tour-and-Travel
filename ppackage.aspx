<%@ Page Title="" Language="C#" MasterPageFile="~/palace.master" AutoEventWireup="true" CodeFile="ppackage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
#ddldiv
{
 height:42px; width:99.88%;   
}
#pacdiv
{
  height:610px; width:99.88%; border-top:solid 1px #000000; 
}
.dcls
{
    height:30px; width:200px; margin-top:8px; margin-left:100px; float:left;
     font-size:medium; font-style:oblique; font-family:@MS Gothic;
}
.datacls
{
  height:270px; width:300px; border:solid 1px #000000; margin-left:150px; margin-top:20px;
     
 }
.ccc
{
	font-family: 'Roboto', sans-serif;
	background: #00B895;
	color: #fff;
	padding: 10px 20px;
	font-size: 0.875em;
	cursor:pointer;
	border:none;
	text-decoration:none;
	border-radius: 15px 15px;
} 
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="ddldiv">

<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    

<asp:DropDownList ID="ddl1" class="dcls" runat="server"  AppendDataBoundItems="true" AutoPostBack="true"
        onselectedindexchanged="ddl1_SelectedIndexChanged" ></asp:DropDownList>
   </ContentTemplate>
   <Triggers>
  <asp:AsyncPostBackTrigger ControlID="ddl1" EventName="SelectedIndexChanged"  />
 </Triggers>

   </asp:UpdatePanel>

   <asp:UpdatePanel ID="UpdatePanel2" runat="server">
   <ContentTemplate>
<asp:DropDownList ID="ddl2" class="dcls" runat="server" AppendDataBoundItems="true" 
           AutoPostBack="true" onselectedindexchanged="ddl2_SelectedIndexChanged"></asp:DropDownList>
</ContentTemplate>
<Triggers>
  <asp:AsyncPostBackTrigger ControlID="ddl2" EventName="SelectedIndexChanged" />
 </Triggers>
 </asp:UpdatePanel>

 <asp:UpdatePanel ID="UpdatePanel3" runat="server">
<ContentTemplate>

<asp:DropDownList ID="ddl3" class="dcls" runat="server"  
        AppendDataBoundItems="true" AutoPostBack="true" 
        onselectedindexchanged="ddl3_SelectedIndexChanged" ></asp:DropDownList>
</ContentTemplate>
<Triggers>
  <asp:AsyncPostBackTrigger ControlID="ddl3" EventName="SelectedIndexChanged" />
 </Triggers>
 </asp:UpdatePanel>

</div>

<div id="pacdiv">
 
<asp:DataList ID="datalist1" runat="server" RepeatColumns="2" >
    <ItemTemplate >
    <div id="datainfo" class="datacls"  >
    <center>
    <br />
    <img src='<%#Eval("p_images") %>' style="height:120px;width:200px;" /><br />
    <br />
    Item Name : <asp:Label ID="lbl1" runat="server" Text='<%#Eval("p_name") %>' ></asp:Label><br /><br />
    Item Price : <asp:Label ID="Label1" runat="server" Text='<%#Eval("price") %>' ></asp:Label><br /><br />
    
    <a class="ccc" href='Details.aspx?p_name=<%#Eval("p_name")%>' >Veiw Details</a>
  
    </center>
    </div>
    </ItemTemplate>
    </asp:DataList>
    
</div>

</asp:Content>

