<aura:application >
    <!-- Include the SLDS static resource (adjust to match package version) -->
    <ltng:require styles="{!$Resource.SLDS +
                          '/assets/styles/salesforce-lightning-design-system-ltng.css'}"/>
    
    <!-- Add the "scoping" element to activate SLDS on components
         that we add inside it. -->
    <div class="autorabit-com">
        
        <!-- This component is the real "app" -->
        <c:ARSecondActivity />
        
    </div>
    <!-- / SLDS SCOPING DIV -->
</aura:application>