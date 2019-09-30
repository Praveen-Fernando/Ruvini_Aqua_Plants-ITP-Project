/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOfin;
import Modelfin.EmpFinance;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author ACER
 */
public class aEmpFin {
   private static String jdbcURL = "jdbc:mysql://localhost:3306/ruvinidb";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "";

    private static final String INSERT_EMPFIN_SQL = "INSERT INTO empfinance" + "  (empID, jobType, salary, totalOtHours, totalLeavs, totalShortLeavs, totalAttendence, bonus, gSal, netSal) VALUES " +" (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

    private static final String SELECT_EMPFIN_BY_ID = "select empID, jobType, salary, totalOtHours, totalLeavs, totalShortLeavs, totalAttendence, bonus, gSal, netSal from empfinance where empID =?";
    private static final String SELECT_ALL_EMPFIN = "select * from empfinance";
    private static final String DELETE_EMPFIN_SQL = "delete from empfinance where empID = ?;";
    private static final String UPDATE_EMPFIN_SQL = "update empfinance set jobType=?, salary=?, totalOtHours=?, totalLeavs=?, totalShortLeavs=?, totalAttendence=?, bonus=?, gSal=?, netSal=? where empID = ?;";
    
    //Testing
    private static final String select_em="SELECT attendence.empID,employee.jobType, employee.salary, attendence.totalOtHours, attendence.totalLeavs, attendence.totalShortLeavs, attendence.totalAttendence FROM employee INNER JOIN attendence ON employee.id = attendence.empID where empID =?";
    public aEmpFin() {}

    protected static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            
        } catch (SQLException e) {
            System.out.println("thada");
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    public static void insertEmpFin(EmpFinance empFinance) throws SQLException {
        System.out.println(INSERT_EMPFIN_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection();
           PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EMPFIN_SQL)) {
            System.out.println("thada kora");
            preparedStatement.setInt(1, empFinance.getEmpID());
            preparedStatement.setString(2, empFinance.getJobType());
            preparedStatement.setDouble(3, empFinance.getSalary());
            preparedStatement.setInt(4, empFinance.getTotalOtHours());
            preparedStatement.setInt(5, empFinance.getTotalLeavs());
            preparedStatement.setInt(6, empFinance.getTotalShortLeavs());
            preparedStatement.setInt(7, empFinance.getTotalAttendence());
            preparedStatement.setString(8, empFinance.getBonus());
            preparedStatement.setDouble(9, empFinance.getgSal());
            preparedStatement.setDouble(10, empFinance.getNetSal());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public static EmpFinance selectEmpFin(int empID) {
        EmpFinance empFinance = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_EMPFIN_BY_ID);) {
            preparedStatement.setInt(1, empID);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
           
            while (rs.next()) {
                String jobType = rs.getString("jobType");
                double salary = rs.getDouble("salary");
                int totalOtHours = rs.getInt("totalOtHours");
                int totalLeavs = rs.getInt("totalLeavs");
                int totalShortLeavs = rs.getInt("totalShortLeavs");
                int totalAttendence = rs.getInt("totalAttendence");
                double gSal = rs.getInt("gSal");
                String bonus = rs.getString("bonus");
                double netSal = rs.getDouble("netSal");
                int empID1 = rs.getInt("empID");
                empFinance = new EmpFinance(empID1,jobType, salary,  totalOtHours,  totalLeavs,  totalShortLeavs, totalAttendence, bonus, gSal, netSal);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return empFinance;
    }

    public static List < EmpFinance > selectAllUsers() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List < EmpFinance > empfin = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_EMPFIN);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
        
            while (rs.next()) {
                int empID = rs.getInt("empID");
                String jobType = rs.getString("jobType");
                double salary = rs.getDouble("salary");
                int totalOtHours = rs.getInt("totalOtHours");
                int totalLeavs = rs.getInt("totalLeavs");
                int totalShortLeavs = rs.getInt("totalShortLeavs");
                int totalAttendence = rs.getInt("totalAttendence");
                String bonus = rs.getString("bonus");
                double gSal = rs.getInt("gSal");
                double netSal = rs.getDouble("netSal");
                empfin.add(new EmpFinance(empID, jobType, salary, totalOtHours, totalLeavs, totalShortLeavs, totalAttendence, bonus, gSal, netSal));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return empfin;
    }

    public static boolean deleteEmpFin(int empID) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_EMPFIN_SQL);) {
            statement.setInt(1, empID);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public static boolean updateEmpFin(EmpFinance empFinance) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(UPDATE_EMPFIN_SQL);) {
            statement.setString(1, empFinance.getJobType());
            statement.setDouble(2, empFinance.getSalary());
            statement.setInt(3, empFinance.getTotalOtHours());
            statement.setInt(4, empFinance.getTotalLeavs());
            statement.setInt(5, empFinance.getTotalShortLeavs());
            statement.setInt(6, empFinance.getTotalAttendence());
             statement.setString(7, empFinance.getBonus());
            statement.setDouble(8, empFinance.getgSal());
            statement.setDouble(9, empFinance.getNetSal());
            statement.setInt(10, empFinance.getEmpID());
  
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
    
    public static EmpFinance selectEm(int empID) {
        EmpFinance empFinance = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(select_em);) {
            preparedStatement.setInt(1, empID);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
           
            while (rs.next()) {
                String jobType = rs.getString("jobType");
                double salary = rs.getDouble("salary");
                int totalOtHours=rs.getInt("totalOtHours");
                int totalLeavs=rs.getInt("totalLeavs");
                int totalShortLeavs=rs.getInt("totalShortLeavs");
                int totalAttendence=rs.getInt("totalAttendence");
                int empID1 = rs.getInt("empID");
                
                empFinance = new EmpFinance(empID1,jobType, salary, totalOtHours,  totalLeavs,  totalShortLeavs, totalAttendence);
             
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return empFinance;
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

