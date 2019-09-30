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

import Modelfin.assets;
/**
 *
 * @author Shane
 */
public class assetsdao {
private  static  String jdbcURL = "jdbc:mysql://localhost:3306/ruvinidb";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "";

    private static final String INSERT_SQL = "INSERT INTO assets" + "  (Name, Value) VALUES " + " (?, ?);";

    private static final String SELECT_BY_ID = "select NO,Name,Value from assets where NO =?";
    private static final String SELECT_USERS = "select * from assets";
    private static final String DELETE_SQL = "delete from assets where NO = ?;";
    private static final String UPDATE_SQL = "update assets set Name = ?,Value= ? where NO = ?;";

    public assetsdao() {}

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
    
    
    public static void insertassets(assets asset) throws SQLException {
        System.out.println(INSERT_SQL);
         System.out.println("XFH");
        
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); 
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL)) {
            preparedStatement.setString(1, asset.getName());
            preparedStatement.setDouble(2, asset.getValue());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
            System.out.println("asset bb");
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    
      public static assets selectassets(int no) {
        assets asset = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_ID);) {
            preparedStatement.setInt(1, no);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String name = rs.getString("Name");
                Double Value = rs.getDouble("Value");
                asset = new assets(no, name,Value);
            }
        } catch (SQLException e) {
           printSQLException(e);
        }
        return asset;
    }
      
      
    public static List < assets > selectAllAssets() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List < assets > asset = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USERS);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int no = rs.getInt("NO");
                String name = rs.getString("Name");
                double value = rs.getDouble("Value");
               
                asset.add(new assets(no, name,value));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return asset;
    }
    
    
 public static boolean deleteAsset(int no) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_SQL);) {
            statement.setInt(1, no);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
 
  public static boolean updateAsset(assets asset) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_SQL);) {
            statement.setString(1, asset.getName());
            statement.setDouble(2, asset.getValue());
            statement.setInt(3, asset.getNO());

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
