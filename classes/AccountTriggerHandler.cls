/*
Developer: Varun Raghavan
Date Modified: 06/12/2018
Purpose: Account Trigger Handler. Implements ITriggerHandler interface and contains logic for handling Account triggers based on context.
*/
public class AccountTriggerHandler implements ITriggerHandler {

    /*Allows unit tests (or other code) to disable this trigger for the transaction */
    public static Boolean TriggerDisabled = false;

    /*List Of Employer Portal Object instance. For use by HPE Integration triggers*/
   // private List < Employer_Portal_Integration_Object__c > m_epo = new List < Employer_Portal_Integration_Object__c > ();

    /**
     * Method allows disabling of Account triggers via Global Setting TriggerSettings__c.AccountTriggerDisabled__c
     * 
     * IsDisabled
     *
     * @param  void void
     * @return Boolean TriggerDisabled
     */
    public Boolean IsDisabled() {
        if (TriggerSettings__c.getInstance().AccountTriggerDisabled__c == true)
            return true;
        else
            return TriggerDisabled;
    }

    /**
     * Handler Method for Before Insert Triggers. Logic to handle before insert operations on accounts to be put here.
     * 
     * BeforeInsert
     *
     * @param  List < SObject > newItems
     * @return void void
     */
    public void BeforeInsert(List < SObject > newItems) {}

    /**
     * Handler Method for Before Update Triggers. Logic to handle before update operations on accounts to be put here.
     * 
     * BeforeUpdate
     *
     * @param  List < Id, SObject > newItems, Map < Id, SObject > oldItems
     * @return void void
     */
    public void BeforeUpdate(Map < Id, SObject > newItems, Map < Id, SObject > oldItems) {}

    /**
     * Handler Method for Before Delete Triggers. Logic to handle before delete operations on accounts to be put here.
     * 
     * BeforeDelete
     *
     * @param  Map < Id, SObject > oldItems
     * @return void void
     */
    public void BeforeDelete(Map < Id, SObject > oldItems) {}

    /**
     * Handler Method for After Insert Triggers. Logic to handle after insert operations on accounts to be put here.
     * 
     * AfterInsert
     *
     * @param  Map < Id, SObject > newItems
     * @return void void
     */
    public void AfterInsert(Map < Id, SObject > newItems) {}

    /**
     * Handler Method for After Update Triggers. Logic to handle after update operations on accounts to be put here.
     * 
     * AfterUpdate
     *
     * @param  Map < Id, SObject > newItems, Map < Id, SObject > oldItems
     * @return void void
     */
    public void AfterUpdate(Map < Id, SObject > newItems, Map < Id, SObject > oldItems) {
        /*--- Start : Handler Logic For HPE Integration --*/
      	//m_epo.addAll(AccountAfterUpdateEPOGateway.addEPOTransactionInstances(newItems, oldItems));
        /*-- End : Handler Logic For HPE Integration --*/
    }

    /**
     * Handler Method for After Delete Triggers. Logic to handle after delete operations on accounts to be put here.
     * 
     * AfterDelete
     *
     * @param  Map < Id, SObject > oldItems
     * @return void void
     */
    public void AfterDelete(Map < Id, SObject > oldItems) {}

    /**
     * Handler Method for After Undelete Triggers. Logic to handle after delete operations on accounts to be put here.
     * 
     * AfterUndelete
     *
     * @param  Map < Id, SObject > oldItems
     * @return void void
     */
    public void AfterUndelete(Map < Id, SObject > oldItems) {}

    /**
     * Handler Method for After Undelete Triggers. This method is called once all records have been processed by the trigger. Use this 
     * method to accomplish any final operations such as creation or updates of other records or making callouts.
     *
     * AfterUndelete
     *
     * @param  void void
     * @return void void
     */
    public void AfterTrigger() {
        /*--- Start : Handler Logic For HPE Integration --*/
       // if (!m_epo.isEmpty())
        //	EPOGateway.insertEPO(m_epo);
        /*-- End : Handler Logic For HPE Integration --*/

    }
}