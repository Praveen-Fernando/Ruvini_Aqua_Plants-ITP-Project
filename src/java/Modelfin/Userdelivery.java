/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelfin;

/**
 *
 * @author HP
 */
public class Userdelivery {
    protected int DeliveryID;
    protected String OrderNumber;
    protected String ReceiverName;
    protected String ReceiverAddress;
    protected String TelephoneNumber;
    protected String PostalCode;
    protected String Remark;
    
    
    public Userdelivery(){}

    public Userdelivery(String OrderNumber, String ReceiverName, String ReceiverAddress, String TelephoneNumber, String PostalCode, String Remark) {
        this.OrderNumber = OrderNumber;
        this.ReceiverName = ReceiverName;
        this.ReceiverAddress = ReceiverAddress;
        this.TelephoneNumber = TelephoneNumber;
        this.PostalCode = PostalCode;
        this.Remark = Remark;
    }
    

    public Userdelivery(int DeliveryID, String OrderNumber, String ReceiverName, String ReceiverAddress, String TelephoneNumber, String PostalCode, String Remark) {
        this.DeliveryID = DeliveryID;
        this.OrderNumber = OrderNumber;
        this.ReceiverName = ReceiverName;
        this.ReceiverAddress = ReceiverAddress;
        this.TelephoneNumber = TelephoneNumber;
        this.PostalCode = PostalCode;
        this.Remark = Remark;
    }
    
    
    
    

    public int getDeliveryID() {
        return DeliveryID;
    }

    public void setDeliveryID(int DeliveryID) {
        this.DeliveryID = DeliveryID;
    }

    public String getOrderNumber() {
        return OrderNumber;
    }

    public void setOrderNumber(String OrderNumber) {
        this.OrderNumber = OrderNumber;
    }

    public String getReceiverName() {
        return ReceiverName;
    }

    public void setReceiverName(String ReceiverName) {
        this.ReceiverName = ReceiverName;
    }

    public String getReceiverAddress() {
        return ReceiverAddress;
    }

    public void setReceiverAddress(String ReceiverAddress) {
        this.ReceiverAddress = ReceiverAddress;
    }

    public String getTelephoneNumber() {
        return TelephoneNumber;
    }

    public void setTelephoneNumber(String TelephoneNumber) {
        this.TelephoneNumber = TelephoneNumber;
    }

    public String getPostalCode() {
        return PostalCode;
    }

    public void setPostalCode(String PostalCode) {
        this.PostalCode = PostalCode;
    }

    public String getRemark() {
        return Remark;
    }

    public void setRemark(String Remark) {
        this.Remark = Remark;
    }
    
    
    
}
