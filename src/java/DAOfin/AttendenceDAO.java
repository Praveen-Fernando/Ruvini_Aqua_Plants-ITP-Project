/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOfin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Modelfin.attendence;

public class AttendenceDAO {
    private  static  String jdbcURL = "jdbc:mysql://localhost:3306/ruvinidb";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "";

    private static final String INSERT_SQL = "INSERT INTO attendence" + "  (empID, totalOtHours, totalLeavs, totalShortLeavs, totalAttendence) VALUES " + " (?, ?, ?, ?, ?);";

    private static final String SELECT_BY_ID = "select attID,empID, totalOtHours, totalLeavs, totalShortLeavs, totalAttendence from attendence where attID =?";
    private static final String SELECT_USERS = "select * from attendence";
    private static final String DELETE_SQL = "delete from attendence where attID = ?;";
    private static final String UPDATE_SQL = "update attendence set empID=?, totalOtHours=?, totalLeavs=?, totalShortLeavs=?, totalAttendence=? where attID = ?;";

    public AttendenceDAO() {}

     protected static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }
    
    
    public static void insertAttendence(attendence attend) throws SQLException {
        System.out.println(INSERT_SQL);
         System.out.println("XFH");
        
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); 
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL)) {
            preparedStatement.setInt(1, attend.getEmpID());
            preparedStatement.setInt(2, attend.getTotalOtHours());
            preparedStatement.setInt(3,attend.getTotalLeavs());
            preparedStatement.setInt(4, attend.getTotalShortLeavs());
            preparedStatement.setInt(5, attend.getTotalAttendence());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    
      public static attendence selectAttendence(int attID) {
        attendence attend = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_ID);) {
            preparedStatement.setInt(1, attID);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int empID = rs.getInt("empID");
                int totalOtHours = rs.getInt("totalOtHours");
                int totalLeavs =rs.getInt("totalLeavs");
                int totalShortLeavs=rs.getInt("totalShortLeavs");
                int totalAttendenc=rs.getInt("totalAttendence");
                attend = new attendence(attID, empID, totalOtHours, totalLeavs, totalShortLeavs, totalAttendenc);
            }
        } catch (SQLException e) {
           printSQLException(e);
        }
        return attend;
    }
      
      
    public static List < attendence > selectAllAttendence() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List < attendence > attend = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USERS);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int attID = rs.getInt("attID");
                int empID = rs.getInt("empID");
                int totalOtHour = rs.getInt("totalOtHours");
                int totalLeavs=rs.getInt("totalLeavs");
                int totalShortleavs=rs.getInt("totalShortLeavs");
                int totalAttendece=rs.getInt("totalAttendence");
               
                attend.add(new attendence(attID, empID, totalOtHour, totalLeavs, totalShortleavs, totalAttendece));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return attend;
    }
    
    
 public static boolean deleteAttendence(int attID) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_SQL);) {
            statement.setInt(1, attID);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
 
  public static boolean updateAttendence(attendence attend) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_SQL);) {
            statement.setInt(1, attend.getEmpID());
            statement.setInt(2, attend.getTotalOtHours());
            statement.setInt(3, attend.getTotalLeavs());
            statement.setInt(4, attend.getTotalShortLeavs());
            statement.setInt(5, attend.getTotalAttendence());

             statement.setInt(6, attend.getAttID());
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
  
  
  private static void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
  }

    
}
