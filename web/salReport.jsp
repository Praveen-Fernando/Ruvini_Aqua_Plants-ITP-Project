<%-- 
    Document   : salReport
    Created on : Sep 27, 2019, 11:17:02 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Report</title>
        
        <style>
           
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 90%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: #333;
}
body {
    background-image: url("WEB-INF/im3.jpg");
}
.no-background {
    padding-top: 165px;
    padding-left: 657px;
}

@media print{
    #printy{
        display:none;
    }
}
        </style>
    </head>
    <body   background-image: url('');>
                <%
	String keyword = "";
	if(request.getParameter("txtKeyword") != null) {
		keyword = request.getParameter("txtKeyword");
	}
%>
    
              
        <%
	Connection connect = null;
	Statement s = null;
	
	try {
            
		Class.forName("com.mysql.jdbc.Driver");
		
		connect =  DriverManager.getConnection("jdbc:mysql://localhost:3306/ruvinidb", "root", "");
		
		s = connect.createStatement();
		                
		String sql = "select * from empfinance WHERE empID like '%" +  keyword + "%' ";
		
		System.out.println(sql);
		
		ResultSet rec = s.executeQuery(sql);
                
         double totalGross =0;
         double totalNetSal = 0;
          double epf =0;
         int nEmps = 0;
		%>
                
                <div style="padding-left: 90px; margin-top: 108px;">
                    <h1 style="padding-left: 37px;">RUVINI AQUA PLANTS(PVT) LTD</h1>
                    <h1 style="padding-left: 40px;" >Monthly Employee Finance Report</h1>
	<form name="frmSearch" method="get" action="salReport.jsp">
	  <table id="customers" width="599" border="1">
	    <tr>
	      <th>Employee ID
	      <input name="txtKeyword" type="text" id="txtKeyword" value="<%=keyword%>" s>
              <input type="submit" value="Search" style="background: #28a745;"></th>
	    </tr>
	  </table>
	</form>
		<table id="customers" width="600" border="1">
		  <tr>
		    <th width="91"> <div align="center">Emp ID </div></th>
		    <th width="59"> <div align="center">Job Type</div></th>
		    <th width="71"> <div align="center">BSalary </div></th>
                    <th width="71"> <div align="center">TotalOtHours </div></th>
                    <th width="71"> <div align="center">Bonus </div></th>
                    <th width="71"> <div align="center">Gross Salary(RS)</div></th>
                    <th width="71"> <div align="center">Net Salary(Rs) </div></th>
                    
		  </tr>	
			<%while((rec!=null) && (rec.next())) { 
                            nEmps = nEmps+ 1;
                            double gSal= rec.getDouble("gSal");
                            totalGross = totalGross+gSal;
                             epf = totalGross*8/100;
                            double netSal= rec.getDouble("netSal");
                            totalNetSal = totalNetSal+netSal;
                            
                        %>
				  <tr>
				   <td><div align="center"><%=rec.getString("empID")%></div></td>		    
				    <td align="right"><%=rec.getString("jobType")%></td>
				    <td align="right"><%=rec.getDouble("salary")%></td>
                                    <td align="right"><%=rec.getInt("totalOtHours")%></td>
                                    <td align="right"><%=rec.getString("bonus")%></td>
                                    <td align="right"><%=rec.getDouble("gSal")%></td>
                                    <td align="right"><%=rec.getDouble("netSal")%></td>
                                  

				  </tr>  
	       	<%}%>

                  
	  	</table> 
                
                                        
                                            
                                   <h1 style="font-size: 25px">
                                    No of Employees: <%=nEmps%><br>
                                    Total Gross Salaries: <%=totalGross%><br>
                                    Total Net Salaries to Pay: <%=totalNetSal%><br>
                                    Total Epf Amount <%=epf%><br></h1>
                                    
                                    <td>  <input id="printy" type="submit" value="print" onclick="window.print()"</input></td>
                             </div>       
	    <%	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
		try {
			if(s!=null){
				s.close();
				connect.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	%>
        
          
    </body>
</html>
