<%@ Page Title="" Language="C#" MasterPageFile="~/palace.master" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.about-us {
	height:640px;
	width:99.7%;
	padding: 10px 0;
}
.about-header h5{
	float: left;
	width: 30%;
	height: 1px;
	background: #D1D1D1;
	margin: 24px 0px 0px 0px;
}
.about-header h3{
	font-family: 'Roboto', sans-serif;
	font-size: 2em;
	color: #012231;
	text-align: center;
	text-transform: uppercase;
	background:url(images/bg-h2.png) repeat-x center;
}
.about-info p{
	font-size: 0.875em;
	color: rgba(85, 81, 81, 0.84);
	font-family: Arial, Helvetica, sans-serif;
	line-height: 1.8em;
	margin-left:25px;
	margin-right:25px;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="about-us">
	
<div class="about-header">
	
<h3>About us</h3>

 </div>
			
<div class="about-info">
<p>The Primary Lines of Our Bussiness is " Customer Satisfaction " and " Good Services" .Our Company main goal is Customer
Comfortiblity and his demand to be fill upto possible Extent. Our Campus situated in Mumbai . We Have been working in this field since 2013 and always try 
to maintain the quality of Work and fullfill the demand of Customer  </p>
 
 <h2 style=" margin-left:220px;">Company Informationon</h2>
<center>
<table>
<tr style="font-style:italic; font-size:large;">
<td>Company mame : Bombay Times </td>
</tr>

<tr style="font-style:italic; font-size:large;">
<td>Company Addess : 1240 North Street, South bombay ,</td>
<td> Near Dalal street , Bombay</td>
</tr>
<tr style="font-style:italic; font-size:large;">
<td>Phone Number : 8874557874, 8989564785, </td>
</tr>

<tr style="font-style:italic; font-size:large;">
<td>Fax Number : 111-222-333 </td>
</tr>
<tr style="font-style:italic; font-size:large;">
<td>Toatl No of Employee  : 25 </td>
</tr>
<tr style="font-style:italic; font-size:large;">
<td>primary lines of Bussiness : Good Services </td>
</tr>
</table>
</center>
</div>
	</div>
</asp:Content>

