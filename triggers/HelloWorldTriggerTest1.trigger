trigger HelloWorldTriggerTest1 on DandBCompany (before insert) {

    for(DandBCompany t1 : Trigger.New) {

        t1.Description = 'HelloWorldTriggerTest1';
        //
        //test merge

    }  

}