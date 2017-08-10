public class Customer_Satisfaction_Survey_2 {
    
      public Customer_Satisfaction_Survey__c Customer;
    
    Public Customer_Satisfaction_Survey_2(Apexpages.StandardController controller){
        Customer =new Customer_Satisfaction_Survey__c() ;
    }
    
    public pageReference Survey(){ 
        Customer.Name=Customer.Name;
        Customer.AutorabitExtId__c=Customer.AutorabitExtId__c;
        return null;
    }
}