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

import Modelfin.EquityLia;


public class EquityLiaDAO {
    private  static  String jdbcURL = "jdbc:mysql://localhost:3306/ruvinidb";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "";

    private static final String INSERT_SQL1 = "INSERT INTO equityliab" + "  (equity, liabilities, value) VALUES " + " (?, ?, ?);";

    private static final String SELECT_BY_ID1 = "select no,equity,liabilities,value from equityliab where no =?";
    private static final String SELECT_USERS1 = "select * from equityliab";
    private static final String DELETE_SQL1 = "delete from equityliab where no = ?;";
    private static final String UPDATE_SQL1 = "update equityliab set equity = ?,liabilities= ?,value=? where no = ?;";

    public EquityLiaDAO() {}

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
    
    
    public static void insertEquityLia(EquityLia equitylia) throws SQLException {
        System.out.println(INSERT_SQL1);
         System.out.println("XFH");
        
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); 
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL1)) {
            preparedStatement.setString(1,equitylia.getEquity() );
            preparedStatement.setString(2,equitylia.getLiabilities());
            preparedStatement.setDouble(3,equitylia.getValue());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    
      public static EquityLia selectEquityLia(int no) {
       EquityLia equitylia = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_ID1);) {
            preparedStatement.setInt(1, no);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String equity = rs.getString("equity");
                String liabilities = rs.getString("liabilities");
                Double value = rs.getDouble("value");
                equitylia = new EquityLia(no,equity,liabilities,value);
            }
        } catch (SQLException e) {
           printSQLException(e);
        }
        return equitylia;
    }
      
      
    public static List < EquityLia > selectAllEquityLia() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List < EquityLia > equitylia = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USERS1);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int no = rs.getInt("no");
                String equity = rs.getString("equity");
                String  liabilities= rs.getString("liabilities");
                double value = rs.getDouble("value");
               
                equitylia.add(new EquityLia(no,equity,liabilities,value));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return equitylia;
    }
    
    
 public static boolean deleteEquityLia(int No) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); 
            PreparedStatement statement = connection.prepareStatement(DELETE_SQL1);) {
            statement.setInt(1, No);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
 
  public static boolean updateEquityLia(EquityLia equitylia) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); 
        PreparedStatement statement = connection.prepareStatement(UPDATE_SQL1);) {
        statement.setString(1,equitylia.getEquity() );
        statement.setString(2,equitylia.getLiabilities());
        statement.setDouble(3,equitylia.getValue());
        
        statement.setInt(4,equitylia.getNo());

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
    
