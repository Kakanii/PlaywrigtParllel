Feature: SRM 5

  Background: Login as Buyer
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    
    
 @Regression @Buyer @SRM5
  Scenario: Verify As a Buyer, I should see Supplier Request as 1st option in left menu under "Suppliers"
    # And  Click "Suppliers" tab
    When Wait 10 seconds
    Then Verify the "Supplier Requests" tab on first option
    Then Logout from the system


 @Regression @Buyer @SRM5 
  Scenario: Verify if buyer able to see “Lookup your supplier in TYS” screen when clicked on Initiate Supplier request buttton on Supplier request screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Look up your supplier in TYS" page
    And  Logout from the system
    
  @Regression @Buyer @SRM5
  Scenario: Verify if buyer able to see “Initiate Supplier Request” button on Supplier Request screen
    # And Click "Suppliers" tab
    When Wait 10 seconds
    And Click "Supplier Requests" tab
    When Wait 10 seconds
    Then Verify the "Initiate Supplier Request" button
    Then Logout from the system

 @Regression @Buyer @SRM5
  Scenario: Verify if buyer able to click the “Initiate Supplier Request” button on Supplier Request screen
    # And Click "Suppliers" tab
    When Wait 10 seconds
    And Click "Supplier Requests" tab
    When Wait 10 seconds
    Then Click on Request Initiate Supplier Request button
    Then Logout from the system
    
    @Regression @Buyer @SRM5 
  Scenario: Verify if buyer able to Look up your supplier in TYS and enter the "Company Name" and "Tax Country"
    When Wait 10 seconds
    And Click "Supplier Requests" tab
    When Wait 10 seconds
    Then Click on Request Initiate Supplier Request button
    #Then Enter the Company Name in the Supplier Company Name field "testCompanyName"
    Then Enter company name in Supplier Company Name field "sampleQA"
    Then Enter select the Tax Country in the dropdwon field
    #And Select "Albania" Country from Dropdown value
    And click on the search button
    When Wait 5 seconds
    Then Click on the Request New Supplier
    Then Logout from the system

    
  @Regression @Buyer @SRM5
  Scenario: Verify if buyer able to search for Supplier company name on “Lookup your supplier in TYS” screen
    When Wait 10 seconds
    And  Click "Supplier Requests" tab
    When Wait 10 seconds
    And  Click on the "Initiate Supplier Request" button
    Then Verify the "Supplier Company Name" button
    When Click on Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Enter select the Tax Country in the dropdwon field
    And  Click on "Search" button
    Then Verify the "Request a New Supplier" button
    When Wait 5 seconds
    And  Click on "Request a New Supplier" button
    And  Logout from the system

    
    
 @Regression @Buyer @SRM5 @SLYN-30060
  Scenario: Verify if buyer able to fill all the required info for Supplier Request creation
    When Wait 10 seconds
    And Click "Supplier Requests" tab
    When Wait 10 seconds
    #Then Click on Request Initiate Supplier Request button
    And  Click on the "Initiate Supplier Request" button
    And Wait 10 seconds
    #Then Enter the Company Name in the Supplier Company Name field "Walmart Technologies"
    Then Enter company name in Supplier Company Name field "Walmart Technologies"
    Then Enter select the Tax Country in the dropdwon field
    And  Click on "Search" button
    When Wait 5 seconds
    And  Click on "Request a New Supplier" button
    When Wait 5 seconds
    Then Enter data in Legal Business Name field "Walmart Pvt Ltd"
    Then Enter data in Address Line field "testAddress2"
    Then Enter data in City field "testHyd"
    Then Select the state in dropdown field 
    Then Enter the data in Zip Code field "986676546"
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Click on the save locatoin in address verificatoin page
    Then Wait for 3 seconds
    Then Enter the First Name in Contact page "testKiran"
    Then Enter the Last Name in Contact page "testSomara"
    Then Enter the Job Title in Contact page "QAmanager"
    Then Enter the Email ID in Contact page "test.kiran@outlook.com"
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Click "Next" button
    #Request Assessment
   When Click radio button "Yes" under "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?" for Request Assessment
   And Wait for 3 seconds
   Then Click "Attach Document" button
   Then Upload "PDF" under "Upload Document"
   Then Enter "01/02/2021" in Expiry Date field
   Then add label as "VATDOCUMENT"
   Then Click on the Confirm button.
   And Wait for 3 seconds
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Click on the Submit Request
    And Wait for 10 seconds
    When Click "Notifications" tab
    And Logout from the system
    
    @Regression @Buyer @SRM5 @SLYN-30060
  Scenario: Verify As a Admin, I should see New Supplier Request under "Notificatoins" tab
  	Given Open the login page
    # And  Click "Suppliers" tab
    When Wait 10 seconds
    And Click "Notifications" tab
    Then Verify the notificatoins
    And Logout from the system
    
    @Regression @Buyer @SRM5 @SLYN-30060
  Scenario: Verify As a Admin, I should see "In-Progress" status New Supplier Request under "Notificatoins" tab
      And Click "Supplier Requests" tab
      And Wait for 3 seconds
      When Click "Initiate Supplier Request" button
      And Enter Random Supplier Company Name on Invite Supplier modal
      Then Select country as "Argentina" in "Tax Country" dropdown
      And Wait for 3 seconds
      When Click "Search" button
      And Wait for 3 seconds
      When Click "Request a New Supplier" button
      And Wait for 3 seconds
      Then Enter timestamp in "Legal Business Name" field "Legal Business"
      And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
      And Enter "Denmark" in "City" field after "Test" supplier registration
      Then Select "Jujuy" from "Region" dropdown
      And Enter "2000112" in "Postal Code" field after "Test" supplier registration
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #enter data
      When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
      And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration

      And Enter Contact Email Address on Supplier contacts from maildrop
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #Supplier Segmentation
      Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
      And Wait for 3 seconds
      Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
      And Wait for 3 seconds
      Then Select text "EMEA" under "IBM Region" for Custom Fields
      And Wait for 3 seconds
      Then Select text "BENELUX" under "IBM Market" for Custom Fields
      And Wait for 3 seconds
      Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
      And Wait for 3 seconds
      Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
      Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #Request Assessment
      When Click radio button "Yes" under "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?" for Request Assessment
      And Wait for 3 seconds
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      And Wait for 3 seconds
      When Click "Next" button
      #identifiers
      When Click "Next" button
      And Wait for 3 seconds
      And Wait for 3 seconds
      When Click "Continue" button
      And Wait for 3 seconds
      And Click "Submit Request" button
      And Wait for 5 seconds
      And Click on the Same supplier name after request and press Enter
      And Wait for 3 seconds
      Then verify the status as "Pending"
    #Answer questionnaire
      When Click on the "DPL Search" under Assigned Assessments
      And Wait for 3 seconds
      Then Click on the NO for First question
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
      Then verify the status as "In Progress"
      Then Save Supplier ID
      And Logout from the system
      When Enter other user in Email Address field
    #And Click on Continue button on Login page
      And Enter data in Password field
      When Click on Sign In button on Login
      And Click "Notifications" tab
      Then Verify notification has sent to as " is updated as In-progress"
    And Wait for 5 seconds
    Then Logout from the system
    
    @Regression @Buyer @SRM5 @SLYN-29167
  Scenario: Verify As a Admin, I should see "Approved" status New Supplier Request under "Notificatoins" tab
      And Click "Supplier Requests" tab
      And Wait for 3 seconds
      When Click "Initiate Supplier Request" button
      And Enter Random Supplier Company Name on Invite Supplier modal
      Then Select country as "United States of America" in "Tax Country" dropdown
      And Wait for 3 seconds
      When Click "Search" button
      And Wait for 3 seconds
      When Click "Request a New Supplier" button
      And Wait for 3 seconds
      Then Enter timestamp in "Legal Business Name" field "Legal Business"
      And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
      And Enter "Denmark" in "City" field after "Test" supplier registration
      Then Select "Alabama" in "State" dropdown
      And Enter "2000112" in "Zip Code" field after "Test" supplier registration
      When Click "Next" button
      And Wait for 3 seconds
      When Click "Cancel" button
      And Wait for 3 seconds
    #enter data
      When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
      And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
      And Enter Contact Email Address on Supplier contacts from maildrop
      When Click "Next" button
      And Wait for 3 seconds
    #Supplier Segmentation
      Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
      Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
      Then Select text "EMEA" under "IBM Region" for Custom Fields
      Then Select text "BENELUX" under "IBM Market" for Custom Fields
      Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
      Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
      Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
      When Click "Next" button
      And Wait for 3 seconds
    #Request Assessment
      When Click radio button "Yes" under "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?" for Request Assessment
      And Wait for 3 seconds
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
      #identifiers
      When Click "Next" button
      And Wait for 10 seconds
      When Click "Continue" button
      And Wait for 3 seconds
      And Click "Submit Request" button
      And Wait for 5 seconds
      And Click on the Same supplier name after request and press Enter
      And Wait for 3 seconds
      Then verify the status as "Approved"
      Then Save Supplier ID
      And Logout from the system
      When Enter other user in Email Address field
    #And Click on Continue button on Login page
      And Enter data in Password field
      When Click on Sign In button on Login
      And Click "Notifications" tab
      Then Verify notification is sent as "is approved systemically"
    Then Wait for 5 seconds
    And Logout from the system
    
    @Regression @Buyer @SRM5 @SLYN-29168
  Scenario: Verify As a Admin, I should see "Rejection Request" Option for New Supplier Request under "Submitted Requests" tab for "Approved" Status
      And Click "Supplier Requests" tab
      And Wait for 3 seconds
      When Click "Initiate Supplier Request" button
      And Enter Random Supplier Company Name on Invite Supplier modal
      Then Select country as "Argentina" in "Tax Country" dropdown
      And Wait for 3 seconds
      When Click "Search" button
      And Wait for 3 seconds
      When Click "Request a New Supplier" button
      And Wait for 3 seconds
      Then Enter timestamp in "Legal Business Name" field "Legal Business"
      And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
      And Enter "Denmark" in "City" field after "Test" supplier registration
      Then Select "Jujuy" from "Region" dropdown
      And Enter "2000112" in "Postal Code" field after "Test" supplier registration
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #enter data
      When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
      And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration

      And Enter Contact Email Address on Supplier contacts from maildrop
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #Supplier Segmentation
      Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
      And Wait for 3 seconds
      Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
      And Wait for 3 seconds
      Then Select text "EMEA" under "IBM Region" for Custom Fields
      And Wait for 3 seconds
      Then Select text "BENELUX" under "IBM Market" for Custom Fields
      And Wait for 3 seconds
      Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
      And Wait for 3 seconds
      Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
      Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #Request Assessment
      When Click radio button "Yes" under "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?" for Request Assessment
      And Wait for 3 seconds
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
      #identifiers
      When Click "Next" button
      And Wait for 10 seconds
      When Click "Continue" button
      And Wait for 3 seconds
      And Click "Submit Request" button
      And Wait for 5 seconds
      And Click on the Same supplier name after request and press Enter
      And Wait for 3 seconds
      Then verify the status as "Pending"
      When Click on "Reject Request" link button
      Then Verify "Reject Request" label is displying under "Reject Request" for "Reject Request"
      Then Enter the Notes under the accepth buyer Notes Box
      When Click "Submit" button
      And Verify toast message "Supplier Request Rejected successfully" successfully is shown
      And Wait for 5 seconds
      Then verify the status as "Rejected"
      Then Save Supplier ID
      And Logout from the system
      When Enter other user in Email Address field
    #And Click on Continue button on Login page
      And Enter data in Password field
      When Click on Sign In button on Login
    And Click "Notifications" tab
      Then Verify notification has been sent to as "is rejected by"
    Then Wait for 3 seconds
    And Logout from the system
    
    @Regression @Buyer @SRM5 @SLYN-29168
  Scenario: Verify As a Admin, I should see "Rejection Request" Option for New Supplier Request under "Submitted Requests" tab for "Pending" Status
      And Click "Supplier Requests" tab
      And Wait for 3 seconds
      When Click "Initiate Supplier Request" button
      And Enter Random Supplier Company Name on Invite Supplier modal
      Then Select country as "Argentina" in "Tax Country" dropdown
      And Wait for 3 seconds
      When Click "Search" button
      And Wait for 3 seconds
      When Click "Request a New Supplier" button
      And Wait for 3 seconds
      Then Enter timestamp in "Legal Business Name" field "Legal Business"
      And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
      And Enter "Denmark" in "City" field after "Test" supplier registration
      Then Select "Jujuy" from "Region" dropdown
      And Enter "2000112" in "Postal Code" field after "Test" supplier registration
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #enter data
      When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
      And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration

      And Enter Contact Email Address on Supplier contacts from maildrop
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #Supplier Segmentation
      Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
      And Wait for 3 seconds
      Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
      And Wait for 3 seconds
      Then Select text "EMEA" under "IBM Region" for Custom Fields
      And Wait for 3 seconds
      Then Select text "BENELUX" under "IBM Market" for Custom Fields
      And Wait for 3 seconds
      Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
      And Wait for 3 seconds
      Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
      Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #Request Assessment
      When Click radio button "Yes" under "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?" for Request Assessment
      And Wait for 3 seconds
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      And Wait for 3 seconds
      When Click "Next" button
      #identifiers
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 10 seconds
      When Click "Continue" button
      And Wait for 3 seconds
      And Click "Submit Request" button
      And Wait for 5 seconds
      And Click on the Same supplier name after request and press Enter
      And Wait for 3 seconds
      Then verify the status as "Pending"
      Then Save Supplier ID
      When Click on "Reject Request" link button
      Then Verify "Reject Request" label is displying under "Reject Request" for "Reject Request"
      Then Enter the Notes under the accepth buyer Notes Box
      When Click "Submit" button
      And Verify toast message "Supplier Request Rejected successfully" successfully is shown
      And Wait for 5 seconds
      Then verify the status as "Rejected"
      Then Save Supplier ID
      And Logout from the system
      When Enter other user in Email Address field
    #And Click on Continue button on Login page
      And Enter data in Password field
      When Click on Sign In button on Login
      And Click "Notifications" tab
      Then Verify notification has been sent to as "is rejected by"
      Then Wait for 3 seconds
      And Logout from the system
   
    @Regression @Buyer @SRM5 @SLYN-29168
  Scenario: Verify As a Admin, I should see "Rejection Request" Option for New Supplier Request under "Submitted Requests" tab for "In Progress" Status
      And Click "Supplier Requests" tab
      And Wait for 3 seconds
      When Click "Initiate Supplier Request" button
      And Enter Random Supplier Company Name on Invite Supplier modal
      Then Select country as "Argentina" in "Tax Country" dropdown
      And Wait for 3 seconds
      When Click "Search" button
      And Wait for 3 seconds
      When Click "Request a New Supplier" button
      And Wait for 3 seconds
      Then Enter timestamp in "Legal Business Name" field "Legal Business"
      And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
      And Enter "Denmark" in "City" field after "Test" supplier registration
      Then Select "Jujuy" from "Region" dropdown
      And Enter "2000112" in "Postal Code" field after "Test" supplier registration
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #enter data
      When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
      And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration

      And Enter Contact Email Address on Supplier contacts from maildrop
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #Supplier Segmentation
      Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
      And Wait for 3 seconds
      Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
      And Wait for 3 seconds
      Then Select text "EMEA" under "IBM Region" for Custom Fields
      And Wait for 3 seconds
      Then Select text "BENELUX" under "IBM Market" for Custom Fields
      And Wait for 3 seconds
      Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
      And Wait for 3 seconds
      Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
      Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #Request Assessment
      When Click radio button "Yes" under "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?" for Request Assessment
      And Wait for 3 seconds
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      And Wait for 3 seconds
      When Click "Next" button
      #identifiers
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 10 seconds
      When Click "Continue" button
      And Wait for 3 seconds
      And Click "Submit Request" button
      And Wait for 5 seconds
      And Click on the Same supplier name after request and press Enter
      And Wait for 3 seconds
      Then verify the status as "Pending"
    #Answer questionnaire
      When Click on the "DPL Search" under Assigned Assessments
      And Wait for 3 seconds
      Then Click on the NO for First question
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
      Then verify the status as "In Progress"
      Then Save Supplier ID
      When Click on "Reject Request" link button
      Then Verify "Reject Request" label is displying under "Reject Request" for "Reject Request"
      Then Enter the Notes under the accepth buyer Notes Box
      When Click "Submit" button
      And Verify toast message "Supplier Request Rejected successfully" successfully is shown
      And Wait for 5 seconds
      Then verify the status as "Rejected"
      Then Save Supplier ID
      And Logout from the system
      When Enter other user in Email Address field
    #And Click on Continue button on Login page
      And Enter data in Password field
      When Click on Sign In button on Login
      And Click "Notifications" tab
      Then Verify notification has been sent to as "is rejected by"
      Then Wait for 3 seconds
      And Logout from the system
   
    
    @Regression @Buyer @SRM5 @SLYN-29169
  Scenario: Verify As a Admin, I should see "Cancel Request" Option for New Supplier Request under "Submitted Requests" tab for "Pending" Status
      And Click "Supplier Requests" tab
      And Wait for 3 seconds
      When Click "Initiate Supplier Request" button
      And Enter Random Supplier Company Name on Invite Supplier modal
      Then Select country as "Argentina" in "Tax Country" dropdown
      And Wait for 3 seconds
      When Click "Search" button
      And Wait for 3 seconds
      When Click "Request a New Supplier" button
      And Wait for 3 seconds
      Then Enter timestamp in "Legal Business Name" field "Legal Business"
      And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
      And Enter "Denmark" in "City" field after "Test" supplier registration
      Then Select "Jujuy" from "Region" dropdown
      And Enter "2000112" in "Postal Code" field after "Test" supplier registration
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #enter data
      When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
      And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration

      And Enter Contact Email Address on Supplier contacts from maildrop
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #Supplier Segmentation
      Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
      And Wait for 3 seconds
      Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
      And Wait for 3 seconds
      Then Select text "EMEA" under "IBM Region" for Custom Fields
      And Wait for 3 seconds
      Then Select text "BENELUX" under "IBM Market" for Custom Fields
      And Wait for 3 seconds
      Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
      And Wait for 3 seconds
      Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
      Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #Request Assessment
      When Click radio button "Yes" under "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?" for Request Assessment
      And Wait for 3 seconds
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      And Wait for 3 seconds
      When Click "Next" button
      #identifiers
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 10 seconds
      When Click "Continue" button
      And Wait for 3 seconds
      And Click "Submit Request" button
      And Wait for 5 seconds
      And Click on the Same supplier name after request and press Enter
      And Wait for 3 seconds
      Then verify the status as "Pending"
      When Click on "Cancel Request" link button
      Then Verify "Cancel Request" label is displying under "Cancel Request" for "Cancel Request"
      Then Enter the Notes under the accepth buyer Notes Box
      When Click "Submit" button
      And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
      And Wait for 5 seconds
      Then verify the status as "Cancelled"
      And Wait for 3 seconds
      Then Save Supplier ID
      And Logout from the system
      When Enter other user in Email Address field
    #And Click on Continue button on Login page
      And Enter data in Password field
      When Click on Sign In button on Login
      And Click "Notifications" tab
      Then Verify notification has been sent to as "is cancelled by"
      Then Wait for 3 seconds
      And Logout from the system
    
    @Regression @Buyer @SRM5 @SLYN-29169
  Scenario: Verify As a Admin, I should see "Cancel Request" Option for New Supplier Request under "Submitted Requests" tab for "In-Progress" Status
      And Click "Supplier Requests" tab
      And Wait for 3 seconds
      When Click "Initiate Supplier Request" button
      And Enter Random Supplier Company Name on Invite Supplier modal
      Then Select country as "Argentina" in "Tax Country" dropdown
      And Wait for 3 seconds
      When Click "Search" button
      And Wait for 3 seconds
      When Click "Request a New Supplier" button
      And Wait for 3 seconds
      Then Enter timestamp in "Legal Business Name" field "Legal Business"
      And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
      And Enter "Denmark" in "City" field after "Test" supplier registration
      Then Select "Jujuy" from "Region" dropdown
      And Enter "2000112" in "Postal Code" field after "Test" supplier registration
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #enter data
      When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
      And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration

      And Enter Contact Email Address on Supplier contacts from maildrop
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #Supplier Segmentation
      Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
      And Wait for 3 seconds
      Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
      And Wait for 3 seconds
      Then Select text "EMEA" under "IBM Region" for Custom Fields
      And Wait for 3 seconds
      Then Select text "BENELUX" under "IBM Market" for Custom Fields
      And Wait for 3 seconds
      Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
      And Wait for 3 seconds
      Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
      Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #Request Assessment
      When Click radio button "Yes" under "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?" for Request Assessment
      And Wait for 3 seconds
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      And Wait for 3 seconds
      When Click "Next" button
      #identifiers
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 10 seconds
      When Click "Continue" button
      And Wait for 3 seconds
      And Click "Submit Request" button
      And Wait for 5 seconds
      And Click on the Same supplier name after request and press Enter
      And Wait for 3 seconds
      Then verify the status as "Pending"
    #Answer questionnaire
      When Click on the "DPL Search" under Assigned Assessments
      And Wait for 3 seconds
      Then Click on the NO for First question
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
      Then verify the status as "In Progress"
      When Click on "Cancel Request" link button
      Then Verify "Cancel Request" label is displying under "Cancel Request" for "Cancel Request"
      Then Enter the Notes under the accepth buyer Notes Box
      When Click "Submit" button
      And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
      And Wait for 5 seconds
      Then verify the status as "Cancelled"
      And Wait for 3 seconds
      Then Save Supplier ID
      And Logout from the system
      When Enter other user in Email Address field
    #And Click on Continue button on Login page
      And Enter data in Password field
      When Click on Sign In button on Login
      And Click "Notifications" tab
      Then Verify notification has been sent to as "is cancelled by"
      Then Wait for 3 seconds
      And Logout from the system
    
    @Regression @Buyer @SRM5 @SLYN-29169
  Scenario: Verify As a Admin, I should see "Cancel Request" Option for New Supplier Request under "Submitted Requests" tab for "Approved" Status
      And Click "Supplier Requests" tab
      And Wait for 3 seconds
      When Click "Initiate Supplier Request" button
      And Enter Random Supplier Company Name on Invite Supplier modal
      Then Select country as "United States of America" in "Tax Country" dropdown
      And Wait for 3 seconds
      When Click "Search" button
      And Wait for 3 seconds
      When Click "Request a New Supplier" button
      And Wait for 3 seconds
      Then Enter timestamp in "Legal Business Name" field "Legal Business"
      And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
      And Enter "Denmark" in "City" field after "Test" supplier registration
      Then Select "Alabama" in "State" dropdown
      And Enter "2000112" in "Zip Code" field after "Test" supplier registration
      When Click "Next" button
      And Wait for 3 seconds
      When Click "Cancel" button
      And Wait for 3 seconds
    #enter data
      When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
      And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
      And Enter Contact Email Address on Supplier contacts from maildrop
      When Click "Next" button
      And Wait for 3 seconds
    #Supplier Segmentation
      Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
      Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
      Then Select text "EMEA" under "IBM Region" for Custom Fields
      Then Select text "BENELUX" under "IBM Market" for Custom Fields
      Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
      Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
      Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
      When Click "Next" button
      And Wait for 3 seconds
    #Request Assessment
      When Click radio button "Yes" under "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?" for Request Assessment
      And Wait for 3 seconds
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      And Wait for 3 seconds
      When Click "Next" button
      #identifiers
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 10 seconds
      When Click "Continue" button
      And Wait for 3 seconds
      And Click "Submit Request" button
      And Wait for 5 seconds
      And Click on the Same supplier name after request and press Enter
      And Wait for 3 seconds
      Then verify the status as "Approved"
      When Click on "Cancel Request" link button
      Then Verify "Cancel Request" label is displying under "Cancel Request" for "Cancel Request"
      Then Enter the Notes under the accepth buyer Notes Box
      When Click "Submit" button
      And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
      And Wait for 5 seconds
      Then verify the status as "Cancelled"
      And Wait for 3 seconds
      Then Save Supplier ID
      And Logout from the system
      When Enter other user in Email Address field
    #And Click on Continue button on Login page
      And Enter data in Password field
      When Click on Sign In button on Login
      And Click "Notifications" tab
      Then Verify notification has been sent to as "is cancelled by"
      Then Wait for 3 seconds
      And Logout from the system


    @Regression @Buyer @SRM5 @SLYN-29171
  Scenario: Verify As a Admin, I should see "Complete Request" Option for New Supplier Request under "Submitted Requests" tab for "Approved" Status
      And Click "Supplier Requests" tab
      And Wait for 3 seconds
      When Click "Initiate Supplier Request" button
      And Enter Random Supplier Company Name on Invite Supplier modal
      Then Select country as "United States of America" in "Tax Country" dropdown
      And Wait for 3 seconds
      When Click "Search" button
      And Wait for 3 seconds
      When Click "Request a New Supplier" button
      And Wait for 3 seconds
      Then Enter timestamp in "Legal Business Name" field "Legal Business"
      And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
      And Enter "Denmark" in "City" field after "Test" supplier registration
      Then Select "Alabama" in "State" dropdown
      And Enter "2000112" in "Zip Code" field after "Test" supplier registration
      When Click "Next" button
      And Wait for 3 seconds
      When Click "Cancel" button
      And Wait for 3 seconds
    #enter data
      When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
      And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
      And Enter Contact Email Address on Supplier contacts from maildrop
      When Click "Next" button
      And Wait for 3 seconds
    #Supplier Segmentation
      Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
      Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
      Then Select text "EMEA" under "IBM Region" for Custom Fields
      Then Select text "BENELUX" under "IBM Market" for Custom Fields
      Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
      Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
      Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
      When Click "Next" button
      And Wait for 3 seconds
    #Request Assessment
      When Click radio button "Yes" under "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?" for Request Assessment
      And Wait for 3 seconds
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      And Wait for 3 seconds
      When Click "Next" button
      #identifiers
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 10 seconds
      When Click "Continue" button
      And Wait for 3 seconds
      And Click "Submit Request" button
      And Wait for 5 seconds
      And Click on the Same supplier name after request and press Enter
      And Wait for 3 seconds
      Then verify the status as "Approved"
      When Click on "Complete Request" link button at 2
      Then Verify "Complete Request" label is displying under "Complete Request" for "Complete Request"
      And Enter the Notes under complete request
      When Click "Proceed to Invite" button
      #Verify input fields not enabled
      When Click "Next" button
      Then Wait for 3 seconds
      When Click "Skip" button
      Then Wait for 3 seconds
      When Click "Skip" button
      Then Wait for 3 seconds
      When Click "Next" button
      Then Wait for 3 seconds
    #invite without questionare
      Then Click on the Click here on Questionnaire page
      And Click on Assign button on Assign Questionnaires window
      And Click on the Confirm on Confirmation Needed
      And Click on Next button on Assign Questionnaires window
      And Wait for 3 seconds
      When Click "Send Invite" button
      Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
      Then Wait for 5 seconds
      Then verify the status as "Completed"
      And Wait for 3 seconds
      Then Save Supplier ID
      And Logout from the system
      When Enter other user in Email Address field
    #And Click on Continue button on Login page
      And Enter data in Password field
      When Click on Sign In button on Login
      And Click "Notifications" tab
      Then Verify notification sent to as "automation user"
      Then Wait for 3 seconds
      And Logout from the system
    
   @Regression @Buyer @SRM5 @SLYN-29172
  Scenario: Verify As a Admin, I should able to create "Approval request notification" Option for New Supplier Request under "Submitted Requests" tab
     And Click "Supplier Requests" tab
     And Wait for 3 seconds
     When Click "Initiate Supplier Request" button
     And Enter Random Supplier Company Name on Invite Supplier modal
     Then Select country as "Argentina" in "Tax Country" dropdown
     And Wait for 3 seconds
     When Click "Search" button
     And Wait for 3 seconds
     When Click "Request a New Supplier" button
     And Wait for 3 seconds
     Then Enter timestamp in "Legal Business Name" field "Legal Business"
     And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
     And Enter "Denmark" in "City" field after "Test" supplier registration
     Then Select "Jujuy" from "Region" dropdown
     And Enter "2000112" in "Postal Code" field after "Test" supplier registration
     And Wait for 3 seconds
     When Click "Next" button
     And Wait for 3 seconds
    #enter data
     When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
     And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration

     And Enter Contact Email Address on Supplier contacts from maildrop
     And Wait for 3 seconds
     When Click "Next" button
     And Wait for 3 seconds
    #Supplier Segmentation
     Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
     And Wait for 3 seconds
     Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
     And Wait for 3 seconds
     Then Select text "EMEA" under "IBM Region" for Custom Fields
     And Wait for 3 seconds
     Then Select text "BENELUX" under "IBM Market" for Custom Fields
     And Wait for 3 seconds
     Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
     And Wait for 3 seconds
     Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
     Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
     And Wait for 3 seconds
     When Click "Next" button
     And Wait for 3 seconds
    #Request Assessment
     When Click radio button "Yes" under "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?" for Request Assessment
     And Wait for 3 seconds
     Then Click "Attach Document" button
     Then Upload "PDF" under "Upload Document"
     Then Enter "01/02/2021" in Expiry Date field
     Then add label as "VATDOCUMENT"
     Then Click on the Confirm button.
     And Wait for 3 seconds
     When Click "Next" button
     #identifiers
     And Wait for 3 seconds
     When Click "Next" button
     And Wait for 10 seconds
     When Click "Continue" button
     And Wait for 3 seconds
     And Click "Submit Request" button
     And Wait for 5 seconds
     And Click on the Same supplier name after request and press Enter
     And Wait for 3 seconds
     Then verify the status as "Pending"
     Then Save Supplier ID
     And Click "Notifications" tab
     Then Verify notification has been sent to "Internal Buyer"
     Then Wait for 3 seconds
     And Logout from the system
     When Enter other user in Email Address field
    #And Click on Continue button on Login page
     And Enter data in Password field
     When Click on Sign In button on Login
     And Click "Notifications" tab
     Then Verify notification has been sent to "Internal Buyer"
     Then Wait for 3 seconds
     And Logout from the system

  @Regression @Buyer @SRM5 @SLYN-30081
  Scenario: Verify As a admin, I should see Notifications for Supplier Onboarded under "Notificatoins" tab

      And Click on My Suppliers Tab
      And Click on Invite Supplier button on Connected Suppliers
      Then Switch to the new window
      When Click on the Supplier Company Name text box
      Then Enter Supplier Company Name on Invite Supplier modal
      When Click on the enter
      And Click on the IgnoreAndProceed button
    #select USA from the dropdown
      Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
      And Enter Contact Email Address on Invite Supplier window from maildrop
      And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
      And Enter Contact First Name on Invite Supplier window
      And Enter Contact Last Name on Invite Supplier window
      When Click on Next button on Invite Supplier window
      And Click on the Skip
      When Click on the Skip
      When Click on the Skip
    #invite without questionare
      And Click on the Click here on Questionnaire page
      And Click on the Clear All Link on Assign Questionnaires window
      And Click on Assign button on Assign Questionnaires window
      And Click on the Confirm on Confirmation Needed
      And Click on Next button on Assign Questionnaires window
      When Click on Send Invite button on Invite a New User Modal
      And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
      When Click on the Search by supplier name and press Enter
      Then verify the status as "Pending Invites"
      When Wait 5 seconds
      And Logout from the system
      When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
      And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
      When Click on the email with subject "Trust Your Supplier" from maildrop
      And Click on Join Now Link in the "Argentina" supplier Email from maildrop
      And Switch to "new TYS" tab
      When Wait 10 seconds
    #When Open the registration URL
    #Enter data
      And Enter timestamp in "Legal Business Name" field "Legal Business"
      And Enter the Company Website in Website field
      When Click TYS Terms & Conditions checkbox
      And Click Continue button in supplier registration page
      Then Enter Job title on User Account page
      And Enter phone number "9490491531" in "Phone Number" field
      And Enter new password in Password field
      And Enter same password in Confirm Password field
      When Click "Continue" button
      Then Switch to "Maildrop" tab
    #maildrop
      Then Wait for 3 seconds
      When Click on refresh button
      Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
      When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
      Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
      And Switch to "new TYS" tab
      And Enter verification code in TYS registration tab
      When Click "Submit" button
      And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
      And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
      And Enter "TestCity" in "City" field after "Albania" supplier registration
      And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
      And Select "Alabama" in "State" dropdown
      When Click "Next" button
      And Select the UNSPSC codes on the Basic information page
      When Click "Next" button
      Then Wait for 5 seconds
      And Enter "secondary" in "First Name" field
      And Enter "admin" in "Last Name" field
      And Enter Email on Invite a user registration modal "admin"
      And Enter Confirmation Email on Invite a user registration modal "admin"
      And Enter Job title on secondary invite
      And Enter phone number "9490491534" in "Phone Number" field
      When Click "Invite" button
      When Click accept IBM registration checkbox
      And Click "Finish" button
      When Click "Skip" button
      And Switch to the active window
      Then Wait for 10 seconds
    #When Click on Do it later button
    #Basic info page
      When Click "Basic Information" tab
      And click on the calandar icon
      Then Wait for 5 seconds
      Then select date "3" from the date
      And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
      And Enter " testUAT" text in the discription text box
      And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
      And Scroll to view "Legal Business Name" field
      When Click "Upload Tax Registration Document" button
      Then Upload "PDF" under "Upload Document"
      When Click on the Confirm button.
      Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
      And Select "Privately Owned" value from Business type dropdown
      And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
      And Enter number "1435346645645645" in "Fax Number" in corporation details
      And Enter company email "dsgse@test.com" in email field
      And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
      When Click "No" radio under "Are you publicly traded on a stock exchange?"
      Then Enter the value "5" at Number of Full Time Employees on the Basic information page
      And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
      Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
      When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
      When Click on Find ID button
      When Click on Not a suitable match
      Then Wait for 10 seconds
      When Click on Find ID button
      When Click on Not a suitable match
      Then Wait for 10 seconds
      When Click on Find ID button
      When Click on Not a suitable match
      Then Wait for 10 seconds
      When Click on at "Next Step" button
      Then Wait for 10 seconds
      When Click on Assign "1" button
      Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
      And Select the "2002" year from the drop down
      When Click on Save button on the Assign a Contact to Management Team modal
      Then Wait for 3 seconds
      When Click on Assign "1" button
      Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
      When Click on Save button on the Assign a Contact to Management Team modal
      Then Wait for 3 seconds
      When Click on Assign "1" button
      Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
      When Click on Save button on the Assign a Contact to Management Team modal
      Then Wait for 3 seconds
      When Click on "Next Step" button
      And Click on the Add Ownership at Ownership tab
      Then Select the option Individual from the drop down
      And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
      And Enter the value "50" percentage at the Ownership Percentage
      When Click on the save new individual owner button on the modal
      When Click on Corporation Relations button
      And Click on Corporaion NO radio button
      When Wait 5 seconds
      When Click on the Save and Continue button
      And Click on Review and publish profile button in the review and Publish tab
      And Click on the publish button
      When Wait 5 seconds
      And Logout from the system
      Then Wait for 3 seconds
    #Onboard process
      Then Enter data in Email Address field
      #When Click on Continue button on Login page
      Then Enter data in Password field
      When Click on Sign In button on Login
      And Click on My Suppliers Tab
      When Click on the Search by supplier name and press Enter
      And Click "Go to details" button
    #Action center
      When Click on the Action Center
      When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
      And Click on the NO for First question
      When Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      And Enter "01/02/2021" in Expiry Date field
      And add label as "VATDOCUMENT"
      When Click on the Confirm button.
      And Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      Then Switch to the active window
      And Switch to the parent window
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
      When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
      And Click on the NO for First question in PIF Indicator
      Then Enter the Notes under notes for buyer Notes Box
      And Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      Then Switch to the active window
      And Switch to the parent window
    ###USL Search
    # And Refresh the current webpage
    #When Click on the Action Center
    #Then Scroll the page
      When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
      And Click on the NO for First question
    #When Click on No for First question
      And Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      And Enter "01/02/2021" in Expiry Date field
      And add label as "VATDOCUMENT"
      When Click on the Confirm button.
      And Click "No" for the Second Question
      And Click on the Submit button in DPL Search
      And Wait for 3 seconds
      And Click Submit button in DPL Search
      Then Switch to the active window
      And Switch to the parent window
      And Wait for 3 seconds
      #Custom fileds

      And Select text "General Marketplace" under "Client Names" for Custom Fields
      And Select text "Compagnie IBM France SAS(0048)" under "Client Branch Names" for Custom Fields
      When Click on "Save Changes" button under Custom Fields
      And Verify toast message "The custom field values are successfully saved." successfully is shown
      Then Wait for 5 seconds
      And Refresh the current webpage
      Then Wait for 10 seconds
      Then verify the status as "Ready To Onboard"
      When Click on "Onboard Supplier" button on panel
      Then Switch to the active window
      And Enter notes in the onboard supplier modal
      When Click "Onboard" button
      And Verify the Status as Onboarded
      And Wait for 3 seconds
      And Click "Notifications" tab
      Then Wait for 10 seconds
      Then Verify notification has been sent to recipient as "has been onboarded successfully by"
      And Logout from the system


  @Regression @Buyer @SRM5 @SLYN-30081
  Scenario: Verify As a buyer, I should see Notifications when Supplier is Onboarded under "Notificatoins" tab for Requester and SRC role assigned

    And Logout from the system
    Then Enter category manager email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Wait for 10 seconds
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip

    When Click on the Skip
      When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "admin" in "Last Name" field
    And Enter Email on Invite a user registration modal "admin"
    And Enter Confirmation Email on Invite a user registration modal "admin"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 10 seconds
    #When Click on Do it later button
    #Basic info page
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "3" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    And Select "Privately Owned" value from Business type dropdown
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    #Onboard process
    Then Enter category manager email in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    And Click on the NO for First question in PIF Indicator
    Then Enter the Notes under notes for buyer Notes Box
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    ###USL Search
    # And Refresh the current webpage
    #When Click on the Action Center
    #Then Scroll the page
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click "No" for the Second Question
    And Click on the Submit button in DPL Search
    And Wait for 3 seconds
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
      #Custom fileds

    And Select text "General Marketplace" under "Client Names" for Custom Fields
    And Select text "Compagnie IBM France SAS(0048)" under "Client Branch Names" for Custom Fields
    When Click on "Save Changes" button under Custom Fields
    And Verify toast message "The custom field values are successfully saved." successfully is shown
    Then Wait for 5 seconds
    And Refresh the current webpage
    Then Wait for 10 seconds
    Then verify the status as "Ready To Onboard"
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    And Verify the Status as Onboarded
    And Wait for 3 seconds
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification has been sent to recipient as "has been onboarded successfully by"
    And Logout from the system

  @Regression @Buyer @SRM5 @SLYN-30081
  Scenario: Verify As a buyer, I should see Notifications to administrator and requester and other user role when supplier is onboarded

    And Logout from the system
    Then Enter category manager email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Wait for 10 seconds
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the edit button for "Approver" role
    Then Click "srconboarduser@maildrop.cc" tab on modal
    Then Click "Save" button
    When Wait 5 seconds
    Then Click on the Check button for "Approver" role
    Then Click "Next" button
      #When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    When Wait 1 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "admin" in "Last Name" field
    And Enter Email on Invite a user registration modal "admin"
    And Enter Confirmation Email on Invite a user registration modal "admin"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 10 seconds
    #When Click on Do it later button
    #Basic info page
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "3" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    And Select "Privately Owned" value from Business type dropdown
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    #Onboard process
    Then Enter category manager email in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    And Click on the NO for First question in PIF Indicator
    Then Enter the Notes under notes for buyer Notes Box
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    ###USL Search
    # And Refresh the current webpage
    #When Click on the Action Center
    #Then Scroll the page
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click "No" for the Second Question
    And Wait for 3 seconds
    Then Scroll Arrow Down the page
    And Click on the Submit button in USL Search
    And Wait for 3 seconds
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
      #Custom fileds

    And Select text "General Marketplace" under "Client Names" for Custom Fields
    And Select text "Compagnie IBM France SAS(0048)" under "Client Branch Names" for Custom Fields
    When Click on "Save Changes" button under Custom Fields
    And Verify toast message "The custom field values are successfully saved." successfully is shown
    Then Wait for 5 seconds
    And Refresh the current webpage
    Then Wait for 10 seconds
    Then verify the status as "Ready To Onboard"
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    And Verify the Status as Onboarded
    And Wait for 3 seconds
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification has been sent to recipient as "has been onboarded successfully by"
    And Logout from the system
    Then Enter requester user in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 5 seconds
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification has been sent to recipient as "has been onboarded successfully by"
    And Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 5 seconds
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification has been sent to recipient as "has been onboarded successfully by"
    And Logout from the system

  @Regression @Buyer @SRM5 @SLYN-29821
  Scenario: Verify As a buyer, I should see Notifications to administrator and requester and other user role when supplier is updated

    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter Random Supplier Company Name on Invite Supplier modal
    Then Select country as "United States of America" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click "Request a New Supplier" button
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Alabama" in "State" dropdown
    And Enter "2000112" in "Zip Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Cancel" button
    And Wait for 3 seconds
    #enter data
    When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
    And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
    #
    And Enter Contact Email Address on Supplier contacts from maildrop
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #Request Assessment
    When Click radio button "Yes" under "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?" for Request Assessment
    And Wait for 3 seconds
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    When Click "Next" button
    #identifiers
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 10 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    And Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the status as "Pending"
    And Wait for 5 seconds
    When Click on Edit button for same user login
    And Wait for 3 seconds
    #Verify the values are populated
    And Enter "TestAddress123" in "Address Line 1" field after "Test" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Cancel" button
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    And Click "Submit Request" button
    And Wait for 5 seconds
    And Logout from the system
    When Enter category manager email in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification has been sent to recipient as "updated the Supplier Request"
    And Logout from the system