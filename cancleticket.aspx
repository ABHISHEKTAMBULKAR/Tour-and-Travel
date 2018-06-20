<%@ Page Title="" Language="C#" MasterPageFile="~/palace.master" AutoEventWireup="true" CodeFile="cancleticket.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<br /><br /><br /><br />
<h3> Ticket Canceled</h3>
   <tr>
                   
                   <td><br />
                <asp:Label ID="Label3" runat="server" class="rs" Text="Ticket Number"></asp:Label></td><br />
                <td>&nbsp&nbsp<asp:TextBox ID="cusaddr" class="tb" runat="server"></asp:TextBox></td></tr>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
         <tr> <td>  
        <asp:Button ID="Button1" class ="clsbtn" runat="server" Text="Ticket Book" 
            onclick="Button1_Click" /></td></tr>

    </center>
</asp:Content>

