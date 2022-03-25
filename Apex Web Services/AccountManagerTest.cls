@isTest
private class AccountManagerTest{
    @isTest
    static void testGetAccountManager(){
        Account a = new Account(name = 'TestAccount');
        insert a;
        Contact c = new Contact(AccountId = a.Id, FirstName = 'Test', LastName = 'Test');
        insert c;

        RestRequest request = new RestRequest();
        request.requestUri = 
        'https://yourInstance.salesforce.com/services/apexrest/Accounts/'+a.Id+'/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;

        Account thisAccount = AccountManager.getAccount();
        //verify results
        System.assert(thisAccount != null);
        System.assertEquals('TestAccount', thisAccount.Name);
    }

}
