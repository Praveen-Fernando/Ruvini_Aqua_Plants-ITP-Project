<%-- 
    Document   : calsal
    Created on : Sep 22, 2019, 1:03:35 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<style>
body,p {
 font-family:arial;
 font-size:16px;
 font-weight:bolder;
 }
 
.container {
width: 500px;
clear: both;
}
.container input {
width: 100%;
clear: both;
}
</style>
    </head>
    <body>
        <div class="container">
       <h3> Payroll System </h3>
<br/>Employee's Name
<input type="text" id="emp_name" name="emp_name">
<br>
<br/> Basic Salary
<input type="text" id="bSal" name="daily_rate">
<br>
<br/> ot
<input type="text" id="ot" name="no_days_work">
<br>
<br>
<input type="text" id="demo2" >

<p id="demo"></p>
<!--<p id="demo2"></p>-->
<p id="demo3"></p>
<br><br>
<button onclick="Calsalary()">Calculate Salary</button>

</div>
<script>
 function Calsalary() {
	var bSal = document.getElementById("bSal").value;
	var ot = document.getElementById("ot").value;
	var epf = 
      
        gross_pay= parseFloat(bSal)+ (ot * 60);
        net_sal =gross_pay - (gross_pay *8/100) ;
	 
 results = results2 ="Gross Salary :" + gross_pay.toFixed(2)+".";
          results3 ="Net Salary :" + net_sal.toFixed(3)+".";
 	

//	 document.getElementById("demo2").innerHTML = results2;
//          document.getElementById("demo3").innerHTML = results3;
         
        document.getElementById("demo2").value = results2;
          document.getElementById("demo3").value = results3; 
	 
 }
</script>
    </body>
</html>
