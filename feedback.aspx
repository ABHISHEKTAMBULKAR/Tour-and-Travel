<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h3>Feedback List</h3>
<h4><asp:TextBox ID="txtfedlist" runat="server" Text="" Width="191px" ></asp:TextBox>      
    <asp:Button ID="btn" runat="server" Text="Search" style="margin-left: 40px" 
        Width="103px" onclick="btn_Click"  /></h4>

<asp:GridView ID="gvd1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
        ForeColor="Black" Height="80px" style="margin-left: 0px" Width="650px" >
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

</asp:Content>

