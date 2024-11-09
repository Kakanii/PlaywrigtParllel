Feature: TPRM feature

  #TPRM feature
  Background: Start the application
    Given Open the login page
    Then Close the hotjar window
    Then Enter data in Email Address field
    ###And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 5 seconds


#SLYN-31927
  @Regression @TPRM @SLYN-31927
  Scenario: Verify as a Buyer, I should able to see the Tooltip for Identifiers in supplier information screen
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter "JPMorgan Chase" Supplier Company Name on Invite Supplier modal
    Then Select country as "United States of America" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on "JPMorgan Chase" Businessname from Supplier Request
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #When Click "Cancel" button
    #enter data
    When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
    And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
    #
    And Enter Contact Email Address on Supplier contacts from maildrop
    And Wait for 3 seconds
    When Click "Next" button
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
    #Verify the tooltip
    Then Verify tootltip text "TYS conducts external database lookups based on the details provided on the 'Supplier Information' screen to facilitate risk assessment and current standings of the entity. This enables reviewers to make informed decisions during the supplier request process." on "TYS conducts external database lookups based on the details provided on the" screen
    When Click "Next" button
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    
    Then Show TPRM "Identifiers" tooltip "TYS has conducted an external database lookup to find these supplier identifiers, enabling the retrieval of relevant risk information for review." in "Supplier Information"
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for new supplier I should see the Legal business name ,address and tooltip as "TYS conducts external database lookups based on the details provided on the 'Supplier Information' screen to facilitate risk assessment and current standings of the entity. This enables reviewers to make informed decisions during the supplier request process.".
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter "JPMorgan Chase" Supplier Company Name on Invite Supplier modal
    Then Select country as "United States of America" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on "JPMorgan Chase" Businessname from Supplier Request
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #When Click "Cancel" button
    #enter data
    When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
    And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
    #
    And Enter Contact Email Address on Supplier contacts from maildrop
    And Wait for 3 seconds
    When Click "Next" button
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
    #Verify the tooltip
    Then Verify tootltip text "TYS conducts external database lookups based on the details provided on the 'Supplier Information' screen to facilitate risk assessment and current standings of the entity. This enables reviewers to make informed decisions during the supplier request process." on "TYS conducts external database lookups based on the details provided on the" screen
    And Wait for 3 seconds
    #Verify address and company name
    Then Verify the label "Supplier Information Details" displayed on "Identifiers" page
    Then Show "JPMorgan Chase" label under "Identifiers" field
    Then Show " 1111 POLARIS PKWY,  COLUMBUS, 43240-2031, Ohio, United States of America" label under "Identifiers" field
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    
    Then Show TPRM "Identifiers" tooltip "TYS has conducted an external database lookup to find these supplier identifiers, enabling the retrieval of relevant risk information for review." in "Supplier Information"
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for new supplier I should see potential matches or a single match found, display the matches in the list view within the respective section, on the ‘External Identifiers' tab
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter "JPMorgan Chase" Supplier Company Name on Invite Supplier modal
    Then Select country as "United States of America" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on "JPMorgan Chase" Businessname from Supplier Request
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #When Click "Cancel" button
    #enter data
    When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
    And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
    #
    And Enter Contact Email Address on Supplier contacts from maildrop
    And Wait for 3 seconds
    When Click "Next" button
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
    #Verify the tooltip
    Then Verify tootltip text "Below are potential matches found for this entity in the Dun & Bradstreet database. Please identify and select the correct match. If matches are incorrect, select 'No correct matches found for the supplier' in the list to proceed." on "Below are potential matches found for this entity in the Dun & Bradstreet database. Please identify and select the correct match." screen
    And Wait for 3 seconds
    #Verify radio buttons
    Then Verify the radio button for "No correct matches found for the Supplier" displayed on "DUNS" page at "1"
    And Verify the radio button for "No correct matches found for the Supplier" displayed on "Moody's" page at "2"
    And Verify "Recommended" option is default selected on "JPMorgan Chase Bank" for DUNS
    And Verify "Recommended" option is default selected on "JPMORGAN CHASE BANK" for Moody's
    And Verify potential match when "No correct matches found for the Supplier" is selected on "DUNS" at "1"
    And Verify potential match when "No correct matches found for the Supplier" is selected on "Moodys" at "2"
    And Verify potential match for "JPMorgan Chase Bank" ID is selected on "DUNS" at "1"
    And Verify potential match for "JPMorgan Chase Bank" ID is selected on "Moodys" at "3"
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    
    Then Show TPRM "Identifiers" tooltip "TYS has conducted an external database lookup to find these supplier identifiers, enabling the retrieval of relevant risk information for review." in "Supplier Information"
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for new supplier I should be able to request a supplier request by selecting "Not a suitable match" on external identifier
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter "JPMorgan Chase" Supplier Company Name on Invite Supplier modal
    Then Select country as "United States of America" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on "JPMorgan Chase" Businessname from Supplier Request
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #When Click "Cancel" button
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
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
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
    And Wait for 5 seconds
    #identifiers
    #Verify radio buttons
    And Click on "No correct matches found for the Supplier" for "DUNS" at "1"
    And Wait for 5 seconds
    And Click on "No correct matches found for the Supplier" for "Moodys" at "3"
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    Then Verify "Moodys Analytics" is selected as "No correct matches found for the Supplier"
    Then Verify "Dun & Bradstreet (D-U-N-S)" is selected as "No correct matches found for the Supplier"
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system


    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for new supplier I should be able to edit a supplier request when selecting "Not a suitable match" on external identifier
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter "JPMorgan Chase" Supplier Company Name on Invite Supplier modal
    Then Select country as "United States of America" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on "JPMorgan Chase" Businessname from Supplier Request
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #When Click "Cancel" button
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
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
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
    And Wait for 5 seconds
    #identifiers
    #Verify radio buttons
    And Click on "No correct matches found for the Supplier" for "DUNS" at "1"
    And Wait for 5 seconds
    And Click on "No correct matches found for the Supplier" for "Moodys" at "3"
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Back" button
    And Verify potential match for "JPMorgan Chase Bank" ID is selected on "DUNS" at "1"
    #And Verify potential match for "JPMORGAN CHASE BANK" ID is selected on "Moodys" at "3"
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 5 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system



    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for new supplier I should be able to see when no matches found "Attempt to locate this supplier in the Dun & Bradstreet (D-U-N-S) company database has failed. This could be because this supplier does not exist in the database or the suppliers legal name & address is not accurate. Please verify the accuracy of the data entered on the Supplier Information screen."
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
    And Wait for 15 seconds
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
    Then Verify "Attempt to locate this supplier in the Dun & Bradstreet (D-U-N-S) company database has failed. This could be because this supplier does not exist in the database or the suppliers legal name & address is not accurate. Please verify the accuracy of the data entered on the Supplier Information screen." is displayed under "DUNS"
    Then Verify "Attempt to locate this supplier in the Moodys Analytics company database has failed. This could be because this supplier does not exist in the database or the suppliers legal name & address is not accurate. Please verify the accuracy of the data entered on the Supplier Information screen." is displayed under "Moodys"
    When Click "Next" button
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for new supplier I should be able to see a pop "Without identifiers, risk management evaluation for this supplier request will be limited. Please verify that the data entered in the supplier information screen is accurate to locate exact supplier details in external databases."when no matches found in any of section DUNS or Moodys
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
    And Wait for 3 seconds
    Then Verify "Without identifiers, risk management evaluation for this supplier request will be limited. Please verify that the data entered in the supplier information screen is accurate to locate exact supplier details in external databases." is displayed under "Pop up"
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system


    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for new supplier I should be able to re select the Identifiers when changing the legal business name or address information before submitting the request
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
    And Wait for 3 seconds
    Then Verify "Without identifiers, risk management evaluation for this supplier request will be limited. Please verify that the data entered in the supplier information screen is accurate to locate exact supplier details in external databases." is displayed under "Pop up"
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Back" button
    And Wait for 3 seconds
    When Click "Back" button
    And Wait for 3 seconds
    When Click "Back" button
    And Wait for 3 seconds
    When Click "Back" button
    And Wait for 3 seconds
    When Click "Back" button
    And Wait for 3 seconds
    When Click "Back" button
    And Wait for 3 seconds
    And Enter "JPMorgan Chase" Supplier Company Name on Invite Supplier modal
    Then Select country as "United States of America" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on "JPMorgan Chase" Businessname from Supplier Request
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #When Click "Cancel" button
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
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    Then Show TPRM "Identifiers" tooltip "TYS has conducted an external database lookup to find these supplier identifiers, enabling the retrieval of relevant risk information for review." in "Supplier Information"
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for new supplier I should see Back and save draft buttons on Identifiers tab
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter "JPMorgan Chase" Supplier Company Name on Invite Supplier modal
    Then Select country as "United States of America" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on "JPMorgan Chase" Businessname from Supplier Request
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #When Click "Cancel" button
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
    #Verify Back and Save draft buttons on identifiers
    And Verify "Back" button is displayed under "Supplier Information"
    And Verify "Save Draft & Proceed" button is displayed under "Supplier Information"
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    
    Then Show TPRM "Identifiers" tooltip "TYS has conducted an external database lookup to find these supplier identifiers, enabling the retrieval of relevant risk information for review." in "Supplier Information"
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for Connected supplier I should see the "No correct matches found for the Supplier" for both DUNS and Moody's
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Argentina from the dropdown
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 3 seconds
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 13 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 5 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region* (Required)" dropdown
    And Enter "2000112" in "Postal Code* (Required)" field after "Test" supplier registration
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
    When Click "Next" button
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
    Then Verify the label "Supplier Information Details" displayed on "Identifiers" page
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    Then Verify "Moodys Analytics" is selected as "No correct matches found for the Supplier"
    Then Verify "Dun & Bradstreet (D-U-N-S)" is selected as "No correct matches found for the Supplier"
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for Connected supplier I should see the Legal business name ,address on the 'Supplier Information' screen

    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Argentina from the dropdown
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 3 seconds
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 13 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 5 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region* (Required)" dropdown
    And Enter "2000112" in "Postal Code* (Required)" field after "Test" supplier registration
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
    When Click "Next" button
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    Then Verify "Company Name" is displaying in supplier info screen
    Then Verify "Legal Business Name" displaying in supplier info screen
    Then Verify company address displaying in supplier info screen
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for Connected supplier I should see the Identifiers Tooltip on the 'Supplier Information' screen

    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Argentina from the dropdown
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 3 seconds
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 13 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 5 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region* (Required)" dropdown
    And Enter "2000112" in "Postal Code* (Required)" field after "Test" supplier registration
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
    When Click "Next" button
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    Then Show TPRM "Identifiers" tooltip "TYS has conducted an external database lookup to find these supplier identifiers, enabling the retrieval of relevant risk information for review." in "Supplier Information"
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system


    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for Connected supplier I should see the "No correct matches found for the Supplier" on the 'Supplier Information' screen for DUNS and Moodys

    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Argentina from the dropdown
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 3 seconds
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 13 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 5 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region* (Required)" dropdown
    And Enter "2000112" in "Postal Code* (Required)" field after "Test" supplier registration
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
    When Click "Next" button
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    Then Show TPRM "Identifiers" tooltip "TYS has conducted an external database lookup to find these supplier identifiers, enabling the retrieval of relevant risk information for review." in "Supplier Information"
    And Wait for 3 seconds
    Then Verify "Moodys Analytics" is selected as "No correct matches found for the Supplier"
    Then Verify "Dun & Bradstreet (D-U-N-S)" is selected as "No correct matches found for the Supplier"
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for Connected supplier I should see a pop up like "Without identifiers, risk management evaluation for this supplier request will be limited. Please verify that the data entered in the supplier information screen is accurate to locate exact supplier details in external databases." on Identifiers

    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Argentina from the dropdown
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 3 seconds
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 13 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 5 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region* (Required)" dropdown
    And Enter "2000112" in "Postal Code* (Required)" field after "Test" supplier registration
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
    When Click "Next" button
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
    And Wait for 3 seconds
    Then Verify "Without identifiers, risk management evaluation for this supplier request will be limited. Please verify that the data entered in the supplier information screen is accurate to locate exact supplier details in external databases." is displayed under "Pop up"
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system


    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for Connected supplier I should see Save Draft button is displaying on Identifiers screen

    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Argentina from the dropdown
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 3 seconds
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 13 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 5 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region* (Required)" dropdown
    And Enter "2000112" in "Postal Code* (Required)" field after "Test" supplier registration
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
    When Click "Next" button
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
    #Verify Back and Save draft buttons on identifiers
    And Verify "Back" button is displayed under "Supplier Information"
    And Verify "Save Draft & Proceed" button is displayed under "Supplier Information"
    When Click "Next" button
     #identifiers
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system



    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for Connected supplier I should see the "No correct matches found for the Supplier" for both DUNS and Moody's for Accpeted status
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Argentina from the dropdown
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 10 seconds
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
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    And Wait for 3 seconds
    And Logout from the system
    And Wait for 5 seconds
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Wait for 3 seconds
    When Click on the same supplier name and press Enter
    Then Wait for 3 seconds
    And verify the status as "Accepted"
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 13 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 5 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region* (Required)" dropdown
    And Enter "2000112" in "Postal Code* (Required)" field after "Test" supplier registration
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
    When Click "Next" button
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
    Then Verify the label "Supplier Information Details" displayed on "Identifiers" page
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    Then Verify "Moodys Analytics" is selected as "No correct matches found for the Supplier"
    Then Verify "Dun & Bradstreet (D-U-N-S)" is selected as "No correct matches found for the Supplier"
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for Connected supplier I should see the Legal business name ,address on the 'Supplier Information' screen for Accpeted status

    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Argentina from the dropdown
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 10 seconds
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
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    And Wait for 3 seconds
    And Logout from the system
    And Wait for 5 seconds
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Wait for 3 seconds
    When Click on the same supplier name and press Enter
    Then Wait for 3 seconds
    And verify the status as "Accepted"
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 13 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 5 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region* (Required)" dropdown
    And Enter "2000112" in "Postal Code* (Required)" field after "Test" supplier registration
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
    When Click "Next" button
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    Then Verify "Company Name" is displaying in supplier info screen
    Then Verify "Legal Business Name" displaying in supplier info screen
    Then Verify company address displaying in supplier info screen
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for Connected supplier I should see the Identifiers Tooltip on the 'Supplier Information' screen for Accpeted Status

    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Argentina from the dropdown
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 10 seconds
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
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    And Wait for 3 seconds
    And Logout from the system
    And Wait for 5 seconds
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Wait for 3 seconds
    When Click on the same supplier name and press Enter
    Then Wait for 3 seconds
    And verify the status as "Accepted"
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 13 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 5 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region* (Required)" dropdown
    And Enter "2000112" in "Postal Code* (Required)" field after "Test" supplier registration
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
    When Click "Next" button
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    Then Show TPRM "Identifiers" tooltip "TYS has conducted an external database lookup to find these supplier identifiers, enabling the retrieval of relevant risk information for review." in "Supplier Information"
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system


    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for Connected supplier I should see the "No correct matches found for the Supplier" on the 'Supplier Information' screen for DUNS and Moodys for Accepted status

    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Argentina from the dropdown
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 10 seconds
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
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    And Wait for 3 seconds
    And Logout from the system
    And Wait for 5 seconds
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Wait for 3 seconds
    When Click on the same supplier name and press Enter
    Then Wait for 3 seconds
    And verify the status as "Accepted"
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 13 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 5 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region* (Required)" dropdown
    And Enter "2000112" in "Postal Code* (Required)" field after "Test" supplier registration
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
    When Click "Next" button
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    Then Show TPRM "Identifiers" tooltip "TYS has conducted an external database lookup to find these supplier identifiers, enabling the retrieval of relevant risk information for review." in "Supplier Information"
    And Wait for 3 seconds
    Then Verify "Moodys Analytics" is selected as "No correct matches found for the Supplier"
    Then Verify "Dun & Bradstreet (D-U-N-S)" is selected as "No correct matches found for the Supplier"
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for Connected supplier I should see a pop up like "Without identifiers, risk management evaluation for this supplier request will be limited. Please verify that the data entered in the supplier information screen is accurate to locate exact supplier details in external databases." on Identifiers For Accepted status

    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Argentina from the dropdown
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 10 seconds
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
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    And Wait for 3 seconds
    And Logout from the system
    And Wait for 5 seconds
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Wait for 3 seconds
    When Click on the same supplier name and press Enter
    Then Wait for 3 seconds
    And verify the status as "Accepted"
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 13 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 5 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region* (Required)" dropdown
    And Enter "2000112" in "Postal Code* (Required)" field after "Test" supplier registration
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
    When Click "Next" button
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
    And Wait for 3 seconds
    Then Verify "Without identifiers, risk management evaluation for this supplier request will be limited. Please verify that the data entered in the supplier information screen is accurate to locate exact supplier details in external databases." is displayed under "Pop up"
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system


    #SLYN-29332
  @Regression @TPRM @SLYN-29332
  Scenario: Verify As a buyer, for Connected supplier I should see Save Draft button is displaying on Identifiers screen For Accepted status

    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Argentina from the dropdown
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Custom Fields
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Click radio button "No" under "Is supplier located in a focus country (excluding Italy and Greece)?" for Custom fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 10 seconds
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
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    And Wait for 3 seconds
    And Logout from the system
    And Wait for 5 seconds
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Wait for 3 seconds
    When Click on the same supplier name and press Enter
    Then Wait for 3 seconds
    And verify the status as "Accepted"
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 13 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 5 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region* (Required)" dropdown
    And Enter "2000112" in "Postal Code* (Required)" field after "Test" supplier registration
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
    When Click "Next" button
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
    #Verify Back and Save draft buttons on identifiers
    And Verify "Back" button is displayed under "Supplier Information"
    And Verify "Save Draft & Proceed" button is displayed under "Supplier Information"
    When Click "Next" button
     #identifiers
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after supplier request and press Enter
    And Wait for 3 seconds
    When Click on "Cancel Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system