




<%@page import="com.Employee"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>  
    
    
    
    
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
         <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
         <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
         <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
         <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
         <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script><meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
              
<!------ Include the above in your HEAD tag ---------->

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    
    
   
    
   <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="stylesheet.css"/>
<link rel="stylesheet" type="text/css" href="style.css"/>


<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
  crossorigin="anonymous">
    



<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="footer, address, phone, icons" />

	<title></title>

	<link rel="stylesheet" href="style123.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
       
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
<style>
    
    
    .buttonedit {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
   border-radius: 10px;
}

.buttondelete {
  background-color: #008CBA; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
   border-radius: 10px;
}

.buttonreorder {
  background-color: #f44336; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
   border-radius: 10px;
}


    
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  border: 1px solid green;
  font-size: 15px;
}

td, th {
  border: 1px solid green;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}


a[type=submit] {
 width: 75%;
 background-color: rgb(243, 36, 71);
 color: white;
 padding: 8px 15px;
 margin: 20px 0;
 border: none;
 border-radius: 10px;
 cursor: pointer;
 font-size: 15px;
 
}








 html {
  height: 100%;
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: "Quicksand";
  font-colour:"Black";
}

p {
  font-size: 14px !important;
  font-colour:"Black";
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 13px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: rgb(243, 36, 71);
  color: white;
}

.topnav-right {
  float: right;
}

* {
  box-sizing: border-box;
}

.slider {
  margin-top: -20px;
  float: left;
  width: 75%;
  /* padding: 10px; */
  height: auto;
  /* Should be removed. Only for demonstration */
}

.column {
  margin-top: -20px;
  float: left;
  width: 25%;
  padding: 10px;
  height: auto;
  /* Should be removed. Only for demonstration */
}

.columnImage {
  margin-top: 1.6%;
  float: left;
  width: 25%;
  padding: 10px;
  height: auto;
  /* Should be removed. Only for demonstration */
}

.columnBlog {
  margin-top: 10px;
  float: left;
  width: 25%;
  padding: 10px;
  height: auto;
  /* Should be removed. Only for demonstration */
}

/* .formLogin {
 
} */

.column25 {
  margin-top: -20px;
  float: left;
  width: 25%;
  padding: 10px;
  height: auto;
  /* Should be removed. Only for demonstration */
}

.column35 {
  margin-top: -20px;
  float: left;
  width: 35%;
  padding: 10px;
  height: auto;
  /* Should be removed. Only for demonstration */
}

.column40 {
  margin-top: -20px;
  float: left;
  width: 40%;
  padding: 10px;
  height: auto;
  /* Should be removed. Only for demonstration */
}

.column50 {
  margin-top: -20px;
  float: left;
  width: 50%;
  padding: 10px;
  height: auto;
  /* Should be removed. Only for demonstration */
}

.column60 {
  margin-top: -20px;
  float: left;
  width: 60%;
  padding: 10px;
  height: auto;
  /* Should be removed. Only for demonstration */
}

.column75 {
  background: #fff;
  margin-top: -20px;
  float: left;
  width: 75%;
  padding: 10px;
  height: auto;
  /* Should be removed. Only for demonstration */
}

.column90{
  background: #fff;
  margin-top: -20px;
  float: left;
  width: 90%;
  padding: 10px;
  height: auto;
  /* Should be removed. Only for demonstration */
}

.column100 {
  background: #fff;
  margin-top: -20px;
  float: left;
  width: 100%;
  padding: 10px;
  height: auto;
  /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */

.row:after {
  content: "";
  display: table;
  clear: both;
}

img {
  vertical-align: middle;
}

/* Slideshow container */

.slideshow-container {
  max-width: 100%;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */

.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */

.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */

.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

/* Caption text */

.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */

.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */

.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active,
.dot:hover {
  background-color: #717171;
}

/* Fading animation */

.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {
    opacity: .4
  }
  to {
    opacity: 1
  }
}

@keyframes fade {
  from {
    opacity: .4
  }
  to {
    opacity: 1
  }
}

/* On smaller screens, decrease text size */

@media only screen and (max-width: 300px) {
  .prev,
  .next,
  .text {
    font-size: 11px
  }
}

.navmain {
  overflow: hidden;
  background-color: #302e2e;
  height: 180px;
  margin-top: -30px;
}

.title {
  margin-left: 18%;
  margin-top: 10%;
  font-size: 60px;
  font-weight: 600;
  font-family: "Quicksand";
  color: #fff;
}

.search {
  margin-top: 22%;
}

.buttonSearch {
  margin-left: -52px;
  padding: 15px;
  border: none;
  background: #fefefe;
  color: #302e2e !important;
  border-radius: 30px;
}

.inputSearch {
  font-size: 13px;
  padding: 13px;
  border: none;
  background: #fefefe;
  color: #302e2e !important;
  border-radius: 30px;
  width: 90%;
}

.inputLogin {
  font-size: 13px;
  padding: 13px;
  border: none;
  background: #212121;
  color: #fff !important;
  border-radius: 30px;
  width: 90%;
  margin-bottom: 4%;
}

.inputContact {
  font-size: 13px;
  padding: 13px;
  border: none;
  background: #212121;
  color: #fff !important;
  border-radius: 30px;
  width: 90%;
  margin-bottom: 4%;
  height: 100px;
}

.buttonLogin {
  margin-left: 0px;
  padding: 13px;
  border: none;
  background: rgb(243, 36, 71);
  color: #fff !important;
  border-radius: 30px;
  width: 40%;
  font-size: 13px;
}

.formLogin {
  margin-top: -5%;
}

.labelLogin {
  margin-top: 3%;
  margin-left: 10%;
  float: left;
  font-size: 13px;
  margin-bottom: 2%;
}

.radioButton {
  margin-top: -1%;
  margin-left: -55%;
  font-size: 14px;
}

.blogPost {
  background: #efefef;
  padding-top: 10%;
  padding-left: 10%;
  padding-right: 10%;
  padding-bottom: 5%;
}

input[type=radio] {
  border: 0px;
  width: 17px;
  height: 1.2em;
}


.footerHome {
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: #302e2e;
  color: #fff;
  text-align: left;
  height: 170px;
}

.footerAdmin {
  position: absolute;
  right: 0;
  bottom: -34%;
  left: 0;
  padding: 1rem;
  background-color: #302e2e;
  color: #fff;
  text-align: left;
}

.column50footer {
  float: left;
  width: 50%;
  padding: 10px;
  padding-left: 10%;
  margin-top: 3%;
}

.columnfooter {
  float: left;
  width: 25%;
  padding: 10px;
  margin-left: 3%;
  margin-top: 1%;
}

.columnfooterright {
  margin-top: -6.2%;
  float: right;
  width: 25%;
  padding: 10px;
  padding-left: 10%;
}

.icons {
  font-size: 27px;
  margin-right: 15%;
}

p {
  font-size: 18px;
}

.signup {
  color: #fff;
  background: #302e2e;
  width: 50%;
  margin-top: 12%;
}

.signupText {
  padding: 10px;
  font-size: 13px;
}

.boxwithImage {
  margin-top: 5%;
  width: 100%;
  background: #fff;
  box-shadow: 2px 3px 5px #21212165;
}

/* .mainBody{

} */

.userProfile {
  background: #efefef;
  padding: 2%;
  box-shadow: 3px 5px 10px #2121213b;
  height: 30% !important;
}

.blogText {}

.blogImage {}

.faq {
  margin-top: 2%;
  width: 50%;
  background: #fff;
  padding: 0.4%;
  box-shadow: 2px 3px 13px #2121215b;
}

.instructorImage{
  border-radius: 50%;
}

table{
    
  background: #efefef;
  text-align: center;
   border-radius: 10px;
   margin-left: 20px;
   margin-right: 10px;
}

th{
    
  font-weight: 600;
  background: #F22446;
  padding: 1%;
}

td{
  background: rgb(202, 202, 202);
  padding: 0%;
}


.tablecenter{
  margin-left: 5%;
}

.TrainingFormCenter{
  margin-left: 40%;
}
    
  




body {
    background-color: white;
margin: 0;
 font-family: "Quicksand";
}
.topnav {
    overflow: hidden;
    background-color: #333;
}

.topnav a {
    float: left;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 17px;
}

.topnav a:hover {
    background-color: #ddd;
    color: black;
}

.topnav a.active {
    background-color: rgb(243, 36, 71);
    color: white;
}

.topnav-right {
    float: right;
}

* {
    box-sizing: border-box;
}


.slider {
    margin-top: -20px;
    float: left;
    width: 100%;
    /* padding: 10px; */
    height: auto; 
}

.column {
    margin-top: -20px;
    float: left;
    width: 25%;
    padding: 10px;
    height: auto; /* Should be removed. Only for demonstration */
}

.columnImage {
  margin-top: 1%;
  float: left;
  width: 25%;
  padding: 10px;
  height: auto; /* Should be removed. Only for demonstration */
}

.columnBlog {
  margin-top: 10px;
  float: left;
  width: 45%;
  padding: 10px;
  height: auto; /* Should be removed. Only for demonstration */
}

.navmain{
  overflow: hidden;
  background-color: #302e2e;
  height: 150px;
  margin-top: -30px;
}

.title{    
  margin-left: 13%;
  margin-top: 11%;
  font-size: 60px;
  font-weight: 600;
  font-family: "Quicksand";
  color: #fff;
}

.column50 {
  margin-top: -20px;
  float: left;
  width: 50%;
  padding: 10px;
  height: auto;
  /* Should be removed. Only for demonstration */
}




.search{
  margin-top: 30%;
}

.buttonSearch{
  margin-left: -52px;
  padding: 10px;
  border: none;
  background: #fefefe;
  color: #302e2e !important;
  border-radius: 30px;
}

.inputSearch{
  font-size: 20px;
  padding: 10px;
  border: none;
  background: #fefefe;
  color: #302e2e !important;
  border-radius: 30px;
  width:90%;
}

lable,p,span{
 color: #AAAAAA;
}
h1{
 color:#AAAAAA;
 width: 290px;
 margin: 3% auto;
 font-size: 230%;
}
h2{
 color:Black;
 width: 400px;
 font-size: 150%;
 margin: 2% auto;
}
h4{
 color:#AAAAAA;
 width: 300px;
 margin: 5% auto;
}

input[type=number], select {
 color:#AAAAAA;
 width: 100%;
 padding: 8px 15px;
 margin: 15px 0;
 display: inline-block;
 border: 1px solid #302e2e;
 border-radius: 7px;
 box-sizing: border-box;
}


input[type=text], select {
    color:#ffffff;
 width: 20%;
 padding: 8px 15px;
 margin: 15px 25px;
 display: inline-block;
 border: 1px solid #302e2e;
 border-radius: 7px;
 box-sizing: border-box;
}
input[type=submit] {
 width: 75%;
 background-color: rgb(243, 36, 71);
 color: white;
 padding: 8px 15px;
 margin: 20px 0;
 border: none;
 border-radius: 10px;
 cursor: pointer;
 background: #339900;
}
input[type=password]{
 width: 100%;
 padding: 8px 15px;
 margin: 15px 0;
 display: inline-block;
 border: 1px solid #302e2e;
 border-radius: 7px;
 box-sizing: border-box;
}
form{
  color:white;
 text-align: left;
 width: 450px;
 margin: 10 auto;
}
.footer {
  left: 0;
  bottom: 0;
  width: 120%;
  background-color: #302e2e;
  color: white;
  text-align: left;
  height:170px;
}

.column50footer {
  float: left;
  width: 50%;
  padding: 10px;
  padding-left: 3%;
}

.columnfooter {
  float: left;
  width: 35.5%;
  padding: 17px;
}

.columnfooterright {
  margin-top: 2%;
  float: right;
  width: 25%;
  padding: 10px;
  padding-left: 12%;
}

.icons{
  font-size: 27px;
  margin-right: 15%;
}


 


.signup{
  color: #fff;
  background: #302e2e;
  width: 50%;
  margin-top: 9%;
}

.signupText{
padding :10px;
}
    
    




*{
	padding:0;
	margin:0;
}

html{
	background-color: #eaf0f2;
}

body{
	font:16px/1.6 Arial,  sans-serif;
}

header{
	text-align: center;
	padding-top: 100px;
	margin-bottom:190px;
}

header h1{
	font: normal 32px/1.5 'Open Sans', sans-serif;
	color: #3F71AE;
	padding-bottom: 16px;
}

header h2{
	color: #F05283;
}

header span{
	color: #3F71EA;
}


/* The footer is fixed to the bottom of the page */

footer{
	position: fixed;
	bottom: 0;
}

@media (max-height:800px){
	footer { position: static; }
	header { padding-top:40px; }
}


.footer-distributed{
	background-color: #2c292f;
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;
	padding: 50px 50px 60px 50px;
	margin-top: 80px;
}

.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
	display: inline-block;
	vertical-align: top;
}

/* Footer left */

.footer-distributed .footer-left{
	width: 30%;
}

.footer-distributed h3{
	color:  #ffffff;
	font: normal 36px 'Cookie', cursive;
	margin: 0;
}

/* The company logo */

.footer-distributed .footer-left img{
	width: 30%;
}

.footer-distributed h3 span{
	color:  #e0ac1c;
}

/* Footer links */

.footer-distributed .footer-links{
	color:  #ffffff;
	margin: 20px 0 12px;
}

.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
	text-decoration: none;
	color:  inherit;
}

.footer-distributed .footer-company-name{
	color:  #8f9296;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

/* Footer Center */

.footer-distributed .footer-center{
	width: 35%;
}


.footer-distributed .footer-center i{
	background-color:  #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p{
	display: inline-block;
	color: #ffffff;
	vertical-align: middle;
	margin:0;
}

.footer-distributed .footer-center p span{
	display:block;
	font-weight: normal;
	font-size:14px;
	line-height:2;
}

.footer-distributed .footer-center p a{
	color:  #e0ac1c;
	text-decoration: none;;
}


/* Footer Right */

.footer-distributed .footer-right{
	width: 30%;
}

.footer-distributed .footer-company-about{
	line-height: 20px;
	color:  #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span{
	display: block;
	color:  #ffffff;
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 20px;
}

.footer-distributed .footer-icons{
	margin-top: 25px;
}

.footer-distributed .footer-icons a{
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color:  #33383b;
	border-radius: 2px;

	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;

	margin-right: 3px;
	margin-bottom: 5px;
}

/* Here is the code for Responsive Footer */
/* You can remove below code if you don't want Footer to be responsive */


@media (max-width: 880px) {

	.footer-distributed .footer-left,
	.footer-distributed .footer-center,
	.footer-distributed .footer-right{
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}

	.footer-distributed .footer-center i{
		margin-left: 0;
	}

}
    
    
    
    
 table#t01 tr:nth-child(even) {
  background-color:#0069d9
}
table#t01 tr:nth-child(odd) {
 background-color: #F22446;
}
table#t01 th {
    background-color:#339900;
  color: white;
  
}
   



@keyframes swing {
  0% {
    transform: rotate(0deg);
  }
  10% {
    transform: rotate(10deg);
  }
  30% {
    transform: rotate(0deg);
  }
  40% {
    transform: rotate(-10deg);
  }
  50% {
    transform: rotate(0deg);
  }
  60% {
    transform: rotate(5deg);
  }
  70% {
    transform: rotate(0deg);
  }
  80% {
    transform: rotate(-5deg);
  }
  100% {
    transform: rotate(0deg);
  }
}

@keyframes sonar {
  0% {
    transform: scale(0.9);
    opacity: 1;
  }
  100% {
    transform: scale(2);
    opacity: 0;
  }
}
body {
  font-size: 0.9rem;
}
.page-wrapper .sidebar-wrapper,
.sidebar-wrapper .sidebar-brand > a,
.sidebar-wrapper .sidebar-dropdown > a:after,
.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a:before,
.sidebar-wrapper ul li a i,
.page-wrapper .page-content,
.sidebar-wrapper .sidebar-search input.search-menu,
.sidebar-wrapper .sidebar-search .input-group-text,
.sidebar-wrapper .sidebar-menu ul li a,
#show-sidebar,
#close-sidebar {
  -webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  -ms-transition: all 0.3s ease;
  -o-transition: all 0.3s ease;
  transition: all 0.3s ease;
}

/*----------------page-wrapper----------------*/

.page-wrapper {
  height: 30vh;
}

.page-wrapper .theme {
  width: 40px;
  height: 40px;
  display: inline-block;
  border-radius: 4px;
  margin: 2px;
}

.page-wrapper .theme.chiller-theme {
  background: #1e2229;
}

/*----------------toggeled sidebar----------------*/

.page-wrapper.toggled .sidebar-wrapper {
  left: 0px;
}

@media screen and (min-width: 768px) {
  .page-wrapper.toggled .page-content {
    padding-left: 300px;
  }
}
/*----------------show sidebar button----------------*/
#show-sidebar {
  position: fixed;
  left: 0;
  top: 10px;
  border-radius: 0 4px 4px 0px;
  width: 35px;
  transition-delay: 0.3s;
}
.page-wrapper.toggled #show-sidebar {
  left: -40px;
}
/*----------------sidebar-wrapper----------------*/

.sidebar-wrapper {
  width: 288px;
  height: 100%;
  max-height: 100%;
  position: fixed;
  top: 0;
  left: -300px;
  z-index: 999;
}

.sidebar-wrapper ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

.sidebar-wrapper a {
  text-decoration: none;
}

/*----------------sidebar-content----------------*/

.sidebar-content {
  max-height: calc(100% - 30px);
  height: calc(100% - 30px);
  overflow-y: auto;
  position: relative;
}

.sidebar-content.desktop {
  overflow-y: hidden;
}

/*--------------------sidebar-brand----------------------*/

.sidebar-wrapper .sidebar-brand {
  padding: 10px 20px;
  display: flex;
  align-items: center;
  font-size: 17px;
}

.sidebar-wrapper .sidebar-brand > a {
  text-transform: uppercase;
  font-weight: bold;
  flex-grow: 1;
}

.sidebar-wrapper .sidebar-brand #close-sidebar {
  cursor: pointer;
  font-size: 20px;
}
/*--------------------sidebar-header----------------------*/

.sidebar-wrapper .sidebar-header {
  padding: 20px;
  overflow: hidden;
}

.sidebar-wrapper .sidebar-header .user-pic {
  float: left;
  width: 60px;
  padding: 2px;
  border-radius: 12px;
  margin-right: 15px;
  overflow: hidden;
}

.sidebar-wrapper .sidebar-header .user-pic img {
  object-fit: cover;
  height: 100%;
  width: 100%;
}

.sidebar-wrapper .sidebar-header .user-info {
  float: left;
}

.sidebar-wrapper .sidebar-header .user-info > span {
  display: block;
}

.sidebar-wrapper .sidebar-header .user-info .user-role {
  font-size: 12px;
}

.sidebar-wrapper .sidebar-header .user-info .user-status {
  font-size: 11px;
  margin-top: 4px;
}

.sidebar-wrapper .sidebar-header .user-info .user-status i {
  font-size: 8px;
  margin-right: 4px;
  color: #5cb85c;
}

/*-----------------------sidebar-search------------------------*/

.sidebar-wrapper .sidebar-search > div {
  padding: 10px 20px;
}

/*----------------------sidebar-menu-------------------------*/

.sidebar-wrapper .sidebar-menu {
  padding-bottom: 10px;
}

.sidebar-wrapper .sidebar-menu .header-menu span {
  font-weight: bold;
  font-size: 20px;
  padding: 15px 20px 5px 20px;
  display: inline-block;
}

.sidebar-wrapper .sidebar-menu ul li a {
  display: inline-block;
  width: 100%;
  text-decoration: none;
  position: relative;
  padding: 8px 30px 8px 20px;
}

.sidebar-wrapper .sidebar-menu ul li a i {
  margin-right: 10px;
  font-size: 12px;
  width: 30px;
  height: 30px;
  line-height: 30px;
  text-align: center;
  border-radius: 4px;
  color: #e3e9f4;
}

.sidebar-wrapper .sidebar-menu ul li a:hover > i::before {
  display: inline-block;
  animation: swing ease-in-out 0.5s 1 alternate;
  
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown > a:after {
  font-family: "Font Awesome 5 Free";
  font-weight: 900;
  content: "\f105";
  font-style: normal;
  display: inline-block;
  font-style: normal;
  font-variant: normal;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  background: 0 0;
  position: absolute;
  right: 15px;
  top: 14px;
  color: #e3e9f4;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu ul {
  padding: 5px 0;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li {
  padding-left: 25px;
  font-size: 20px;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a:before {
  content: "\f111";
  font-family: "Font Awesome 5 Free";
  font-weight: 400;
  font-style: normal;
  display: inline-block;
  text-align: center;
  text-decoration: none;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  margin-right: 10px;
  font-size: 8px;
  color: #e3e9f4;
}

.sidebar-wrapper .sidebar-menu ul li a span.label,
.sidebar-wrapper .sidebar-menu ul li a span.badge {
  float: right;
  margin-top: 8px;
  margin-left: 5px;
  
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a .badge,
.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a .label {
  float: right;
  margin-top: 0px;
}

.sidebar-wrapper .sidebar-menu .sidebar-submenu {
  display: none;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown.active > a:after {
  transform: rotate(90deg);
  right: 17px;
}

/*--------------------------side-footer------------------------------*/

.sidebar-footer {
  position: absolute;
  width: 100%;
  bottom: 0;
  display: flex;
}

.sidebar-footer > a {
  flex-grow: 1;
  text-align: center;
  height: 30px;
  line-height: 30px;
  position: relative;
}

.sidebar-footer > a .notification {
  position: absolute;
  top: 0;
}

.badge-sonar {
  display: inline-block;
  background: #980303;
  border-radius: 50%;
  height: 8px;
  width: 8px;
  position: absolute;
  top: 0;
}

.badge-sonar:after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  border: 2px solid #980303;
  opacity: 0;
  border-radius: 50%;
  width: 100%;
  height: 100%;
  animation: sonar 1.5s infinite;
}

/*--------------------------page-content-----------------------------*/

.page-wrapper .page-content {
  display: inline-block;
  width: 100%;
  padding-left: 0px;
  padding-top: 20px;
}

.page-wrapper .page-content > div {
  padding: 20px 40px;
}

.page-wrapper .page-content {
  overflow-x: hidden;
}

/*------scroll bar---------------------*/

::-webkit-scrollbar {
  width: 5px;
  height: 7px;
}
::-webkit-scrollbar-button {
  width: 0px;
  height: 0px;
}
::-webkit-scrollbar-thumb {
  background: #525965;
  border: 0px none #ffffff;
  border-radius: 0px;
}
::-webkit-scrollbar-thumb:hover {
  background: #525965;
}
::-webkit-scrollbar-thumb:active {
  background: #525965;
}
::-webkit-scrollbar-track {
  background: transparent;
  border: 0px none #ffffff;
  border-radius: 50px;
}
::-webkit-scrollbar-track:hover {
  background: transparent;
}
::-webkit-scrollbar-track:active {
  background: transparent;
}
::-webkit-scrollbar-corner {
  background: transparent;
}


/*-----------------------------chiller-theme-------------------------------------------------*/

.chiller-theme .sidebar-wrapper {
    background: #31353D;
}

.chiller-theme .sidebar-wrapper .sidebar-header,
.chiller-theme .sidebar-wrapper .sidebar-search,
.chiller-theme .sidebar-wrapper .sidebar-menu {
    border-top: 1px solid #3a3f48;
}

.chiller-theme .sidebar-wrapper .sidebar-search input.search-menu,
.chiller-theme .sidebar-wrapper .sidebar-search .input-group-text {
    border-color: transparent;
    box-shadow: none;
}

.chiller-theme .sidebar-wrapper .sidebar-header .user-info .user-role,
.chiller-theme .sidebar-wrapper .sidebar-header .user-info .user-status,
.chiller-theme .sidebar-wrapper .sidebar-search input.search-menu,
.chiller-theme .sidebar-wrapper .sidebar-search .input-group-text,
.chiller-theme .sidebar-wrapper .sidebar-brand>a,
.chiller-theme .sidebar-wrapper .sidebar-menu ul li a,
.chiller-theme .sidebar-footer>a {
    color: #e3e9f4;
}

.chiller-theme .sidebar-wrapper .sidebar-menu ul li:hover>a,
.chiller-theme .sidebar-wrapper .sidebar-menu .sidebar-dropdown.active>a,
.chiller-theme .sidebar-wrapper .sidebar-header .user-info,
.chiller-theme .sidebar-wrapper .sidebar-brand>a:hover,
.chiller-theme .sidebar-footer>a:hover i {
    color: #b8bfce;
}

.page-wrapper.chiller-theme.toggled #close-sidebar {
    color: #bdbdbd;
}

.page-wrapper.chiller-theme.toggled #close-sidebar:hover {
    color: #ffffff;
}

.chiller-theme .sidebar-wrapper ul li:hover a i,
.chiller-theme .sidebar-wrapper .sidebar-dropdown .sidebar-submenu li a:hover:before,
.chiller-theme .sidebar-wrapper .sidebar-search input.search-menu:focus+span,
.chiller-theme .sidebar-wrapper .sidebar-menu .sidebar-dropdown.active a i {
    color: #16c7ff;
    text-shadow:0px 0px 10px rgba(22, 199, 255, 0.5);
}

.chiller-theme .sidebar-wrapper .sidebar-menu ul li a i,
.chiller-theme .sidebar-wrapper .sidebar-menu .sidebar-dropdown div,
.chiller-theme .sidebar-wrapper .sidebar-search input.search-menu,
.chiller-theme .sidebar-wrapper .sidebar-search .input-group-text {
    background: #3a3f48;
}

.chiller-theme .sidebar-wrapper .sidebar-menu .header-menu span {
    color: #6c7b88;
}

.chiller-theme .sidebar-footer {
    background: #3a3f48;
    box-shadow: 0px -1px 5px #282c33;
    border-top: 1px solid #464a52;
}

.chiller-theme .sidebar-footer>a:first-child {
    border-left: none;
}

.chiller-theme .sidebar-footer>a:last-child {
    border-right: none;
}


    
    </style>
    
    
    
    
    <script>
        $(document).ready(function(){
            
            $("#myInput").on("keyup",function(){
                
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function (){
                    
                    
                    $(this).toggle($(this).text().toLowerCase().indexOf(value)> -1)
                    
                    });
                
              });
           });
           
           
           
           
                  jQuery(function ($) {

    $(".sidebar-dropdown > a").click(function() {
  $(".sidebar-submenu").slideUp(200);
  if (
    $(this)
      .parent()
      .hasClass("active")
  ) {
    $(".sidebar-dropdown").removeClass("active");
    $(this)
      .parent()
      .removeClass("active");
  } else {
    $(".sidebar-dropdown").removeClass("active");
    $(this)
      .next(".sidebar-submenu")
      .slideDown(200);
    $(this)
      .parent()
      .addClass("active");
  }
});

$("#close-sidebar").click(function() {
  $(".page-wrapper").removeClass("toggled");
});
$("#show-sidebar").click(function() {
  $(".page-wrapper").addClass("toggled");
});


   
   
});
           
           
    
    </script>
    
 </head>

   
    
       
  <body>     
       
      <br>  
      <br>
      <br>
    
      
      
      
  
       
          
          <!--    <img src="ll.png" alt="Admin" />  -->    
                
   
  <!--<h2>Plant Stock</h2> -->

  <div style="padding-left: 280px;">  
     <Input style="background-color:#339900;color:black;" id="myInput" type="text" placeholder="Search..."> </Input>
  </div>

  
<!-- <div style="padding-left:280px;margin-top:30px;"> 
     <center>  
         <Input type="submit" value="print" onclick="window.print()"></Input></center></div>-->
      
      <div style="padding-left:280px;margin-top:20px;padding-right: 30px;">  
          
<table id="t01">
  <tr>
      
                        <th>Plant Code</th>
			<th>Plant Name</th>
			<th>Quantity</th>
			<th>Price</th>
                        <th>Date</th>
                        <th>UPDATE</th>
                        <th>Delete</th>
                        <th>Re-order items</th> 
  </tr>
 
  
      </div>



<tbody id="myTable">
    
    
	<%   
            Connection con;
	    Statement st;
	    ResultSet rs;
            
         
	   %>
           
           
	   <% 
	   String url,user,pass;
	   
	   
	       url="jdbc:mysql://localhost/ruvinidb";//dbname
	       user="root";
	       pass="";
               
	      try{
                 
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con=DriverManager.getConnection(url,user,pass);
	             
	                String data="select * from plantstock ";
			st=con.createStatement();
			rs= st.executeQuery(data);
			while (rs.next()){
                            
                            
                            
			out.print("<tr>");
			out.print("<td>"+rs.getString("plantcode")+"</td>");
			out.print("<td>"+rs.getString("plantname")+"</td>");
			out.print("<td>"+rs.getString("quantity")+"</td>");
			out.print("<td>"+rs.getString("price")+"</td>");
			out.print("<td>"+rs.getString("date")+"</td>");
                        
		    out.print("<td class=\"text-center\"><a href =\"newtest2.jsp?u="+rs.getString("plantcode")+"\" class = \"btn btn-warning\"><button class=buttonedit> Edit</button> </a></td><td><a href =\"delete?u=" +rs.getString("plantcode")+" \"class =\"btn btn-danger \"><button class=buttondelete> Delete</button> </a></td><td><a href =\"tosupplier.jsp?u=" +rs.getString("plantcode")+" \"class =\"btn btn-danger \"><button class=buttonreorder>Re-order</button> </a></td>");
			out.print("</tr>");
			
                        }
                         
                    }catch(Exception ex){
                    
			out.print(""+ex);
                        
		}
		
		%>


</tbody>

 
</table> 

      </div>
                
  <br>
    <br>
    
    
    
        
    
      
            
            
            
      
  <div style="padding-left:300px;margin-top:30px;">     
  <center>
       <form method="post" name="resetform" action="index1.jsp">	
				
				
				<input type="submit" name="name" value="Back to previous page">


           </form>
          
          
           <form method="post" name="resetform" action="indexNew.jsp">	
				
				
				<input type="submit" name="name" value="Back to main page">


           </form>
         
<!--      <form action=""> 
      Number of records : <input type="text" name="FirstName" value=""><br>
      
      </form>-->
          
</center>
  </div>
      
  
  
  
  
          
<!--/////////NAVI////////////

  TADA TADA-->
        <div class="page-wrapper chiller-theme toggled">
  <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
    <i class="fas fa-bars"></i>
  </a>
  <nav id="sidebar" class="sidebar-wrapper">
    <div class="sidebar-content">
      <div class="sidebar-brand">
        <a href="#">Ruvini Aqua Plants</a>
      </div>
      <div class="sidebar-header">
        <div class="user-pic">
          <img class="img-responsive img-rounded" src="https://raw.githubusercontent.com/azouaoui-med/pro-sidebar-template/gh-pages/src/img/user.jpg"
            alt="User picture">
        </div>
        <div class="user-info">
<!--          <span class="user-name">ADMIN
            <strong>Smith</strong>-->
          </span>
          <span class="user-role">Administrator</span>
          <span class="user-status">
            <i class="fa fa-circle"></i>
            <span>Online</span>
          </span>
        </div>
      </div>
      <!-- sidebar-search  -->
      <div class="sidebar-menu">
        <ul>
          <li class="header-menu">
              <span style="color: #e3e9f4;">Admin Dashboard</span>
          </li>
          <br>
          <li class="sidebar-dropdown">
            <a href="HomePage.jsp">
              <i class="fa fa-tachometer-alt"></i>
              <span style="font-size: 16px; color: #e3e9f4;">Home</span>
            </a>
          </li>
          
          <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-folder"></i>
              <span style="font-size: 16px;">Customer Management </span>
<!--              <span class="badge badge-pill badge-warning">New</span>-->
            </a>
            <div class="sidebar-submenu">
                <ul>
                <li style="font-size: 13px;">
                  <a href="inquirylist.jsp">Inquiry list</a>
                </li>
                <li  style="font-size: 13px;">
                  <a href="customerlist.jsp">Customer list </a>
                </li>
              </ul>
            </div>
          </li>
          
           <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-folder"></i>
              <span style="font-size: 16px;">Stock Management </span>
<!--              <span class="badge badge-pill badge-warning">New</span>-->
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li  style="font-size: 13px;">
                    <a href="Listemployee.jsp">Plant Stock</a>
                </li>
                <li  style="font-size: 13px;">
                    <a href="ListemployeeC.jsp">Chemical Stock</a>
                </li>
                <li  style="font-size: 13px;">
                    <a href="ListemployeeE.jsp">Equipment Stock</a>
                </li>
                <li  style="font-size: 13px;">
                    <a href="viewreorderedItems.jsp">Re-ordered Items</a>
                </li>
                <li  style="font-size: 13px;">
                    <a href="plantreport.jsp">Reports</a>
                </li>
              </ul>
            </div>
          </li>
            <li class="sidebar-dropdown">
            <a href="orderList.jsp">
              <i class="fa fa-folder"></i>
              <span style="font-size: 16px;">Order handling </span>
            </a>
            <div class="sidebar-submenu">
            </div>
          </li>
          <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-folder"></i>
              <span style="font-size: 16px;">Supplier Management</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li  style="font-size: 13px;">
                  <a href="new">Add New Supplier</a>
                </li>
                <li  style="font-size: 13px;">
                  <a href="list">List All Suppliers</a>
                </li>
                <li style="font-size: 13px;">
                  <a href="ReOrder.jsp">Re-Order</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="sidebar-dropdown">
            <a href="info.jsp">
              <i class="fa fa-folder"></i>
              <span style="font-size: 16px;">Delivery Management </span>
            </a>
            <div class="sidebar-submenu">
            </div>
          </li>
          <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-folder"></i>
              <span style="font-size: 16px;">Employee Management</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li style="font-size: 13px;">
                  <a href="employee-form.jsp">Add Employee</a>
                </li>
                <li style="font-size: 13px;">
                  <a href="attendence-form.jsp">Add Attendance</a>
                </li>
                 <li style="font-size: 13px;">
                  <a href="report_1.jsp">Report</a>
                </li>
              </ul>
            </div>
          </li>
                  <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-folder"></i>
              <span style="font-size: 16px;" > Employee Finance</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li style="font-size: 13px;">
                  <a href="EmployeeSearch.jsp">Main Calculation</a>
                </li>
                <li style="font-size: 13px;">
                  <a href="empfin-list.jsp">Done Calculation</a>
                </li>
                <li style="font-size: 13px;">
                    <a href="salReport.jsp" target="_blank">Main Report</a>
                </li>
              </ul>
            </div>
          </li>
           <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-folder"></i>
              <span style="font-size: 16px;" >Finance section</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li style="font-size: 13px;">
                  <a href="BalanceSheet.jsp">Balance Sheet</a>
                </li>
                <li style="font-size: 13px;">
                  <a href="asset-form.jsp">Asserts</a>
                </li>
                <li style="font-size: 13px;">
                  <a href="asset-list.jsp">Assets List</a>
                </li>
                <li style="font-size: 13px;">
                  <a href="EquityLia-form.jsp">Equity and Liabilities</a>
                </li>
                <li style="font-size: 13px;">
                  <a href="EquityLia-list.jsp">Equity and Liabilities list</a>
                </li>
                <li style="font-size: 13px;">
                  <a href="Report.jsp">Finance Report</a>
                </li>
              </ul>
            </div>
          </li>
        </ul>
      </div>
      <!-- sidebar-menu  -->
    </div>
  </nav>

  <!-- page-content" -->
</div>
     

</body>
</html>
