package com;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;




public class Employee {

	private String plantcode,id;
	
	private String plantname;

	private String quantity;

	private String price;

	private String date;

	
        
        
        
           private Connection con;
         
                private Statement st;
   
                     private ResultSet rs;
                     
                         private String url,user,pass;

   
   public Employee(){
         url="jdbc:mysql://localhost:3306/ruvinidb";
         user="root";
         pass="";
      try {
             Class.forName("com.mysql.cj.jdbc.Driver");
                con=DriverManager.getConnection(url,user,pass);
      
            st=con.createStatement();
              } catch (Exception ex) {
          
//          r = ""+ex;
        } 
       
      
   }
   
   
   //  insert employee details.......................................
   
   public  String inserdb(){
        String r="Error";
       
       
             
             
             
             String query ="INSERT INTO `plantstock`(`plantcode`, `plantname`, `quantity`, `price`, `date`) VALUES ('"
                   +plantcode+"','" + plantname+"','"+quantity+"','"+price+"','"+date+"')";
       try {
           st.executeUpdate(query) ;
           r="Success";
          } 
       catch (SQLException e) {
           r=""+ e;
       }
     
       
     return r;
       
       
       
       
   }
   
   
      public boolean check(String id){
           
      
         String query1 = "SELECT 'quantity' FROM plantstock WHERE platcode="+id;
         
         try {
        int x = st.executeUpdate(query1);
        
        
        
           if(x<25) {
           
                
            String query ="INSERT INTO `reorder`(`code`, `name`, `quantity`, `requestdate`, `requireddate`) VALUES ('"
                   +plantcode+"','" + plantname+"','"+quantity+"','"+price+"','"+date+"')";
            
             st.executeUpdate(query) ;
            
            return true;
           
           }
         
           } catch (SQLException e){
          
              System.out.print("Error is :"+e);
              
       
     
           }
         return false;
      }

   
   
   //  update employee details...................
   
      public String updatedb(){
      
       String r="Error";
       
      
      try {
           
             
            
             String query ="UPDATE `ruvinidb` SET plantcode='"+plantcode+"',plantname= '"+ plantname
                     + "',quantity='"+ quantity+"',price='"+price+"',date='"+date+"' WHERE plantcode= '"+plantcode+"'";
       try {
           st.executeUpdate(query) ;
           r="Success";
          } 
       catch (SQLException e) {
           r=""+ e;
       }
     
        } catch (Exception ex) {
          
          r = ""+ex;
        } 
       
       
     return r;
      
      
      
      }
      
      
      // retieve data
      
      
      
      
      public String retrievedb(String pcode){
      
       String r="Error";
       
      
      try {
           
             
            
             String query ="SELECT * FROM `plantstock` WHERE `plantcode`= '"+plantcode+"'";
       try {
           
          
          rs = st.executeQuery(query);
          
          while(rs.next()){
          
          
          String ppid =rs.getString("plantcode");
          String ppn = rs.getString("plantname");
                  String q = rs.getString("quantity");
                          String pp = rs.getString("price");
                                  String d = rs.getString("date");
                                  
                                  
          }
          
          
          
          
           r="Success";
          } 
       catch (SQLException e) {
           r=""+ e;
       }
     
        } catch (Exception ex) {
          
          r = ""+ex;
        } 
       
       
     return r;
      
      
      
      }
      
     //error message 
      
      
      
      
      
        // delete employee details............................
      
      
      
      
      
     public String deletedb(){
      
       String r="Error";
       
      
      try {
           
             
            String query ="DELETE FROM `plantstock` WHERE plantcode='"+plantcode+"'";
             
             
       try {
           st.executeUpdate(query) ;
           r="Success";
           
          } 
       catch (SQLException e) {
           r=""+ e;
       }
     
        } catch (Exception ex) {
          
          r = ""+ex;
        } 
       
       
     return r;
      
      
      
      }
      
      
      
       
   
   
	/**
	 * @return the employeeID
	 */
	public String getplantcode() {
		return plantcode;
	}

	/**
	 * @param employeeID the employeeID to set
	 */
	public void setplantcode(String plantcode1) {
		plantcode = plantcode1;
	}

	/**
	 * @return the name
	 */
	public String getplantname() {
		return plantname;
	}

	/**
	 * @param name the name to set
	 */
	public void setplantname(String name) {
		plantname = name;
	}

	/**
	 * @return the NIC
	 */
	public String getquantity() {
		return quantity;
	}

	/**
	 * set nic parameter
	 */
	public void setquantity(String quant) {
		quantity = quant;
	}

	/**
	 * @return the ContactNumber
	 */
	public String getprice() {
		return price;
	}

	/**
	 * set contactNumber parameter
	 */
	public void setprice(String pprice) {
		price = pprice;
	}

	/**
	 * @return the department
	 */
	public String getdate() {
		return date;
	}

	/**
	 * @param department the department to set
	 */
	public void setdate(String ddate) {
		date = ddate;
	}

	/**
	 * @return the address
	 */
	
	/**
	 * @param address the address to set
	 */
	

	/**
	 * @return the gender
	 */
	

	/**
	 * @param gender the gender to set
	 */
	

	@Override
	public String toString() {
		
		return "plantcode = " + plantcode + "\n" + "plantname = " + plantname + "\n" + "quantity = " + quantity + "\n"
				+ "price = " + price + "\n" + "date = " + date;
	}
}

