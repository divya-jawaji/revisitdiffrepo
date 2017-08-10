public class Customer_Satisfaction_Survey_1{
    public Customer_Satisfaction_Survey__c Customer;
    
    Public Customer_Satisfaction_Survey_1(Apexpages.StandardController controller){
        Customer =new Customer_Satisfaction_Survey__c() ;
    }
    
    public pageReference Survey(){ 
        Customer.Name='abc';
        return null;
    }
}