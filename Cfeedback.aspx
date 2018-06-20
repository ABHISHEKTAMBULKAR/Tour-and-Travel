<%@ Page Title="" Language="C#" MasterPageFile="~/palace.master" AutoEventWireup="true" CodeFile="Cfeedback.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function checkinfo() {
        name = document.getElementById("txtfedname").value;
        if (name.length <= 0)
             {

            document.getElementById("spname").innerHTML = "Please Enter Name";
            document.getElementById("spname").focus();
            return false;
           }
        else
          {
            document.getElementById("spname").innerHTML = "";
          }
    
    }  
</script>
<style type="text/css">
.mybutton{
	font-family: 'Roboto', sans-serif;
	background: #012231;
	color: #d6d6d6;
	padding: 15px 40px;
	font-size: 0.875em;
	text-transform: uppercase;
	
	transition: 0.5s ease;
	-o-transition: 0.5s ease;
	-webkit-transition: 0.5s ease;
	cursor:pointer;
	border:none;
}
.mybutton:hover{
	background: #00B895;
	color: #FFF;
}
}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="bodychild2" class="clsbodyc2">
<center>
<h1>Please give your Feedback</h1><br />
<h4>Your Name :<asp:TextBox ID="txtfedname" runat="server" Text="" 
        style="margin-left: 18px" Width="198px"></asp:TextBox>
        </h4><span id="spname"></span>
   <h4>Email Address :<asp:TextBox ID="txtfedemail" runat="server" Text="" 
           Width="203px"></asp:TextBox></h4>
<h4>Date :<asp:TextBox ID="txtdate" runat="server" style="margin-left: 68px" 
        Width="202px" ></asp:TextBox></h4>
<h4>Your feedback : :</h4>
    <asp:TextBox ID="txtfedback" runat="server" 
        TextMode="MultiLine" Height="105px" 
        style="margin-left: 0px; margin-top: 0px;" Width="267px"></asp:TextBox><br />
        
       <br />
       <br />
        <asp:Button ID="button1" runat="server" class="mybutton" Text="Send Feedback" 
        onclick="button1_Click" OnClientClick=" return checkinfo() "  />
        <asp:Button ID="button2"   runat="server" class="mybutton" Text="Cancel" style=" margin-left:20px;" 
        onclick="button2_Click" />
        <br />
       <br />
        <asp:Label ID="sahu" runat="server" Text=" " style=" height:20px; width:auto;  color:red; "></asp:Label>

</center>
</div>

</asp:Content>

