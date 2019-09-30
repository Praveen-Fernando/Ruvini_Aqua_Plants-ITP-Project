<%-- 
    Document   : report
    Created on : Sep 28, 2019, 10:39:27 AM
    Author     : sudana
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
/*table*/
#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}
#myTable th {
  text-align: left;
  padding: 12px;
  background-color: #4CAF50;
}
#myTable td {
  text-align: left;
  padding: 12px;
  
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
/*aa*/
h1{
    text-align: center;
}
/*button*/
.button {border-radius: 12px;
         
  		 background-color: white; 
  		 color: black; 
  		 border: 2px solid #4CAF50;
         font-size:20px;
         box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19)}
.button:hover{
	background-color: #4CAF50;
  	color: white;}

@media print{
    #printrr{
        display:none;
    }
}

        </style>
        <title>report</title>
    </head>
    <body>
        <div style="    margin-top: 166px;
    margin-left: 113px;
    margin-right: 113px;">
        <h1 >Employee Attendance</h1>
        <table id="myTable">
            <tr>
                <th>Attendance ID</th>
                <th>Employee ID</th>
                <th>Total OT Hours</th>
                <th>Total leaves</th>
                <th>Total Short-Leaves</th>
                <th>Total Attendance</th>
            </tr>
            <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                String url="jdbc:mysql://localhost:3306/ruvinidb";
                String uname="root";
                String password="";
                String query="select * from attendence;";
                
                Connection conn=DriverManager.getConnection(url, uname,password);
                Statement stmt=conn.createStatement();
                
                ResultSet rs=stmt.executeQuery(query);
                
                while(rs.next())
                {
          
            %>
            <tr>
                <td>
                    <%=rs.getString("attID")%>
                </td>
                <td>
                    <%=rs.getString("empID")%>
                </td>
                <td>
                    <%=rs.getString("totalOtHours")%>
                </td>
                <td>
                    <%=rs.getString("totalLeavs")%>
                </td>
                <td>
                    <%=rs.getString("totalShortLeavs")%>
                </td>
                <td>
                    <%=rs.getString("totalAttendence")%>
                </td>
            </tr>
            <%
            }
            %>
            
            <%
            rs.close();
            stmt.close();
            conn.close();
            }
catch(Exception e){
e.printStackTrace();
}
            %>
        </table>
        <div align="right">
            <br>
          
        <input id="printrr" type="submit" class="button" value="Print" onclick="window.print()">
        </div>
        </div>
    </body>
</html>
