/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOfin;

/**
 *
 * @author HP
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Modelfin.Userdelivery;
/**
 *
 * @author HP





/**
 * AbstractDAO.java This DAO class provides CRUD database operations for the
 * table users in the database.
 * 
 
 *
 */
public class UserdeliveryDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/ruvinidb";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String INSERT_USERS_SQL = "INSERT INTO del" + "  (OrderNumber, ReceiverName, ReceiverAddress, TelephoneNumber,PostalCode,Remark) VALUES " +" (?, ?, ?, ?, ?, ?);";

    private static final String SELECT_USER_BY_ID = "SELECT DeliveryID,OrderNumber,ReceiverName, ReceiverAddress,TelephoneNumber,PostalCode,Remark from del where DeliveryID =?";
    private static final String SELECT_ALL_USERS = "SELECT * from del";
    private static final String DELETE_USERS_SQL = "DELETE from del where DeliveryID = ?;";
    private static final String UPDATE_USERS_SQL = "UPDATE del set OrderNumber = ?,ReceiverName= ?, ReceiverAddress =?,TelephoneNumber =?,PostalCode =?,Remark =? where DeliveryID = ?;";

    public UserdeliveryDAO() {}

    protected Connection getConnection() {
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

    public void insertUser(Userdelivery user) throws SQLException {
        System.out.println(INSERT_USERS_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); 
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, user.getOrderNumber());
            preparedStatement.setString(2, user.getReceiverName());
            preparedStatement.setString(3, user.getReceiverAddress());
            preparedStatement.setString(4, user.getTelephoneNumber());
            preparedStatement.setString(5, user.getPostalCode());
            preparedStatement.setString(6, user.getRemark());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public Userdelivery selectUser(int DeliveryID) {
        Userdelivery user = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
            preparedStatement.setInt(1, DeliveryID);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                //String DeliveryID = rs.getString("DeliveryID");
                String OrderNumber = rs.getString("OrderNumber");
                String ReceiverName = rs.getString("ReceiverName");
                String ReceiverAddress = rs.getString("ReceiverAddress");
                String TelephoneNumber = rs.getString("TelephoneNumber");
                String PostalCode = rs.getString("PostalCode");
                String Remark= rs.getString("Remark");
                user = new Userdelivery(DeliveryID, OrderNumber, ReceiverName, ReceiverAddress,TelephoneNumber,PostalCode,Remark);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    public List < Userdelivery > selectAllUsers() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List < Userdelivery > users = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                System.out.println("Lakaaaaaaaaaaaaaaaaaaa");
                int DeliveryID = rs.getInt("DeliveryID");
                String OrderNumber = rs.getString("OrderNumber");
                String ReceiverName = rs.getString("ReceiverName");
                String ReceiverAddress = rs.getString("ReceiverAddress");
                String TelephoneNumber = rs.getString("TelephoneNumber");
                String PostalCode = rs.getString("PostalCode");
                String Remark = rs.getString("Remark");
                users.add(new Userdelivery(DeliveryID,OrderNumber,ReceiverName,ReceiverAddress,TelephoneNumber,PostalCode,Remark));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    public boolean deleteUser(int DeliveryID) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
            statement.setInt(1, DeliveryID);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateUser(Userdelivery user) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
            statement.setString(1, user.getOrderNumber());
            statement.setString(2, user.getReceiverName());
            statement.setString(3, user.getReceiverAddress());
             statement.setString(4, user.getTelephoneNumber());
            statement.setString(5, user.getPostalCode());
            statement.setString(6, user.getRemark());
            statement.setInt(7, user.getDeliveryID());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
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


    

