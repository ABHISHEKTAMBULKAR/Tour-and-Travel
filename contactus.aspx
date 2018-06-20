<%@ Page Title="" Language="C#" MasterPageFile="~/palace.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.span_2_of_3 {
	width: 63.1%;
	padding:1.5%; 
}
.span_2_of_3  h3 {
	font-family: 'Roboto', sans-serif;
	font-size: 1.5em;
	padding: 0.5em 0;
	color: #012231;
	text-transform: uppercase;
}
.contact-form{
	position:relative;
	padding-bottom:30px;
}
.contact-form div{
	padding:5px 0;
}
.clss, .contact-form textarea{
		   padding: 8px;
			display: block;
			width: 98%;
			border: none;
			outline: none;
			color: #464646;
			font-size: 0.8125em;
			font-family: Arial, Helvetica, sans-serif;
			border: 1px solid rgba(85, 85, 85, 0.19);
			-webkit-appearance:none;
}
.contact-form textarea{
		resize:none;
		height:120px;		
}
.mybutton{
	font-family: 'Roboto', sans-serif;
	background: #012231;
	color: #d6d6d6;
	padding: 15px 40px;
	font-size: 0.875em;
	text-transform: uppercase;
	display: block;
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
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="full" style=" height:100%; width:100%; margin-left:200px; ">
<div class="col span_2_of_3">


<div class="contact-form">
<h3>Contact Us</h3>

<form method="post" action="contact-post.html">

<div>

<span><label>NAME</label></span>
<span><asp:TextBox ID="txtname" class="clss" runat="server"></asp:TextBox></span>
</div>

<div>

<span><label>E-MAIL</label></span>

<span><asp:TextBox ID="txtemail" class="clss" runat="server"></asp:TextBox> </span>

</div>

<div>

<span><label>MOBILE</label></span>
<span><asp:TextBox ID="txtmob" class="clss" runat="server"></asp:TextBox></span>
</div>

<div>

<span><label>SUBJECT</label></span>
<span><textarea name="userMsg" id="txtmulti" runat="server" rows="0"></textarea></span>

	    </div>

   <div>
<span><asp:Button ID="btn1" class="mybutton" runat="server" Text="Submit" onclick="btn1_Click" /> </span>
<br />
<asp:Label ID="sahu" runat="server" style=" height:20px; width:auto; text-align:center; color:Red;"></asp:Label>
	
</div>

   </form>
  </div>
</div>			
</div>
</asp:Content>

