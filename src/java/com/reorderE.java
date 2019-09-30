/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author maduranga
 */
public class reorderE {
    
    
      private String equipmentcode,id;
	
	private String equipmenttype;

	private String quantity;

	private String price;

	private String date;

	
        
        
        
           private Connection con;
         
                private Statement st;
   
                     private ResultSet rs;
                     
                         private String url,user,pass;

   
   public reorderE (){
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
       
       
             
             
             
             String query ="INSERT INTO `reorder`(`code`, `name`, `quantity`, `requestdate`, `requireddate`) VALUES ('"
                   +equipmentcode+"','" + equipmenttype+"','"+quantity+"','"+price+"','"+date+"')";
       try {
           st.executeUpdate(query) ;
           r="Success";
          } 
       catch (SQLException e) {
           r=""+ e;
       }
     
       
     return r;
       
       
       
       
   }
   
   //  update employee details...................
   
      public String updatedb(){
      
       String r="Error";
       
      
      try {
           
             
            
             String query ="UPDATE `ruvinidb` SET equipmentcode='"+equipmentcode+"',equipmenttype= '"+ equipmenttype
                     + "',quantity='"+ quantity+"',price='"+price+"',date='"+date+"' WHERE equipmentcode= '"+equipmentcode+"'";
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
      
      
        // delete employee details............................
      
      
      
      
      
     public String deletedb(){
      
       String r="Error";
       
      
      try {
           
             
            String query ="DELETE FROM `equipmentstock` WHERE equipmentcode='"+equipmentcode+"'";
             
             
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
	public String getequipmentcode() {
		return equipmentcode;
	}

	/**
	 * @param employeeID the employeeID to set
	 */
	public void setequipmentcode(String ecode1) {
		equipmentcode = ecode1;
	}

	/**
	 * @return the name
	 */
	public String getequipmenttype() {
		return equipmenttype;
	}

	/**
	 * @param name the name to set
	 */
	public void setequipmenttype(String type) {
		equipmenttype = type;
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
		
		return "equipmentcode = " + equipmentcode + "\n" + "equipmenttype = " + equipmenttype + "\n" + "quantity = " + quantity + "\n"
				+ "price = " + price + "\n" + "date = " + date;
	}
    
}
