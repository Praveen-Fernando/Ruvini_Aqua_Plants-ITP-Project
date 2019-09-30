




<%@page import="com.Employee"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>  
    
    
   
    
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
  border: 5px solid green;
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
 color:#AAAAAA;
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
    background-color:#006600;
/*    background-color:#302e2e;*/
  color: white;
}
   
@media print{
    #printD{
        display:none;
    }
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
    
    </script>
    
 </head>

   
    
       
  <body>     
       
      <br>  
      <br>
      <br>
    
      
      
      
  
       
          
          <!--    <img src="ll.png" alt="Admin" />  -->    
                
   
                        <h2>Reports</h2>

   
                        <Input style="background-color:#339900;color:black;" id="myInput" type="text" placeholder="Search..."> </Input>
  
     <h2>Plant stock</h2>
  
 
<pre>      
                       <Input id="printD" type="submit" value="print" onclick="window.print()"></Input>
      
</pre>
      
  
<table id="t01">
  <tr>
      
                        <th>Plant Code</th>
			<th>Plant Name</th>
			<th>Quantity</th>
			<th>Price</th>
                        <th>Date</th>
<!--                        <th>UPDATE</th>
                        <th>Delete</th>
                        <th>Re-order items</th> -->
  </tr>
 
  
 



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
                        
//		    out.print("<td class=\"text-center\"><a href =\"newtest2.jsp?u="+rs.getString("plantcode")+"\" class = \"btn btn-warning\"><button class=buttonedit> Edit</button> </a></td><td><a href =\"delete?u=" +rs.getString("plantcode")+" \"class =\"btn btn-danger \"><button class=buttondelete> Delete</button> </a></td><td><a href =\"tosupplier.jsp?u=" +rs.getString("plantcode")+" \"class =\"btn btn-danger \"><button class=buttonreorder>Re-order</button> </a></td>");
//			out.print("</tr>");
			
                        }
                         
                    }catch(Exception ex){
                    
			out.print(""+ex);
                        
		}
		
		%>


</tbody>

 
</table> 

  <br>
    <br>
      <br>
      
      
      
      
      <h2>  Chemical Stock</h2>    
      
<!--      <Input style="background-color:#0069d9;color: black;" id="myInput" type="text" placeholder="Search..."> </Input>-->
<table id="t01">
  <tr>
      
                        <th>Chemical Code</th>
			<th>Chemical Type</th>
			<th>Weight</th>
			<th>Price</th>
                        <th>Date</th>
<!--                        <th>Update</th>
                        <th>Delete</th>
                         <th>Re-order</th>-->
  </tr>
 
  
 



<tbody  id="myTable">
    
	  <%  
//            Connection con;
//	    Statement st;
//	    ResultSet rs;
	   %>
           
	   <% 
	  // String url,user,pass;
	   
	   
	       url="jdbc:mysql://localhost/ruvinidb";//dbname
	       user="root";
	       pass="";
               
	      try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con=DriverManager.getConnection(url,user,pass);
	             
	                String data="select * from chemicalstock ";
			st=con.createStatement();
			rs= st.executeQuery(data);
			while (rs.next()){
			out.print("<tr>");
			out.print("<td>"+rs.getString("chemicalcode")+"</td>");
			out.print("<td>"+rs.getString("chemicaltype")+"</td>");
			out.print("<td>"+rs.getString("weight")+"</td>");
			out.print("<td>"+rs.getString("price")+"</td>");
			out.print("<td>"+rs.getString("date")+"</td>");
			
                        
//			out.print("<td class=\"text-center\"><a href =\"newtest3.jsp?u="+rs.getString("chemicalcode")+"\" class = \"btn btn-warning\"><button class=buttonedit> Edit</button> </a></td><td><a href =\"deletec?u=" +rs.getString("chemicalcode")+" \"class =\"btn btn-danger \"><button class=buttondelete> Delete</button> </a></td><td><a href =\"tosupplierC.jsp?u=" +rs.getString("chemicalcode")+" \"class =\"btn btn-danger \"><button class=buttonreorder> Re-order</button> </a></td>");
//			out.print("</tr>");
			
			}
                        
		}catch(Exception ex){
                    
			out.print(""+ex);
                        
		}
		
		%>


 
</tbody>
 
</table>
      
                <br> 
                <br>
                <br>
                <br>
                
                
                <h2>  Equipment Stock</h2>
                
                
                <table id="t01">
  <tr>
      
                        <th>Equipment Code</th>
			<th>Equipment Type</th>
			<th>Quantity</th>
			<th>Price</th>
                        <th>Date</th>
<!--                        <th>Update</th>
                        <th>Delete</th>
                        <th>Re-order</th>-->
  </tr>
 
  
 



  <tbody id="myTable">
	<%   
//            Connection con;
//	    Statement st;
//	    ResultSet rs;
	   %>
           
	   <% 
	 //  String url,user,pass;
	   
	   
	       url="jdbc:mysql://localhost/ruvinidb";//dbname
	       user="root";
	       pass="";
               
	      try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con=DriverManager.getConnection(url,user,pass);
	             
	                String data="select * from equipmentstock ";
			st=con.createStatement();
			rs= st.executeQuery(data);
			while (rs.next()){
			out.print("<tr>");
			out.print("<td>"+rs.getString("equipmentcode")+"</td>");
			out.print("<td>"+rs.getString("equipmenttype")+"</td>");
			out.print("<td>"+rs.getString("quantity")+"</td>");
			out.print("<td>"+rs.getString("price")+"</td>");
			out.print("<td>"+rs.getString("date")+"</td>");
			
                        
//			out.print("<td class=\"text-center\"><a href =\"newtest4.jsp?u="+rs.getString("equipmentcode")+"\" class = \"btn btn-warning\"><buuton class=buttonedit> Edit</button> </a></td><td><a href =\"deletee?u=" +rs.getString("equipmentcode")+" \"class =\"btn btn-danger \"><button class=buttondelete> Delete</button> </a></td><td><a href =\"tosupplierE.jsp?u=" +rs.getString("equipmentcode")+" \"class =\"btn btn-danger \"><button class=buttonreorder>Re-order</buttoon> </a></td>");
//			out.print("</tr>");
			
			}
                        
		}catch(Exception ex){
                    
			out.print(""+ex);
                        
		}
		
		%>


  </tbody>
 
</table>
      
      
  <center>
<!--       <form method="post" name="resetform" action="index1.jsp">	
				
				
				<input type="submit" name="name" value="Back to previous page">


           </form>
          
          
           <form method="post" name="resetform" action="indexNew.jsp">	
				
				
				<input type="submit" name="name" value="Back to main page">


           </form>-->
         
<!--      <form action=""> 
      Number of records : <input type="text" name="FirstName" value=""><br>
      
      </form>-->
          
</center>

<!--      <footer class="footer-distributed">

			<div class="footer-left">
          <img src="download.png">
				<h3>About<span>Eduonix</span></h3>

				<p class="footer-links">
					<a href="#">Home</a>
					|
					<a href="#">Blog</a>
					|
					<a href="#">About</a>
					|
					<a href="#">Contact</a>
				</p>

				<p class="footer-company-name">© 2019 Ruvini Aqua Plants Pvt.Ltd.</p>
			</div>

			<div class="footer-center">
				<div>
					<i class="fa fa-map-marker"></i>
					  <p><span>309 - Ruvini shop,
						 Bldg. No. A - 1, Sector - 1</span>
						Moratuwa,Sri Lanka - 400710</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+94 717615491</p>
				</div>
				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:support@eduonix.com">RuviniAquaPlants@gmail.com</a></p>
				</div>
			</div>
			<div class="footer-right">
				<p class="footer-company-about">
					<span>About the company</span>
					We offer training and skill building courses across Technology, Design, Management, Science and Humanities.</p>
				<div class="footer-icons">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-instagram"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-youtube"></i></a>
				</div>
			</div>
		</footer>-->
     

</body>
</html>
