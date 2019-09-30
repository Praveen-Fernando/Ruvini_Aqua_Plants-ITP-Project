<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
 <title>Equities & Liabilities Management</title>
 
 
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
        
 <style>
     /*//////////////////////////////////////////////////////////////////
[ FONT ]*/

@font-face {
  font-family: Raleway-Black;
  src: url('../fonts/raleway/Raleway-Black.ttf'); 
}

@font-face {
  font-family: Raleway-SemiBold;
  src: url('../fonts/raleway/Raleway-SemiBold.ttf'); 
}

@font-face {
  font-family: Raleway-Bold;
  src: url('../fonts/raleway/Raleway-Bold.ttf'); 
}

/*//////////////////////////////////////////////////////////////////
[ RESTYLE TAG ]*/

* {
	margin: 0px; 
	padding: 0px; 
	box-sizing: border-box;
}

body, html {
	height: 100%;
	font-family: Raleway-SemiBold, sans-serif;
            
    margin: 0 !important; 
    padding: 0 !important;
    overflow: hidden;
}

/*---------------------------------------------*/
a {
	font-family: Raleway-SemiBold;
	font-size: 14px;
	line-height: 1.7;
	color: #666666;
	margin: 0px;
	transition: all 0.4s;
	-webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
}

a:focus {
	outline: none !important;
}

a:hover {
	text-decoration: none;
}

/*---------------------------------------------*/
h1,h2,h3,h4,h5,h6 {
	margin: 0px;
}

p {
	font-family: Raleway-SemiBold;
	font-size: 14px;
	line-height: 1.7;
	color: #666666;
	margin: 0px;
}

ul, li {
	margin: 0px;
	list-style-type: none;
}


/*---------------------------------------------*/
input {
	outline: none;
	border: none;
}

textarea {
  outline: none;
  border: none;
}

textarea:focus, input:focus {
  border-color: transparent !important;
}

input:focus::-webkit-input-placeholder { color:transparent; }
input:focus:-moz-placeholder { color:transparent; }
input:focus::-moz-placeholder { color:transparent; }
input:focus:-ms-input-placeholder { color:transparent; }

textarea:focus::-webkit-input-placeholder { color:transparent; }
textarea:focus:-moz-placeholder { color:transparent; }
textarea:focus::-moz-placeholder { color:transparent; }
textarea:focus:-ms-input-placeholder { color:transparent; }

input::-webkit-input-placeholder { color: #adadad;}
input:-moz-placeholder { color: #adadad;}
input::-moz-placeholder { color: #adadad;}
input:-ms-input-placeholder { color: #adadad;}

textarea::-webkit-input-placeholder { color: #adadad;}
textarea:-moz-placeholder { color: #adadad;}
textarea::-moz-placeholder { color: #adadad;}
textarea:-ms-input-placeholder { color: #adadad;}

/*---------------------------------------------*/
button {
	outline: none !important;
	border: none;
	background: transparent;
}

button:hover {
	cursor: pointer;
}

iframe {
	border: none !important;
}



/*//////////////////////////////////////////////////////////////////
[ Contact ]*/

.container-contact100 {
  width: 100%;  
  min-height: 0vh;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 15px;
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
}

.wrap-contact100 {
  max-width: 960px;
  background: #fff;
  border-radius: 2px;
  padding: 66px 115px 59px 115px;
  position: relative;
  padding-top: 0;
}


/*==================================================================
[ Form ]*/

.contact100-form {
  width: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.contact100-form-title {
  display: block;
  width: 100%;
  font-family: Raleway-Black;
  font-size: 30px;
  color: #333333;
  line-height: 1.2;
  text-transform: uppercase;
/*  text-align: left;*/
  padding-bottom: 32px;
}



/*------------------------------------------------------------------
[ Input ]*/

.wrap-input100 {
  width: 100%;
  position: relative;
  background-color: transparent;
  margin-bottom: 35px;
}

.rs1-wrap-input100 {
  width: calc((100% - 30px) / 2);
}

.label-input100 {
  font-family: Raleway-SemiBold;
  font-size: 14px;
  color: #555555;
  line-height: 1.5;
}

.input100 {
  display: block;
  width: 100%;
  background: #f2f2f2;
  border-radius: 2px;

  font-family: Raleway-SemiBold;
  font-size: 20px;
  color: #686868;
  line-height: 1.2;
  padding: 0 28px;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;

  margin-top: 10px;
}


/*---------------------------------------------*/
input.input100 {
  height: 40px;
}


textarea.input100 {
  min-height: 162px;
  padding-top: 19px;
  padding-bottom: 13px;
}

.input100:focus {
  background: #e6e6e6;
}

/*------------------------------------------------------------------
[ Button ]*/
.container-contact100-form-btn {
  width: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin-top: 5px;
}

.wrap-contact100-form-btn {
  display: block;
  position: relative;
  z-index: 1;
  border-radius: 2px;
  overflow: hidden;
}

.contact100-form-bgbtn {
  position: absolute;
  z-index: -5;
  width: 300%;
  height: 100%;
  background: #df2351;
  background: -webkit-linear-gradient(right, #2f91ff, #00c513, #2f91ff, #00c513);
  background: -o-linear-gradient(right, #2f91ff, #00c513, #2f91ff, #00c513);
  background: -moz-linear-gradient(right, #2f91ff, #00c513, #2f91ff, #00c513);
  background: linear-gradient(right, #2f91ff, #00c513, #2f91ff, #00c513);
  top: 70;
  left: -100%;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.contact100-form-btn {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 20px;
  min-width: 150px;
  height: 62px;

  font-family: Raleway-Bold;
  font-size: 16px;
  color: #fff;
  line-height: 1.2;
  text-transform: uppercase;
}

.wrap-contact100-form-btn:hover .contact100-form-bgbtn {
  left: 0;
}


/*------------------------------------------------------------------
[ Responsive ]*/

@media (max-width: 992px) {
  .wrap-contact100 {
    padding: 66px 80px 59px 80px;
  }
}

@media (max-width: 768px) {
  .rs1-wrap-input100 {
    width: 100%;
  }
}

@media (max-width: 576px) {
  .wrap-contact100 {
    padding: 66px 15px 59px 15px;
  }
}


/*------------------------------------------------------------------
[ Alert validate ]*/

.validate-input {
  position: relative;
}

.alert-validate::before {
  content: attr(data-validate);
  position: absolute;
  max-width: 70%;
  background-color: #fff;
  border: 1px solid #c80000;
  border-radius: 2px;
  padding: 4px 25px 4px 10px;
  bottom: calc((100% - 34px) / 2);
  -webkit-transform: translateY(50%);
  -moz-transform: translateY(50%);
  -ms-transform: translateY(50%);
  -o-transform: translateY(50%);
  transform: translateY(50%);
  right: 10px;
  pointer-events: none;

  font-family: Raleway-SemiBold;
  color: #c80000;
  font-size: 13px;
  line-height: 1.4;
  text-align: left;

  visibility: hidden;
  opacity: 0;

  -webkit-transition: opacity 0.4s;
  -o-transition: opacity 0.4s;
  -moz-transition: opacity 0.4s;
  transition: opacity 0.4s;
}

.alert-validate::after {
  content: "\f12a";
  font-family: FontAwesome;
  display: block;
  position: absolute;
  color: #c80000;
  font-size: 16px;
  bottom: calc((100% - 34px) / 2);
  -webkit-transform: translateY(50%);
  -moz-transform: translateY(50%);
  -ms-transform: translateY(50%);
  -o-transform: translateY(50%);
  transform: translateY(50%);
  right: 18px;
}

.alert-validate:hover:before {
  visibility: visible;
  opacity: 1;
}

@media (max-width: 992px) {
  .alert-validate::before {
    visibility: visible;
    opacity: 1;
  }
}


/*==================================================================
[ Contact more ]*/

.contact100-more {
  display: block;
  max-width: 960px;
  font-family: Raleway-SemiBold;
  font-size: 20px;
  color: #fff;
  line-height: 1.4;
  text-align: center;
  padding: 40px 0 10px 0;
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
  height: 9%;
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
 
 <script type="text/javascript">
     function validate(){
         var equityname=document.insertform.Equity.value;
         var lianame=document.insertform.Liabilities.value;
         var valun=document.insertform.Value.value;


         if(!equityname=="" && !lianame=="" ){
             alert("Select one equity or one liabilitiy at a time");
             return false;
         }
         if(valun<0){
             alert("Can not contain negative values");
             document.insertform.Value.focus();
             return false;
         }
         if(!valun=="" && equityname=="" && lianame==""){
             alert("Insert equity or liability");
             document.insertform.Value.focus();
             return false;
         }
          if(valun=="" && !equityname=="" && lianame==""){
             alert("Insert value");
             document.insertform.Value.focus();
             return false;
         }
         
          if(valun=="" && equityname=="" && !lianame==""){
             alert("Insert value");
             document.insertform.Value.focus();
             return false;
         }
         
         if(equityname=="" && lianame=="" && valun=="" ){
             alert("Insert equity or liability and value");
             return false;
         }
         
     }
     
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
<body >

 <div  style="   margin-left: 284px;
   margin-top:80px;
   "
   >  
 <div align="center">

  <h1     style="font-size: 38px;">Equities & Liabilities Management</h1>
     
  <br>
  <br>
        <h2>
         <a href="neweq">Add New Equities & Liabilities Management </a>
         &nbsp;&nbsp;&nbsp;
         <a href="listeq">List All Equities & Liabilities Management</a>
         
        </h2>

 
    
  <c:if test="${equitylia != null}">
   <form action="updateeq" name="updateform" method="post" class="contact100-form validate-form">
        </c:if>
        <c:if test="${equitylia == null}">
   <form action="inserteq" name="insertform" method="post" class="contact100-form validate-form">
        </c:if>

            <caption>
             <h2>
              <c:if test="${equitylia != null}">
               Edit 
              </c:if>
              <c:if test="${equitylia == null}">
               
              </c:if>
             </h2>
            </caption>
          <c:if test="${equitylia != null}">
           <input type="hidden" name="No" value="<c:out value='${equitylia.no}' />" />
          </c:if> 
          <div class="container-contact100">
            <div class="wrap-contact100">
                
                
                    <span class="contact100-form-title">Name of the equity</span>   
                 <select class="input100" type="text" name="Equity" placeholder="Equity name"
                   value="<c:out value='${equitylia.equity}' />"
                  />
                     
                     
                                          
                     <option disabled selected value>OWNER'S EQUITY</option>
                     <option value="Owner's Investment">Owner's Investment</option>  
                     <option value="Retained Earnings">Retained Earnings</option>
                     <option disabled value>---Select Option---</option>
                     <option selected="selected" value=""></option>
                     
                 
                </select>
                
                  
                  <br>
                
            
                        
                     <span class="contact100-form-title">Name of the liability</span> 
                
                 <select class="input100"  type="text" name="Liabilities" placeholder="Liabilities name" value="<c:out value='${equitylia.liabilities}' />"/>
                     
                     <option disabled value>CURRENT LIABILITIES</option>
                     <option value="Accounts Payable">Accounts Payable</option>  
                     <option value="Short-Term Loans">Short-Term Loans</option> 
                     <option value="Income Taxes Payable">Income Taxes Payable</option>  
                     <option value="Accrued Salaries and Wages">Accrued Salaries and Wages</option>
                     <option value="Unearned Revenue">Unearned Revenue</option>
                     <option value="Current Portion of Long-Term Debt">Current Portion of Long-Term Debt</option>
                     <option disabled value>LONG TERM LIABILITIES</option>
                     <option value="Long-Term Debt">Long-Term Debt</option>
                     <option value="Defferred Income Tax">Deferred Income Tax</option>
                     <option disabled value>---Select Option---</option> 
                     <option selected="selected" value=""></option>
                 
                </select>
                
                 <br>
                 
            
                <span class="contact100-form-title">Value(Rs):</span>
                   
                 <input type="number" name="Value" width="50%" class="input100"  placeholder="Value"
                   value="<c:out value='${equitylia.value}' />"
                 />
               
           
 
           
             <div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
              <button  class="contact100-form-btn" onClick="return validate()">
              Save
                                                </button>
              					</div>
				</div>
             
             
               
        </form>
                   </div>      
                 
    
          </div>
</div>
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