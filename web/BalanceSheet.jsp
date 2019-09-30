
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>


    



<html lang="en">
<head>
	<title>Balance Sheet</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images1/icons/favicon.ico"/>
<!--===============================================================================================-->
   
<!--===============================================================================================-->

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
   
    
    
    
    
    
    
    
    
    
    
/*//////////////////////////////////////////////////////////////////
[ FONT ]*/


@font-face {
  font-family: Poppins-Regular;
  src: url('../fonts/poppins/Poppins-Regular.ttf'); 
}

@font-face {
  font-family: Poppins-Bold;
  src: url('../fonts/poppins/Poppins-Bold.ttf'); 
}

/*//////////////////////////////////////////////////////////////////
[ RESTYLE TAG ]*/
* {
	margin: 0px; 
	padding: 0px; 
	box-sizing: border-box;
}
.h1{
    align:center;
    
    
}

body, html {
	height: 100%;
        font-family: sans-serif;
        margin: 0 !important; 
        padding: 0 !important;
        background:#d1ffe3;
       
}

/* ------------------------------------ */
a {
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

/* ------------------------------------ */
h1,h2,h3,h4,h5,h6 {margin: 0px;

}

p {margin: 0px;}

ul, li {
	margin: 0px;
	list-style-type: none;
}


/* ------------------------------------ */
input {
  display: block;
	outline: none;
	border: none !important;
}

textarea {
  display: block;
  outline: none;
}

textarea:focus, input:focus {
  border-color: transparent !important;
}

/* ------------------------------------ */
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
[ Table ]*/

.limiter {
  width: 100%;
  margin: 0 auto;
}

.container-table100 {
  width: 100%;
  min-height: 100vh;
  background: #d1ffe3;

  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-wrap: wrap;
  padding: 33px 30px;
  margin-left: 80px;
}

.wrap-table100 {
  width: 960px;
  border-radius: 10px;
  overflow: hidden;
}

.table {
  width: 100%;
  display: table;
  margin: 0;
/*      max-height: 100%;
    overflow: hidden;
    page-break-after: always;*/
}

@media screen and (max-width: 768px) {
  .table {
    display: block;
  }
}

.row {
  display: table-row;
  background: #fff;
}

.row.header {
  color: #ffffff;
  background:  #3CB371;
}

@media screen and (max-width: 768px) {
  .row {
    display: block;
  }

  .row.header {
    padding: 0;
    height: 0px;
  }

  .row.header .cell {
    display: none;
  }

  .row .cell:before {
    font-family: Poppins-Bold;
    font-size: 12px;
    color: #808080;
    line-height: 1.2;
    text-transform: uppercase;
    font-weight: unset !important;

    margin-bottom: 13px;
    content: attr(data-title);
    min-width: 98px;
    display: block;
  }
}

.cell {
  display: table-cell;
}

@media screen and (max-width: 768px) {
  .cell {
    display: block;
    width:100px;
  }
}

.row .cell {
  font-family: Poppins-Regular;
  font-size: 15px;
  color: #666666;
  line-height: 1.2;
  font-weight: unset !important;

  padding-top: 20px;
  padding-bottom: 20px;
  border-bottom: 1px solid #f2f2f2;
}

.row.header .cell {
  font-family: Poppins-Regular;
  font-size: 18px;
  color: #fff;
  line-height: 1.2;
  font-weight: unset !important;

  padding-top: 19px;
  padding-bottom: 19px;
}

.row .cell:nth-child(1) {
  width: 360px;
  padding-left: 40px;
}

.row .cell:nth-child(2) {
  width: 160px;
}

.row .cell:nth-child(3) {
  width: 250px;
}

.row .cell:nth-child(4) {
  width: 0px;
}


.table, .row {
  width: 70% !important;
}

.row:hover {
  background-color: #87f274;
  cursor: pointer;
}

@media (max-width: 768px) {
  .row {
    border-bottom: 1px solid #f2f2f2;
    padding-bottom: 18px;
    padding-top: 30px;
    padding-right: 15px;
    margin: 0;
  }
  
  .row .cell {
    border: none;
    padding-left: 30px;
    padding-top: 16px;
    padding-bottom: 16px;
  }
  .row .cell:nth-child(1) {
    padding-left: 30px;
  }
  
  .row .cell {
    font-family: Poppins-Regular;
    font-size: 18px;
    color: #555555;
    line-height: 1.2;
    font-weight: unset !important;
  }

  .table, .row, .cell {
    width: 100% !important;
  }
}

.btn{
    width: 100px;
    font-size:30px;
    boder:20px;
    padding: 15px 20px;
    
}
.all{
    padding-left: 100px;
    margin-top: 30px;
}
    
    
    
</style>



<script>
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
 
    <div class="all">
    <form method="post">
	<div class="limiter">
               <div class="h1">
                   <div class="container-table100">
			<div class="wrap-table100"h>
                            <h1 align="center"><u>Ruvini Aqua plants Lanka Company Balance Sheet</u></h1>
     
    
        <center>
            <br>
		
               
                 &nbsp;
                <a href="listeq">List All Equities & Liabilities</a>
                &nbsp;
                <a href="listwwwwww">List All Assets</a>
         &nbsp; 
         <a href="mainfinance.jsp">Back to Administrator Finance Management Section</a>
        </center>
        
      
         </div>
                         

					<div class="table">
                                            <tbody id="myTable">

						<div class="row header">
							<div class="cell">
								NO
							</div>
							<div class="cell">
								Name
							</div>
							<div class="cell">
								Value(Rs.)
							</div>
						</div>
                                            <div class="row">
                                                <div class="cell">
                                                    
                                                    <h2>Assets</h2>
                                                    
                                                </div>
                                                <div class="cell">
                                                </div>
                                                <div class="cell">
                                                </div>
                                            </div>
   <%
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/ruvinidb";
       String username="root";
       String password="";
       String query="select * from assets;";
       String queryE="select no,equity,value from equityliab where liabilities='';";
       String queryL="select no,liabilities,value from equityliab where equity='';";
       String queryplantstock="select price from plantstock";
       String queryequipmentstock="select price from equipmentstock";
       String queryechemicalstock="select price from chemicalstock";
       String querypayable="select * from users";
       

       
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       Statement stmt1=conn.createStatement();
       Statement stmt2=conn.createStatement();
       Statement stmt3=conn.createStatement();
       Statement stmt4=conn.createStatement();
       Statement stmt5=conn.createStatement();
       Statement stmt6=conn.createStatement();
       
       ResultSet rs=stmt.executeQuery(query);
       ResultSet rse=stmt1.executeQuery(queryE);
       ResultSet rsl=stmt2.executeQuery(queryL);
       ResultSet rsplant=stmt3.executeQuery(queryplantstock);
       ResultSet rsequip=stmt4.executeQuery(queryequipmentstock);
       ResultSet rsechemi=stmt5.executeQuery(queryechemicalstock);
       ResultSet rspayable=stmt6.executeQuery(querypayable);
       
       
       
       double totasset=0;
       double toteq=0;
       
       double totli=0;
       
       double plantstocktot=0;
       double equipstocktot=0;
       double chemitot=0;
       double totstock=0;
       double paybletot=0;
       
       
       
        
       while(rs.next())
       {
       
          double one=rs.getDouble("Value");
          totasset=totasset+one;
            
       
   %>                                                        
						<div class="row">
                                                    
                                                     <div class="cell" data-title="NO">
                                                     <%=rs.getInt("NO") %>
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                    <%=rs.getString("Name") %>
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                    <%=rs.getDouble("Value") %>
                                                    </div>


						</div>
                                                    
         <%
       }
   %>
   
   
    <%
       
       while(rsplant.next())
       {
        
         double plant=rsplant.getDouble("price");
          plantstocktot=plantstocktot+plant;
   
         
       }
       
       while(rsequip.next())
       {

          double equip=rsequip.getDouble("price");
          equipstocktot=equipstocktot+equip;
          
       }
       

       while(rsechemi.next())
       {

          double cm=rsechemi.getDouble("price");
          chemitot=chemitot+cm;
          
       }
       
       while(rspayable.next())
       {

          double pay=rspayable.getDouble("payble");
          paybletot=paybletot+pay;
          
       }

       totstock=totasset+equipstocktot+plantstocktot+chemitot;
       

       
   %> 
   
   
   
   
    						<div class="row">
                                                    
                                                     <div class="cell" data-title="NO">
                                                     32
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                        <b>Total Equipment stock</b>
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                    <%=equipstocktot%>
                                                    </div>


						</div>
                                                    
                                                    
                                                    
                                                      
    						<div class="row">
                                                    
                                                     <div class="cell" data-title="NO">
                                                     35
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                        <b>Total Plant Stock</b>
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                    <%=plantstocktot%>
                                                    </div>


						</div>
                                                    
                                                    
                                                <div class="row">
                                                    
                                                     <div class="cell" data-title="NO">
                                                     37
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                        <b>Total Chemical Stock</b>
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                    <%=chemitot%>
                                                    </div>


						</div>
   
   
   
   
   
   
   

                          
   						<div class="row">

                                                     <div class="cell" data-title="NO">
                                                     
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                        <h1>Total:</h1>
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                        <h1><%=totstock%></h1>
                                                    </div>
                                                               

						</div>
           
   
                                               <div class="row">
                                                <div class="cell">
                                                    
                                                    <h2>Equity</h2>
                                                    
                                                </div>
                                                <div class="cell">
                                                </div>
                                                <div class="cell">
                                                </div>
                                            </div>
<%
while(rse.next())
{
    
    double geteq=rse.getDouble("value");
    toteq=toteq+geteq;
 %>
                                                    <div class="row">
                                                    
                                                     <div class="cell" data-title="NO">
                                                     <%=rse.getInt("no") %>
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                    <%=rse.getString("equity") %>
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                    <%=rse.getDouble("value") %>
                                                    </div>                                    
                                                  
                                                </div>   
                                                   
                                                   
 <%
       }
   %>
   
   
                                                <div class="row">
                                                <div class="cell">
                                                    
                                                    <h2>Liabilities</h2>
                                                    
                                                </div>
                                                <div class="cell">
                                                </div>
                                                <div class="cell">
                                                </div>
                                            </div>
   
<%
       
       
while(rsl.next())
{
    
    Double getl=rsl.getDouble("value");
    totli=totli+getl;
 %>
                                                    <div class="row">
                                                    
                                                     <div class="cell" data-title="NO">
                                                     <%=rsl.getInt("no")%>
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                    <%=rsl.getString("liabilities")%>
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                    <%=rsl.getDouble("value") %>
                                                    </div>                                    
                                                  
                                                    </div>   
                                                   
                                                   
 <%
       }
   %>
   
       						<div class="row">
                                                    
                                                     <div class="cell" data-title="NO">
                                                     39
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                        <b>Supplier payable</b>
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                    <%=paybletot%>
                                                    </div>
                                                </div>
   
   
   
   
                                                    <div class="row">

                                                     <div class="cell" data-title="NO">
                                                     
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                        <h1>Total:</h1>
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                        <h1><%=toteq+totli+paybletot%></h1>
                                                    </div>
                                                    </div>
                                                    
                                                          <%
                                                            String message;
                                                            if(totstock==toteq+totli+paybletot && totasset!=0 && toteq!=0 && totli!=0)
                                                            {
                                                            
                                                            
                                                          message="Equity and Liabilities Balanced";
                                                         
                                                            }
                                                  
                                                            else{
                                                         
                                                            message="Equity and Liabilities Not Balanced!Check again";
                                                            
                                                            }
                                                            %>
                                                            
                                                <div class="row">
                                                <div class="cell">
                                                    
                                                    <h2><%=message%></h2>
                                                    
                                                </div>
                                                <div class="cell">
                                                </div>
                                                <div class="cell">
                                                </div>
                                            </div>
                                                    


 <%
        rs.close();
        rse.close();
        rsl.close();
        rsplant.close();
        rsequip.close();
        rsechemi.close();
        stmt.close();
        stmt1.close();
        stmt2.close();
        stmt3.close();
        stmt4.close();
        stmt5.close();
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
                                        </tbody>
			</div>
		</div>
	</div>

        </div>
  
                       

    </form>
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
