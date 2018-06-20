<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Placesetup.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main">
    <div id="lgv" style="height:98%;width:50%;margin-top:4px;border-right:3px solid #000000;float:left;">
<center>  
    <h3>PLACE SETUP</h3>
    <br />
    <asp:Label ID="Label4" runat="server" Text="State"  class="cls1"></asp:Label>
    &nbsp&nbsp&nbsp&nbsp
   <asp:UpdatePanel>
   <ContentTemplate>
    <asp:DropDownList ID="ddl2" runat="server" 
        style=" width:140px; margin-left: 45px;" 
        onselectedindexchanged="ddl2_SelectedIndexChanged" AutoPostBack="true" AppendDataBoundItems="true"></asp:DropDownList>
   </ContentTemplate>
   <Triggers>
     <asp:AsyncPostBackTrigger ControlID="ddl2" EventName="SelectedIndexChanged" />
   </Triggers>
   </asp:UpdatePanel> <br /><br />
    <asp:Label ID="Label1" runat="server" Text="City" class="cls1"></asp:Label>
    &nbsp&nbsp&nbsp&nbsp
    <asp:DropDownList ID="ddl1" runat="server" 
        style=" width:140px; margin-left: 45px;"></asp:DropDownList>
<br /><br />
     <asp:Label ID="Label2" runat="server" Text="Place" class="cls1"></asp:Label>
       &nbsp&nbsp&nbsp&nbsp
    <asp:TextBox ID="txtplace" runat="server" Width="143px" style="margin-left: 48px"></asp:TextBox>
    <br /><br />
     <asp:Label ID="Label3" runat="server" Text="Description" class="cls1"></asp:Label>
       &nbsp&nbsp&nbsp&nbsp
    <asp:TextBox ID="Description" runat="server" Width="171px" TextMode="MultiLine" Height="61px" style="margin-left: 21px" OnTextChanged="Description_TextChanged"></asp:TextBox>
    <br />
    <br />
    <asp:FileUpload ID="filedata" runat="server" />
    <br /><br /><br />
     <asp:Button ID="Button1" runat="server" Text="SAVE" Class="clsbtn" OnClick="Button1_Click" />
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Button ID="Button2" runat="server" Text="CLEAR" Class="clsbtn" OnClick="Button2_Click" />
   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Button ID="Button3" runat="server" Text="DELETE" Class="clsbtn" OnClick="Button3_Click" />
 <br />
 <br />
  <br />
  <asp:Label ID="sahu" runat="server"  style="height:20px; width:auto; font-style:oblique; color:Red;"  ></asp:Label>
 
</center>
    </div>
    <div id="rgb" style="height:98%;width:48%;margin-top:4px;float:left; overflow:auto">
        <center><h3>Places List</h3>
            <br />
            <asp:GridView ID="gv1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
        ForeColor="Black" Height="80px" style="margin-left: 0px" Width="400px">
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

