/*
Developer: Varun Raghavan
Date Modified: 06/12/2018
Purpose: Contact Trigger Handler. Implements ITriggerHandler interface and contains logic for handling Contact triggers based on context.
*/
public class ContactTriggerHandler implements ITriggerHandler {

    /*Allows unit tests (or other code) to disable this trigger for the transaction */
    public static Boolean TriggerDisabled = false;

    /*List Of Employer Portal Object instance. For use by HPE Integration triggers*/
    //private List < Employer_Portal_Integration_Object__c > m_epo = new List < Employer_Portal_Integration_Object__c > ();
    /**
     * Method allows disabling of Contact triggers via Global Setting TriggerSettings__c.AccountTriggerDisabled__c
     *
     * IsDisabled
     *
     * @param  void void
     * @return Boolean TriggerDisabled
     */
    public Boolean IsDisabled() {
        if (TriggerSettings__c.getInstance().ContactTriggerDisabled__c == true)
            return true;
        else
                return TriggerDisabled;
    }

    /**
     * Handler Method for Before Insert Triggers. Logic to handle before insert operations on contacts to be put here.
     *
     * BeforeInsert
     *
     * @param  List < SObject > newItems
     * @return void void
     */
    public void BeforeInsert(List < SObject > newItems) {}

    /**
     * Handler Method for Before Update Triggers. Logic to handle before update operations on contacts to be put here.
     *
     * BeforeUpdate
     *
     * @param  List < Id, SObject > newItems, Map < Id, SObject > oldItems
     * @return void void
     */
    public void BeforeUpdate(Map < Id, SObject > newItems, Map < Id, SObject > oldItems) {}

    /**
     * Handler Method for Before Delete Triggers. Logic to handle before delete operations on contacts to be put here.
     *
     * BeforeDelete
     *
     * @param  Map < Id, SObject > oldItems
     * @return void void
     */
    public void BeforeDelete(Map < Id, SObject > oldItems) {}
    /**
     * Handler Method for After Insert Triggers. Logic to handle after insert operations on contacts to be put here.
     *
     * AfterInsert
     *
     * @param  Map < Id, SObject > newItems
     * @return void void
     */
    public void AfterInsert(Map < Id, SObject > newItems) {
        /*--- Start : Handler Logic For HPE Integration --*/
      //  Map < Id, String > accntContactChanges = ContactAfterUpdateEPOGateway.retriveAccountIds(newItems, null);
       // m_epo.addAll(ContactAfterUpdateEPOGateway.addEPOTransactionInstances(accntContactChanges));
        /*-- End : Handler Logic For HPE Integration --*/
    }

    /**
     * Handler Method for After Update Triggers. Logic to handle after update operations on contacts to be put here.
     *
     * AfterUpdate
     *
     * @param  Map < Id, SObject > newItems, Map < Id, SObject > oldItems
     * @return void void
     */
    public void AfterUpdate(Map < Id, SObject > newItems, Map < Id, SObject > oldItems) {
        /*--- Start : Handler Logic For HPE Integration --*/
      //  Map < Id, String > accntContactChanges = ContactAfterUpdateEPOGateway.retriveAccountIds(newItems, oldItems);
       // m_epo.addAll(ContactAfterUpdateEPOGateway.addEPOTransactionInstances(accntContactChanges));
        /*-- End : Handler Logic For HPE Integration --*/
        //For Account Contact Separation Changes
     //  ContactAfterUpdateEPOGateway.handleBrokerContactDeletions(newItems,oldItems);
    }

    /**
     * Handler Method for After Delete Triggers. Logic to handle after delete operations on contacts to be put here.
     *
     * AfterDelete
     *
     * @param  Map < Id, SObject > oldItems
     * @return void void
     */
    public void AfterDelete(Map < Id, SObject > oldItems) {
        /*--- Start : Handler Logic For HPE Integration --*/
        //Map < Id, String > accntContactChanges = ContactAfterUpdateEPOGateway.retriveAccountIds(oldItems, null);
        //m_epo.addAll(ContactAfterUpdateEPOGateway.addEPOTransactionInstances(accntContactChanges));
        /*-- End : Handler Logic For HPE Integration --*/
        //For Account Contact Separation Changes
        //ContactAfterUpdateEPOGateway.handleBrokerContactDeletions(oldItems,null);
    }

    /**
     * Handler Method for After Undelete Triggers. Logic to handle after delete operations on contacts to be put here.
     *
     * AfterUndelete
     *
     * @param  Map < Id, SObject > oldItems
     * @return void void
     */
    public void AfterUndelete(Map < Id, SObject > oldItems) {}

    /**
     * Handler Method for After Undelete Triggers. This method is called once all records have been processed by the trigger. Use this
     * method to accomplish any final operations such as creation or updates of other records.
     *
     * AfterUndelete
     *
     * @param  void void
     * @return void void
     */
    public void AfterTrigger() {
        /*--- Start : Handler Logic For HPE Integration --*/
       // if (!m_epo.isEmpty()){
         //   EPOGateway.insertEPO(m_epo);
        //}
        /*-- End : Handler Logic For HPE Integration --*/
    }
}