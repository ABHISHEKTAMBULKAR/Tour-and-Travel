<%@ Page Title="" Language="C#" MasterPageFile="~/palace.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="StyleSheet" href ="mainpr.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
        <div id="div1" style="height:640px;width:99.857%; float:left;background-color:black;">
            
            <div id="dv2"style="height:600px;width:94% ;background-color:bisque">
            <br />
        <h1>Log In</h1>
        <table>          
                  
               <tr>
                   
                   <td>
                <asp:Label ID="Label3" runat="server" class="rs" Text="Email"></asp:Label></td><br />
                <td>&nbsp&nbsp<asp:TextBox ID="cusaddr" class="tb" runat="server"></asp:TextBox></td></tr>
        <tr><td><br /><br />
                 <asp:Label ID="Label7" runat="server" class="rs" Text="Password" ></asp:Label></td><br /><br />
                <td>&nbsp&nbsp<asp:TextBox ID="cuspass" class="tb" runat="server" Textmode="Password" ></asp:TextBox></td></tr>
         </table><br /><br /><br />
                <asp:Button ID="Button3" Class="but" runat="server" Text="Log In" 
                    onclick="Button3_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             <asp:Button ID="bt1" class="but"  runat="server" Text="Not Registerd" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             
            <br />
          
                    <asp:Label ID="Label1" runat="server" class="lb"  Visible="false"></asp:Label>
              </div>

    </div>
</center>
</asp:Content>

