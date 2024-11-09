Feature: Supplier Synopsis

  #Supplier Synopsis functionality
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @SupplierSynopsis @Regression @QuickSanity
  Scenario: I am able to see the title on Connected Suppliers pagesearch Exhibits Supplier on Connected Supplier page
    When Enter EmailAdress in Email Address field "myautobuyer@mailinator.com"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    And Logout from the system

  @SupplierSynopsis @Regression @QuickSanity
  Scenario: I am able to see the Preloaded supplier in search results on Connected Supplier page
    When Enter EmailAdress in Email Address field "myautobuyer@mailinator.com"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    When Enter "TITAN COMPANY LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    And Logout from the system

  @SupplierSynopsis @Regression @QuickSanity
  Scenario: I am able to see the title on Supplier Synopsis page
    When Enter EmailAdress in Email Address field "myautobuyer@mailinator.com"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    When Enter "TITAN COMPANY LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    And Logout from the system

  @SupplierSynopsis @Regression @QuickSanity
  Scenario: I am able to see Go to details button on Supplier Synopsis page
    When Enter EmailAdress in Email Address field "myautobuyer@mailinator.com"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    When Enter "TITAN COMPANY LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    And User can see Go to details button on Supplier Synopsis view page
    And Logout from the system

  @SupplierSynopsis @Smoke @QuickSanity
  Scenario: I am able to see Supplier details page by clicking on Go to details button on Supplier Synopsis page
    When Enter EmailAdress in Email Address field "myautobuyer@mailinator.com"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    When Enter "Taitan" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    And User can see Go to details button on Supplier Synopsis view page
    When Click on Go to details button on Supplier Synopsis view page
    Then User can see View Synopsis link on the Supplier details page
    And Logout from the system

  @SupplierSynopsis @Smoke @QuickSanity @QuickCheck
  Scenario: I am able to see Supplier Synopsis View by clicking on View Synopsis link on Supplier details page
    When Enter EmailAdress in Email Address field "myautobuyer@mailinator.com"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    When Enter "Taitan" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    And User can see Go to details button on Supplier Synopsis view page
    When Click on Go to details button on Supplier Synopsis view page
    Then User can see View Synopsis link on the Supplier details page
    When Click on View Synopsis link on the Supplier details page
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    And Logout from the system
    
    
    ##################3**************RD Apps response on synopsis view******************#################################

  #with valid data with status code as 200
  @SupplierSynopsis @QuickSanity @TYSAppFunctionality
  Scenario: I am able to view App widget cards on Supplier Synopsis View
    	Then Enter "gskbuyer" buyer email in Email Address
  #   When Enter EmailAdress in Email Address field "gskautobuyeruser@maildrop.cc"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    Then Click "Connected Suppliers" tab
    When Enter "TOTALENERGIES SE" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then Refresh the current webpage
    And Wait for 10 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    Then verify buyer is able to view the App "ecovadislogo"
    Then verify buyer is able to view the App "cyberinsightlogo"
    Then verify buyer is able to view the App "Esglogo"
    Then verify buyer is able to view the App "PODlogo"
    Then verify buyer is able to view the App "S&watchlistTable"
   # Then verify buyer is able to view the App "riskinsightsgraph"
    And Logout from the system

#with valid data with status code as 200
  @SupplierSynopsis @QuickSanity @TYSAppFunctionality
  Scenario: I am able to view Ecovadis rating response App widget on Supplier Synopsis View
    	Then Enter "gskbuyer" buyer email in Email Address
  # When Enter EmailAdress in Email Address field "gskautobuyeruser@maildrop.cc"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    Then Click "Connected Suppliers" tab
    When Enter "SUGARCRM INC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then Refresh the current webpage
    And Wait for 10 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    Then verify buyer is able to view the App "ecograph"
    #Then verify buyer is able to view the App "riskinsightsgraph"
    And Logout from the system
    
  #with valid data with status code as 200
  @SupplierSynopsis1234 @Regression @QuickSanity
  Scenario: I am able to view App Ecovadis silver widget on Supplier Synopsis View
  	Then Enter "btbuyer" buyer email in Email Address
      #When Enter EmailAdress in Email Address field "btutobuyer@maildrop.cc"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    Then Click "Connected Suppliers" tab
    When Enter "CROWN LIQUOR" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then Refresh the current webpage
    And Wait for 10 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    Then verify buyer is able to view the App "ecovadislogo"
    And Logout from the system

  #with valid data with status code as 200
  @SupplierSynopsis @QuickSanity @TYSAppFunctionality
  Scenario: I am able to view App Moody’s - Ownership Structure, Sanctions & Watchlist widget on Supplier Synopsis View
    	Then Enter "gskbuyer" buyer email in Email Address
  #When Enter EmailAdress in Email Address field "gskautobuyeruser@maildrop.cc"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    Then Click "Connected Suppliers" tab
    When Enter "BOSCH LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then Refresh the current webpage
    And Wait for 10 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    #Entity in a Corporate Group
    Then Verify the visibility of "Immediate Owner" section
    Then Verify the visibility of "Domestic Ultimate Owner" section
    Then Verify the visibility of "Global Ultimate Owner" section
    Then Verify the visibility of "Global Ultimate Owner" section
    Then Verify the visibility of "Event Category" section on synopsis screen
    Then Verify the visibility of "True Match" section on synopsis screen
    Then Verify the visibility of "Pending Review" section on synopsis screen
    #Then Verify the "eventcategory" label on App
    And Logout from the system

  #####Moody’s - Ownership Structure##
  ##status code as 200
  @SupplierSynopsis @QuickSanity @TYSAppFunctionality 
  Scenario: I am able to view App Moody’s - Ownership Structure different groups widget on Supplier Synopsis View
    	Then Enter "gskbuyer" buyer email in Email Address
  #  When Enter EmailAdress in Email Address field "gskautobuyeruser@maildrop.cc"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    Then Click "Connected Suppliers" tab
    When Enter "CENTER MOUNTAIN, INC." Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then Refresh the current webpage
    And Wait for 10 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    Then Verify the buyer is able to view "Corporate Group" section on synopsis screen
    #no corporate group
    Then verify the visibility of "Moody’s - Ownership Structure" App content information as "This company is a standalone entity with no corpor"
    Then Click "Connected Suppliers" tab
    When Click on Clear All link
    When Enter "ASHOK LEYLAND LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then Refresh the current webpage
    And Wait for 10 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    Then Verify the buyer is able to view "Corporate Group" section on synopsis screen
    #Global Ultimate group
    Then verify the visibility of "Moody’s - Ownership Structure" App content information as "This company is the Global Ultimate Owner of the corporate group"
    And Logout from the system

  #no sanctions for this uspplier
  @SupplierSynopsis @Regression @QuickSanity           
  Scenario: I am able to view App Moody’s - Screening & Watchlist widget on Supplier Synopsis View
    	Then Enter "gskbuyer" buyer email in Email Address
  #    When Enter EmailAdress in Email Address field "gskautobuyeruser@maildrop.cc"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    Then Click "Connected Suppliers" tab
    When Enter "DATATREND TECHNOLOGIES INC" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then Refresh the current webpage
    And Wait for 10 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    Then Verify the visibility of "No sanctions found" section
    And Logout from the system

  #with status code 400
  @SupplierSynopsis123 @Regression @QuickSanity           
  Scenario: I am able to see App widget cards for apps of suppliers which does not have Moody's and DUN Number on Supplier Synopsis View
     	Then Enter "gskbuyer" buyer email in Email Address
   # When Enter EmailAdress in Email Address field "gskautobuyeruser@maildrop.cc"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    Then Click "Connected Suppliers" tab
    When Enter "YEXT LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then Refresh the current webpage
    And Wait for 10 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    Then verify buyer is able to view the App "Probability of Default" content information as "We tried identity resolution to find the supplier profile with Moody’s by using the Business Legal Name, National Identifiers & Headquarters Address. Kindly check with the supplier to ensure they have entered the correct information. If you still encounter the issue, please reach out to TYS Support Team for further assistance advising them you have received error ID"
    Then verify buyer is able to view "Ownership Structure" content information as "We tried identity resolution to find the supplier profile with Moody’s by using the Business Legal Name, National Identifiers & Headquarters Address. Kindly check with the supplier to ensure they have entered the correct information. If you still encounter the issue, please reach out to TYS Support Team for further assistance advising them you have received error ID"
    Then verify buyer is able to view the App "ESG Risk Review" content information as "We tried identity resolution to find the supplier profile with Moody’s by using the Business Legal Name, National Identifiers & Headquarters Address. Kindly check with the supplier to ensure they have entered the correct information. If you still encounter the issue, please reach out to TYS Support Team for further assistance advising them you have received error ID"
    Then verify buyer is able to view the App "Cyber risk rating by Bitsight" content information as "We tried identity resolution to find the supplier profile with Moody’s by using the Business Legal Name, National Identifiers & Headquarters Address. Kindly check with the supplier to ensure they have entered the correct information. If you still encounter the issue, please reach out to TYS Support Team for further assistance advising them you have received error ID"
    # Then verify buyer is able to view the App "Financial Risk Rating" content information as "We tried identity resolution to find the supplier profile with D&B by using the Business Legal Name, National Identifiers & Headquarters Address. Kindly check with the supplier to ensure they have entered the correct information. If you still encounter the issue, please reach out to TYS Support Team for further assistance advising them you have received error ID"
    And Logout from the system

  #status code 400
  @SupplierSynopsis @Regression @QuickSanity           
  Scenario: I am able to see App widget cards for apps of suppliers which does not have Moody's and DUN Number on Supplier Synopsis View
      	Then Enter "gskbuyer" buyer email in Email Address
    #When Enter EmailAdress in Email Address field "gskautobuyeruser@maildrop.cc"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    Then Click "Connected Suppliers" tab
    When Enter "YEXT LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then Refresh the current webpage
    And Wait for 10 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    Then verify buyer is able to view "Ownership Structure" App content information as "We tried identity resolution to find the supplier profile with Moody’s by using the Business Legal Name, National Identifiers & Headquarters Address. Kindly check with the supplier to ensure they have entered the correct information. If you still encounter the issue, please reach out to TYS Support Team for further assistance advising them you have received error ID"
    Then verify buyer is able to view "EcoVadis Rating" App content information as "The DUNS number stated by the supplier is not rated by Ecovadis."
    Then verify buyer is able to view "EcoVadis IQ" App content information as "The DUNS number must be present in the supplier profile in order to find any Ecovadis ratings information."
    And Logout from the system

  #with invalid credentials status code as 401 #SLYN-28210
  @SupplierSynopsis @Regression           
  Scenario: I am able to see App widget cards for apps of suppliers which does not have Moody's and DUN Number on Supplier Synopsis View
      	Then Enter "btbuyer" buyer email in Email Address
    #When Enter EmailAdress in Email Address field "btutobuyer@maildrop.cc"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    Then Click "Connected Suppliers" tab
    #When Enter "MEDICINE UK LIMITED" Supplier in Search field
    When Enter "CROWN LIQUOR" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then Refresh the current webpage
    And Wait for 10 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    Then verify buyer is able to view the App "Probability of Default" content information as "The subscription credentials you entered were either incorrect/invalid & did not grant access to this respective application, Please click here to update your subscription or reach out to your organization administrator for further guidance and try again"
    Then verify buyer is able to view the App "ESG Risk Review" content information as "The subscription credentials you entered were either incorrect/invalid & did not grant access to this respective application, Please click here to update your subscription or reach out to your organization administrator for further guidance and try again"
    Then verify buyer is able to view the App "Cyber risk rating by Bitsight" content information as "App data for this supplier could not be retrieved. Please reach out to TYS Support Team with ID"
    Then verify buyer is able to view "EcoVadis IQ" App content information as "The subscription credentials you entered were either incorrect/invalid & did not grant access to this respective application, Please click here to update your subscription or reach out to your organization administrator for further guidance and try again"
    Then verify buyer is able to view "Ownership Structure" App content information as "The subscription credentials you entered were either incorrect/invalid & did not grant access to this respective application, Please click here to update your subscription or reach out to your organization administrator for further guidance and try again"
    Then verify buyer is able to view "Sanctions & Watchlist" App content information as "The subscription credentials you entered were either incorrect/invalid & did not grant access to this respective application, Please click here to update your subscription or reach out to your organization administrator for further guidance and try again"
    #There was an error in processing this application. Try refreshing the page. If you still encounter the issue, please reach out to TYS Support Team for further assistance advising them you have received error ID"
    And Logout from the system
