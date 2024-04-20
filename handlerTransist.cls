public class handlerTransist {

         Public static void doc(List<translist__c> tr){

          List<Detailsofcustomer__c> dc= new List<Detailsofcustomer__c>();

            for(translist__c t:tr)

            {

                Detailsofcustomer__c d= new Detailsofcustomer__c();

                d.tid__c=t.transId__c;

                d.contno__c=t.ContactNo__c;

                d.Name = t.Name;

                dc.add(d);

            }

        insert dc;

        

                

            }

       

    }