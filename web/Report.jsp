
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>


    



<html lang="en">
<head>
	<title>Finance Report</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images1/icons/favicon.ico"/>
<!--===============================================================================================-->
   
<!--===============================================================================================-->

<style>
    

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
}

.wrap-table100 {
  width: 960px;
  border-radius: 10px;

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
  width: 260px;
  padding-left: 40px;
}

.row .cell:nth-child(2) {
  width: -50px;
}

.row .cell:nth-child(3) {
  width: 350px;
}

.row .cell:nth-child(4) {
  width: 80px;
}


.table, .row {
  width: 90% !important;
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


@media print{
    #pbutton{
        display: none;
    }
    
}
    
    
    
</style>

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
       
       }
   
   
   
   
       
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
       


        while(rse.next())
{
    
    double geteq=rse.getDouble("value");
    toteq=toteq+geteq;

       }

       
       
while(rsl.next())
{
    
    Double getl=rsl.getDouble("value");
    totli=totli+getl;
                                           
 
       }

       double totliabiliti=totli+paybletot;
       
   %>






<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  ;
  var data = google.visualization.arrayToDataTable([
  ['Name', 'Percentage'],
  ['Assets', <%=totstock%>],
  ['Equities',<%=toteq%>],
  ['Liabilities',<%=totliabiliti%>],

]);

  // Optional; add a title and set the width and height of the chart
  var options = { 'width':400, 'height':350};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>



</head>
<body>
 
 
    <form method="post">
	<div class="limiter">
               <div class="h1">
                   <div class="container-table100">
			<div class="wrap-table100"h>
        <h1 align="center">Ruvini Aqua plants Lanka Finance report</h1>
    

        
      
         </div>
                         

					<div class="table">
                                            <tbody id="myTable">

						<div class="row header">
							<div class="cell">
							Name
							</div>
							<div class="cell">
								
							</div>
							<div class="cell">
								Value(Rs.)
							</div>
						</div>
 

   
   
   
   
   
        
    						<div class="row">
                                                    
                                                     <div class="cell" data-title="NO">
                                                    <b>Total Equipment stock</b>
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                        
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                    <%=equipstocktot%>
                                                    </div>


						</div>
                                                    
                    
                                                    
                                                    
                                                    
                                                      
    						<div class="row">
                                                    
                                                     <div class="cell" data-title="NO">
                                                     <b>Total Plant Stock</b>
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                        
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                    <%=plantstocktot%>
                                                    </div>


						</div>
                                                    
                                                    
                                                <div class="row">
                                                    
                                                     <div class="cell" data-title="NO">
                                                     <b>Total Chemical Stock</b>
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                        
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                    <%=chemitot%>
                                                    </div>


						</div>
   

   
   
   
   
   
   

                          
   						<div class="row">

                                                     <div class="cell" data-title="NO">
                                                         <b>Total assets:</b>
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                        <h1></h1>
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                        <%=totstock%>
                                                    </div>
                                                               

						</div>
           
   


   
                                                             <div class="row">

                                                     <div class="cell" data-title="NO">
                                                         <b>Total Equities</b>
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                        
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                        <%=toteq%>
                                                    </div>
                                                    </div>
   
   
   
   
       						<div class="row">
                                                    
                                                     <div class="cell" data-title="NO">
                                                     <b>Supplier payable</b>
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                     
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                    <%=paybletot%>
                                                    </div>
                                                </div>
                                                    
                                                     
    						<div class="row">
                                                    
                                                     <div class="cell" data-title="NO">
                                                    <b>Total Liabilities</b>
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                        
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                    <%=totliabiliti%>
                                                    </div>


						</div>  
                                                    
                                                    
                                                    
                                                    
                                                    <div class="row">
                                                    
                                                     <div class="cell" data-title="NO">
                                                 
                                                     </div>
        
                                                    <div class="cell" data-title="Name">
                                                          <div id="piechart"></div>
                                                    </div>
        
                                                    <div class="cell" data-title="Value">
                                                    
                                                    </div>


						</div>
                                                    
                                                    
                                             <input class="btn" id="pbutton" type="submit" value="print" onClick="window.print()"/>        
                                                    
                                                  
                                                    
             
                                                    
                                                                                                     
                            

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
                                        
			</div>
		</div>
	</div>

        </div>
  
                       

    </form>

	



</body>
</html>
