/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOfin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import Modelfin.employee;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sudana
 */
public class employeeDAO {
   private  static  String jdbcURL = "jdbc:mysql://localhost:3306/ruvinidb";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "";

    private static final String INSERT_SQL = "INSERT INTO employee" + "  ( NIC, name, birthday, gender, email, phone, salary, jobType, registerDate) VALUES " + " (?, ?,?,?,?,?,?,?,?);";

    private static final String SELECT_BY_ID = "select id, NIC, name, birthday, gender, email, phone, salary, jobType, registerDate from employee where id =?";
    private static final String SELECT_USERS = "select * from employee";
    private static final String DELETE_SQL = "delete from employee where id = ?;";
    private static final String UPDATE_SQL = "update employee set NIC=?, name=?, birthday=?, gender=?, email=?, phone=?, salary=?, jobType=?, registerDate=? where id = ?;";

    public employeeDAO() {}

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
    
    
    public static void insertemployee(employee emp) throws SQLException {
        System.out.println(INSERT_SQL);
         System.out.println("XFH");
        
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); 
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL)) {
            preparedStatement.setString(1, emp.getNIC());
            preparedStatement.setString(2, emp.getName());
            preparedStatement.setString(3, emp.getBirthday());
            preparedStatement.setString(4, emp.getGender());
            preparedStatement.setString(5,emp.getEmail());
            preparedStatement.setInt(6, emp.getPhone());
            preparedStatement.setDouble(7,  emp.getSalary());
            preparedStatement.setString(8, emp.getJobType());
            preparedStatement.setString(9,emp.getRegisterDate());
            
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    
      public static employee selectemployee(String id) {
        employee emp = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_ID);) {
            preparedStatement.setString(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String NIC=rs.getString("NIC");
                String name = rs.getString("name");
                String brithday=rs.getString("birthday");
                String gender=rs.getString("gender");
                String email=rs.getString("email");
                int phone =rs.getInt("phone");
                double salary=rs.getDouble("salary");
                String jobType=rs.getString("jobType");
                String registerDate=rs.getString("registerDate");
                emp = new employee(id, NIC, name, brithday, gender, email, phone, salary, jobType, registerDate);
            }
        } catch (SQLException e) {
           printSQLException(e);
        }
        return emp;
    }
      
      
    public static List < employee > selectAllemployee() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List < employee > emp = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USERS);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String id = rs.getString("id");
                String NIC=rs.getString("NIC");
                String name = rs.getString("name");
                String brithday=rs.getString("birthday");
                String gender=rs.getString("gender");
                String email=rs.getString("email");
                int phone =rs.getInt("phone");
                double salary=rs.getDouble("salary");
                String jobType=rs.getString("jobType");
                String registerDate=rs.getString("registerDate");
               
                emp.add(new employee(id, NIC, name, brithday, gender, email, phone, salary, jobType, registerDate));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return emp;
    }
    
    
 public static boolean deleteemployee(String id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_SQL);) {
            statement.setString(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
 
  public static boolean updateemployee(employee emp) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_SQL);) {
            statement.setString(1, emp.getNIC());
            statement.setString(2, emp.getName());
            statement.setString(3, emp.getBirthday());
            statement.setString(4,emp.getGender());
            statement.setString(5, emp.getEmail());
            statement.setInt(6, emp.getPhone());
            statement.setDouble(7, emp.getSalary());
            statement.setString(8, emp.getJobType());
            statement.setString(9, emp.getRegisterDate());
            statement.setString(10, emp.getId());

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
