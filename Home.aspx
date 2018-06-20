<%@ Page Title="" Language="C#" MasterPageFile="~/palace.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<head>
<link rel="stylesheet" href="responsiveslides.css" >
<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="responsiveslides.min.js"></script>
		  <script type="text/javascript">
		      // You can also use "$(window).load(function() {"
		      $(function () {
		          // Slideshow 1
		          $("#slider1").responsiveSlides({
		              maxwidth: 1200,
		              speed: 1000
		          });
		      });
		  </script>
    <style type="text/css">
    .content { height:275px; width:100%;
}
.content_top{
	background:#45B39E;
	padding:21px 0;
	text-align: center;
	font-family: 'Roboto', sans-serif;
	position:relative;
}
.content_top:after{
	content: '';
	position:relative;
	width: 0;
	height: 0;
	border:20px solid #FFF;
	border-top: 0 solid rgba(0, 0, 0, 0)!important;
	border-right: 15px solid rgba(0, 0, 0, 0)!important;
	border-left: 15px solid rgba(0, 0, 0, 0)!important;
	left:0%;
	//top: 30px;
  margin-left   : -10px;
}
.content_top h1 a{
	font-size:em;
	color: #fff; text-decoration:none;
	
}
.content_top span a{
	font-family: 'Roboto', sans-serif;
	color:#ffffff;
	background-color:#009175; text-decoration:none;
	text-transform: uppercase;
	padding: 10px 20px;
	font-size:1em;
	transition: 0.5s ease;
	-o-transition: 0.5s ease;
	-webkit-transition: 0.5s ease;
}
.content_top span a:hover{
	background:#222;
}
.content_top p{
	font-size:1em;
	line-height: 1.8em;
	color: #fff;
	margin-bottom: 24px;
	margin: 14px 0px 24px 0px;
}

    </style>
</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="slider" style=" height:368px; width:100%; " >
<div class="image-slider" >
						<!-- Slideshow 1 -->
 <ul class="rslides" id="slider1">
 <li><img src ="picture/slider1.jpg" alt=""/></li>
 <li><img src="picture/slider2.jpg" alt=""/></li>
					</ul>
</div>
</div>
<div class="content">

<div class="content_top">

<div class="wrap" style=" background-color:#45B39E;">

<h1><a href="#">WELCOME</a></h1>
<p>This is Tour Management Online Website where you can find your favourite place easily
can visit the place in better and safety way. We provide Ticket Booking Facility in better way 
and user can easily make the payment.
 </p>
 <p>--------------------------------------------------------------------------
 THANK YOU---------------------------------------------------------------------------</p>

<span><a class="learnmore" href="Home.aspx">LEARN MORE</a></span>

</div>

 </div>
	
    </div>
</asp:Content>

