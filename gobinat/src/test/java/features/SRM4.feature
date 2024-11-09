Feature: SRM4 feature

  #SRM4 feature
  Background: Start the application
    Given Open the login page
    Then Close the hotjar window
    Then Enter data in Email Address field
    ###And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 5 seconds
	#SLYN-29117
  @Regression @SupplierRequest @SLYN-29117
  Scenario: Verify as a Buyer, I should able to see labels and buttons for Supplier Requests

    And Click "Supplier Requests" tab
    Then Verify visibility of page title as "Supplier Requests"
    #button visibility
    Then Verify "Submitted Requests" button is displayed under "Supplier Requests"
    And Verify "Drafts" button is displayed under "Supplier Requests"
    And Verify "Initiate Supplier Request" button is displayed under "Supplier Requests"
    #button enable
    And Verify "Submitted Requests" button is enable under "Supplier Requests"
    And Verify "Drafts" button is enable under "Supplier Requests"
    And Verify "Initiate Supplier Request" button is enable under "Supplier Requests"
    And Wait for 3 seconds
    And Logout from the system
		#SLYN-29117
  @Regression @SupplierRequest @SLYN-29117
  Scenario: Verify as a Buyer, I should able to see labels and tooltips for Initiate Supplier Request
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
    #Show label visibility
    Then Show "Supplier Company Name" label in at "Supplier Information"
    And Show "Legal Business Name" label in at "Supplier Information"
    And Show "Tax Country/Region" label in at "Domestic Headquarters Address"
    And Show "Address Line 1" label in at "Domestic Headquarters Address"
    And Show "Address Line 2" label in at "Domestic Headquarters Address"
    And Show "City" label in at "Domestic Headquarters Address"
    And Show "State" label in at "Domestic Headquarters Address"
    And Show "Zip Code" label in at "Domestic Headquarters Address"
    And Show "PO Box" label in at "Domestic Headquarters Address"
    And Show "PO Box Zip Code" label in at "Domestic Headquarters Address"
    #input filed display
    And Show "Supplier Company Name" input text field under for "Supplier Information"
    And Show "Legal Business Name" input text field under for "Supplier Information"
    And Show "Address Line 1" input text field under for "Supplier Information"
    And Show "Address Line 2" input text field under for "Supplier Information"
    And Show "City" input text field under for "Supplier Information"
    And Show "PO Box" input text field under for "Supplier Information"
    #Input field enable
    And Verify "Supplier Company Name" input text field enable under for "Supplier Information"
    And Verify "Legal Business Name" input text field enable under for "Supplier Information"
    And Verify "Address Line 1" input text field enable under for "Supplier Information"
    And Verify "Address Line 2" input text field enable under for "Supplier Information"
    And Verify "City " input text field enable under for "Supplier Information"
    And Verify "PO Box " input text field enable under for "Supplier Information"
    #button display
    And Verify "Back" button is displayed under "Supplier Information"
    And Verify "Save Draft & Proceed" button is displayed under "Supplier Information"
    And Verify "Cancel" button is displayed under "Supplier Information"
    #button enable
    And Verify "Back" button is enable under "Supplier Information"
    And Verify "Save Draft & Proceed" button is enable under "Supplier Information"
    And Verify "Cancel" button is enable under "Supplier Information"
    #Tooltips
    Then Show tooltip "Name under which the Supplier company carries on it’s business. Also knows as DBA, Doing Business As. This field is mandatory." in "Supplier Company Name" under "Supplier Information"
    Then Show tooltip "Legal Business Name must be the full legal name of supplier company." in "Legal Business Name" under "Supplier Information"
    Then Show tooltip "Select the appropriate country from the dropdown. This is a mandatory field." in "Tax Country/Region" under "Supplier Information"
    Then Show tooltip "Street name, House/Building or Block number. Max length: 100 characters. This is a mandatory field." in "Address Line 1" under "Supplier Information"
    Then Show tooltip "Continue Street name, House/Building, Neighbourhood or Block number. Max Length: 100 characters. This is an optional field." in "Address Line 2" under "Supplier Information"
    Then Show tooltip "Name of the City at which it is located. This is a mandatory field." in "City" under "Supplier Information"
    Then Show tooltip "Name of the State at which it is located. This is a mandatory field." in "State" under "Supplier Information"
    Then Show tooltip "The Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is a mandatory field. Max Length: 10" in "Zip Code" under "Supplier Information"
    Then Show tooltip "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in "PO Box" under "Supplier Information"
    Then Show tooltip "The PO Box Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is an Optional field. Max Length: 10" in "PO Box Zip Code" under "Supplier Information"
    And Wait for 3 seconds
    And Logout from the system
	#SLYN-29117
  @Regression @SupplierRequest @SLYN-29117
  Scenario: Verify as a Buyer, I should able to see labels and tooltips for Initiate Supplier Contacts

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
    #lables display
    Then Show "First Name" label in "Supplier Contacts"
    And Show "Last Name" label in "Supplier Contacts"
    And Show "Job Title" label in "Supplier Contacts"
    And Show "Email ID" label in "Supplier Contacts"
    And Show "Contact Number" label in "Supplier Contacts"
    #Input fields display
    And Show "First Name" input text field displayed in "Supplier Contacts"
    And Show "Last Name" input text field displayed in "Supplier Contacts"
    And Show "Job Title" input text field displayed in "Supplier Contacts"
    And Show "Email ID" input text field displayed in "Supplier Contacts"
    #input field enable
    And Verify "First Name" input text field is enabled for "Supplier Contacts"
    And Verify "First Name" input text field is enabled for "Supplier Contacts"
    And Verify "First Name" input text field is enabled for "Supplier Contacts"
    And Verify "First Name" input text field is enabled for "Supplier Contacts"
    #enter data
    When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
    And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
    And Enter Contact Email Address on Supplier contacts from maildrop
    And Wait for 3 seconds
    And Logout from the system
	#SLYN-29117
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29117
  Scenario: Verify as a Buyer, I should able to see the Edit icon to the user that has created the request
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    Then Verify Edit button is visible for same user login
    And Wait for 3 seconds
    And Logout from the system
	#SLYN-29117
  @Regression @SupplierRequest @SLYN-29117
  Scenario: Verify as a Buyer, I should not see the Edit icon to the user that has not created the request
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
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Logout from the system
    #login with other user
    When Enter other user in Email Address field
    ###And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Submitted Requests" button
    And Wait for 3 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    Then Verify Edit button is not visible for other user login
    And Wait for 3 seconds
    And Logout from the system
	#SLYN-29117
  @Regression @SupplierRequest @SLYN-29117
  Scenario: Verify as a Buyer, I should see the Edit icon to the user that is in Pending status
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click "Submitted Requests" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    Then Verify Edit button is visible for same user login
    And Wait for 3 seconds
    And Logout from the system
	#SLYN-29117
  @Regression @SupplierRequest @SLYN-29117 @SRMSanityCheck
  Scenario: Verify as a Buyer, I should see the Edit icon to the user that in In-Progress status
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
    And Wait for 5 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer questionnaire
    #When Click on the "DPL Search" under Assigned Assessments
    #And Wait for 3 seconds
    #Then Click on the NO for First question
    #Then Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #Then Enter "01/02/2021" in Expiry Date field
    #Then add label as "VATDOCUMENT"
    #Then Click on the Confirm button.
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #And Wait for 5 seconds

    #Answer Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    Then Verify Edit button is visible for same user login
    And Wait for 3 seconds
    And Logout from the system
	#SLYN-29117
  @Regression @SupplierRequest @SLYN-29117
  Scenario: Verify as a Buyer, I should not see Save Draft & Proceed buttons when click on edit icon
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    When Click on Edit button for same user login
    And Wait for 3 seconds
    Then Verify "Save Draft" and "Proceed" buttons not visible
    And Wait for 3 seconds
    And Logout from the system
	#SLYN-29117
  @Regression @SupplierRequest @SLYN-29117
  Scenario: Verify as a Buyer, I should not able to edit the fileds Business Name, Legal Business Name and Tax Country/Region
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    When Click on Edit button for same user login
    And Wait for 5 seconds
    #Verify input fields not enabled
    Then Verify "Supplier Company Name" input text field not enabled under for "Initiate Supplier Request"
    Then Verify "Legal Business Name" input text field not enabled under for "Initiate Supplier Request"
    Then Verify "Tax Country/Region" input field not enabled under for "Initiate Supplier Request"
    And Wait for 3 seconds
    And Logout from the system

  @Regression @SupplierRequest @SLYN-29117
  Scenario: Verify as a Buyer, I should see all the entered information when click on Edit button
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
    Then Save "TestAddress1" value for "Address Line 1" field on page
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Save "Denmark" value for "City" field on page
    Then Select "Alabama" in "State" dropdown
    Then Save "Alabama" value for "State" field on page
    And Enter "2000112" in "Zip Code" field after "Test" supplier registration
    Then Save "2000112" value for "Zip Code" field on page
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Cancel" button
    And Wait for 3 seconds
    #enter data
    When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
    Then Save "firstname" value for "First Name" field on page
    And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
    Then Save "lastname" value for "Last Name" field on page
    
    Then Save "CEO" value for "Job Title" field on page
    And Enter Contact Email Address on Supplier contacts from maildrop
    When Click "Next" button
    And Wait for 3 seconds
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Save "Global Logistics (GLP)" value for "Supplier Category" field on page
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Save "Facility Site Services (FSS)" value for "Supplier Category (Commodity Family)" field on page
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Save "EMEA" value for "IBM Region" field on page
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Save "BENELUX" value for "IBM Market" field on page
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Save "Albania (AL)" value for "IBM Country & ISO Code" field on page
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    And Wait for 5 seconds
    When Click on Edit button for same user login
    And Wait for 3 seconds
    #Verify the values are populated
    Then Verify the value entered in "Address Line 1" field is populated as "TestAddress1"
    Then Verify the value entered in "City" field is populated as "Denmark"
    Then Verify the value entered in "Zip Code" field is populated as "20001-12"
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Cancel" button
    Then Verify the text value entered in "First Name" field is populated as "firstname"
    Then Verify the text value entered in "Last Name" field is populated as "lastname"
    And Logout from the system

  @Regression @SupplierRequest  @SLYN-29117
  Scenario: Verify as a Buyer, I should be able to edit all the other fields
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
    Then Save "TestAddress1" value for "Address Line 1" field on page
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Save "Denmark" value for "City" field on page
    Then Select "Alabama" in "State" dropdown
    Then Save "Alabama" value for "State" field on page
    And Enter "2000112" in "Zip Code" field after "Test" supplier registration
    Then Save "2000112" value for "Zip Code" field on page
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Cancel" button
    And Wait for 3 seconds
    #enter data
    When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
    Then Save "firstname" value for "First Name" field on page
    And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
    Then Save "lastname" value for "Last Name" field on page
    
    Then Save "CEO" value for "Job Title" field on page
    And Enter Contact Email Address on Supplier contacts from maildrop
    When Click "Next" button
    And Wait for 3 seconds
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    Then Save "Global Logistics (GLP)" value for "Supplier Category" field on page
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Save "Facility Site Services (FSS)" value for "Supplier Category (Commodity Family)" field on page
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Save "EMEA" value for "IBM Region" field on page
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Save "BENELUX" value for "IBM Market" field on page
    Then Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    Then Save "Albania (AL)" value for "IBM Country & ISO Code" field on page
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    And Wait for 5 seconds
    When Click on Edit button for same user login
    And Wait for 3 seconds
    #Verify the values are populated
    Then Verify the value entered in "Address Line 1" field is populated as "TestAddress1"
    Then Verify the value entered in "City" field is populated as "Denmark"
    Then Verify the value entered in "Zip Code" field is populated as "20001-12"
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Cancel" button
    Then Verify the text value entered in "First Name" field is populated as "firstname"
    Then Verify the text value entered in "Last Name" field is populated as "lastname"
    And Logout from the system

  #SLYN-29120
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29120 @SRMSanityCheck
  Scenario: Verify as a Buyer, I should able to see Complete Segementation button should only be visible to user roles with Update:Mine or Update:All permissions in Supplier Request security module
    #Invite supplier
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
    Then Save "TestAddress1" value for "Address Line 1" field on page
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Save "Denmark" value for "City" field on page
    Then Select "Alabama" in "State" dropdown
    Then Save "Alabama" value for "State" field on page
    And Enter "2000112" in "Zip Code" field after "Test" supplier registration
    Then Save "2000112" value for "Zip Code" field on page
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Cancel" button
    And Wait for 3 seconds
    #enter data
    When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
    Then Save "firstname" value for "First Name" field on page
    And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
    Then Save "lastname" value for "Last Name" field on page
    
    Then Save "CEO" value for "Job Title" field on page
    And Enter Contact Email Address on Supplier contacts from maildrop
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Next" button
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then Verify "Complete Segmentation" label is displying under "Supplier Request" for "Pending Segmentation"
    And Wait for 3 seconds
    And Logout from the system

  #SLYN-29120
  @Regression @SupplierRequest @SLYN-29120
  Scenario: Verify as a Buyer, I should able to see User roles with Update:Mine permission should only be able to see this button on requests created by them
    And Wait for 3 seconds
    And Logout from the system
    Then Enter other user in Email Address field
    ##And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    #Configuration
    And Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    And Click on Edit Permissions tab for manage users
    And Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    And Click on "read" permission for "SupplierRequest" security module
    And Wait for 2 seconds
    And Click on "read:all" permission for "SupplierRequest" security module
    And Wait for 2 seconds
    And Click on "complete:mine" permission for "SupplierRequest" security module
    And Wait for 2 seconds
    And Click "Save" button
    #Invite supplier
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    And Click "Initiate Supplier Request" button
    And Enter Random Supplier Company Name on Invite Supplier modal
    Then Select country as "United States of America" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click "Request a New Supplier" button
    And Wait for 3 seconds
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    Then Save "TestAddress1" value for "Address Line 1" field on page
    And Enter "Denmark" in "City" field after "Test" supplier registration
    And Save "Denmark" value for "City" field on page
    And Select "Alabama" in "State " dropdown
    And Save "Alabama" value for "State" field on page
    And Enter "2000112" in "Zip Code" field after "Test" supplier registration
    Then Save "2000112" value for "Zip Code" field on page
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Cancel" button
    And Wait for 3 seconds
    #enter data
    When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
    Then Save "firstname" value for "First Name" field on page
    And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
    Then Save "lastname" value for "Last Name" field on page
    
    Then Save "CEO" value for "Job Title" field on page
    And Enter Contact Email Address on Supplier contacts from maildrop
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Next" button
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 10 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then Verify "Complete Segmentation" label is displying under "Supplier Request" for "Pending Segmentation"
    And Wait for 3 seconds
    And Logout from the system
    And Wait for 3 seconds
    When Enter export user in Email Address field
    ##And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    Then Verify "Pending Segmentation" flag is not displayed
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then Verify "Complete Segmentation" button is not visible
    And Wait for 3 seconds
    And Logout from the system

  #SLYN-29120 #Raised a bug for Edit button on UI . Need to run after bug fix
  @Regression @SupplierRequest @mahendraa @SLYN-29120
  Scenario: Verify as a Buyer, I should able to see the fileds of  Supplier Segementation are editable upon click on Supplier Segementation
    #Invite supplier
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    And Click "Initiate Supplier Request" button
    And Enter Random Supplier Company Name on Invite Supplier modal
    Then Select country as "United States of America" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click "Request a New Supplier" button
    And Wait for 3 seconds
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    And Select "Alabama" in "State " dropdown
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
    When Click "Next" button
    #Request Assessment
    When Click radio button "Yes" under "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?" for Request Assessment
    And Wait for 3 seconds
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 10 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then Verify "Complete Segmentation" label is displying under "Supplier Request" for "Pending Segmentation"
    And Wait for 3 seconds
    When Click on Edit button for same user login
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Cancel" button
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
    When Click "Next" button
    And Wait for 3 seconds
    #identifiers
    When Click "Next" button
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 10 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then Verify "Complete Segmentation" button is not visible
    And Logout from the system

  #SLYN-29120
  @Regression @SupplierRequest @SLYN-29120
  Scenario: Verify as a Buyer, I should able to see the mandatory fields before Save the Supplier Segementation
    And Wait for 3 seconds
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
    And Wait for 3 seconds
    Then Show error message "Required" at "Supplier Category (Commodity Family)" field
    And Show error message "Required" at "IBM Region" field
    And Show error message "Required" at "IBM Market" field
    And Show error message "Required" at "IBM Country & ISO Code" field
    And Show error message "Required" at "Is this a PIF Supplier?" field
    And Logout from the system

  #SLYN-29120
  @Regression @SupplierRequest @SLYN-29120
  Scenario: Verify as a Buyer, I should able to Click on Cancel button to exit the edit mode by discarding all the information entered by the user
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
    When Click "Cancel" button
    And Wait for 3 seconds
    Then Verify visibility of page title as "Supplier Requests"
    And Logout from the system

  #SLYN-29120
  @Regression @SupplierRequest @SLYN-29120 @SRMSanityCheck
  Scenario: Verify as a Buyer, I should able to see Once the user clicks on Save, the Pending Segmentation flag should be removed and Complete Segmentation button should be hidden
    #Invite supplier
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    And Click "Initiate Supplier Request" button
    And Enter Random Supplier Company Name on Invite Supplier modal
    Then Select country as "United States of America" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click "Request a New Supplier" button
    And Wait for 3 seconds
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    Then Save "TestAddress1" value for "Address Line 1" field on page
    And Enter "Denmark" in "City" field after "Test" supplier registration
    And Save "Denmark" value for "City" field on page
    And Select "Alabama" in "State " dropdown
    And Save "Alabama" value for "State" field on page
    And Enter "2000112" in "Zip Code" field after "Test" supplier registration
    Then Save "2000112" value for "Zip Code" field on page
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Cancel" button
    And Wait for 3 seconds
    #enter data
    When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
    Then Save "firstname" value for "First Name" field on page
    And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
    Then Save "lastname" value for "Last Name" field on page
    
    Then Save "CEO" value for "Job Title" field on page
    And Enter Contact Email Address on Supplier contacts from maildrop
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Next" button
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 10 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then Verify "Complete Segmentation" label is displying under "Supplier Request" for "Pending Segmentation"
    And Wait for 3 seconds
    When Click on Edit button for same user login
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    When Click "Cancel" button
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
    When Click "Next" button
    And Wait for 3 seconds
    #identifiers
    When Click "Next" button
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 10 seconds
    Then Verify "Pending Segmentation" flag is not displayed
    And Click on the Same supplier name after request and press Enter
    Then Verify "Complete Segmentation" button is not visible
    And Wait for 3 seconds
    And Logout from the system
    
    #SLYN-29131
  @Regression @SupplierRequest @SLYN-29131
  Scenario: Verify as a Buyer, I should able to see Edit,Cancel Request and Reject Request buttons when the supplier request status transition as In-Progress status
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
    And Wait for 3 seconds
    #identifiers
    When Click "Next" button
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    And Verify Edit button is visible for same user login
    And Verify "Cancel Request" label button is displying under "Supplier Request"
    And Verify "Reject Request" label button is displying under "Supplier Request"
    And Wait for 3 seconds
    And Logout from the system
		
		#SLYN-29131
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29131 @SRMSanityCheck
  Scenario: Verify as a Buyer, I should able to see event statuses in Request History tab when supplier request status transition happens
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
    And Wait for 3 seconds
      #identifiers
    When Click "Next" button
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    When Click on label button "Request History" under for "Supplier Request"
    And Wait for 3 seconds
    Then verify the table view updated with status "In Progress"
    Then verify the table view updated with status "system"
    And Wait for 3 seconds
    And Logout from the system
    
    #SLYN-29131
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29131 @SRMSanityCheck
  Scenario: Verify as a Buyer, I should able to see request is for connected supplier same status should reflect in the Supplier Request panel on the Action Center in supplier wide profile
    #Invite supplier from connected supplier
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
    #Without questionnaire
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the supplier status as "Pending Invites"
    When Wait 3 seconds
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "United States of America" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Alabama" in "State" dropdown
    And Enter "2000112" in "Zip Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    
    When Click "Next" button
    And Wait for 3 seconds
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    When Click on label button "Request History" under for "Supplier Request"
    And Wait for 3 seconds
    Then verify the table view updated with status "In Progress"
    Then verify the table view updated with status "system"
    And Wait for 3 seconds
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    When Click on the Action Center
    And Wait for 3 seconds
    Then Verify the "Supplier Requests" status updated to "In Progress"
    And Logout from the system
    
    
    #SLYN-29131
  @Regression @SupplierRequest @SLYN-29131
  Scenario: Verify as a Buyer, I should able to see request is for preloaded supplier same status should reflect in the Supplier Request panel on the Action Center in supplier wide profile
    #Invite supplier from connected supplier
    And Click on My Suppliers Tab
    When Wait 3 seconds
    #Filter with preload and USA
    When Click on "Filter by" button on "Connected Supplier page"
    And Click on "Country/Region" filter
    And Click on "Country" dropdown
    And Click on "United States of America" option in "Countries" dropdown
    And Click on "Status" filter
    And Click on "Status" dropdown
    And Select Pending Invites in Status dropdown "Preloaded"
    And Click on "Search" button in connected supplier filter by
    When Wait 5 seconds
    And Click on first supplier from connected supplier
    Then verify the supplier status as "Preloaded"
    When Wait 3 seconds
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "United States of America" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    #And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    #And Enter "Denmark" in "City" field after "Test" supplier registration
    #Then Select "Alabama" in "State" dropdown
    #And Enter "2000112" in "Zip Code" field after "Test" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
    And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
    
    And Enter Contact Email Address on Supplier contacts from maildrop
    When Click "Next" button
    And Wait for 3 seconds
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the preloaded supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    When Click on label button "Request History" under for "Supplier Request"
    And Wait for 3 seconds
    Then verify the table view updated with status "In Progress"
    Then verify the table view updated with status "system"
    And Wait for 3 seconds
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Click "Go to details" button
    And Wait for 3 seconds
    When Click on the Action Center
    And Wait for 3 seconds
    Then Verify the "Supplier Requests" status updated to "In Progress"
    And Logout from the system
    
    #SLYN-29141
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29141
  Scenario: Verify as a Buyer, I should able to see Create Approval Request button displayed on Supplier Requests in Pending status with Create permission
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    And Wait for 3 seconds
    Then Verify "Create Approval Request" button is displayed under "Approval Requests"
    And Logout from the system
    
     #SLYN-29141
  @Regression @SupplierRequest @SLYN-29141
  Scenario: Verify as a Buyer, I should able to see Create Approval Request button displayed on Supplier Requests in In-Progress status with Create permission
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
    And Wait for 3 seconds
    #identifiers
    When Click "Next" button
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    Then Verify "Create Approval Request" button is displayed under "Approval Requests"
    And Wait for 3 seconds
    And Logout from the system
    
     #SLYN-29141
  @Regression @SupplierRequest @SLYN-29141
  Scenario: Verify as a Buyer, I should able to see Approval Request Description should only allow 1000 character limit text field and should show the required error messages and tootltips
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    And Wait for 3 seconds
    Then Verify "Create Approval Request" button is displayed under "Approval Requests"
    And Click "Create Approval Request" button
    And Wait for 3 seconds
    Then Show Message as "Please enter a description of the approval request, to be displayed on the Approval Details page, and attach a file if needed. Choose the role you would like to assign to this AR from the drop-down of available roles."
    #Tooltips
    And Show tooltip "You can provide notes in the text area below. These will not be shown to the supplier, and are for internal use only." in "Approval Request Description" under "Create Approval Request"
    And Show tooltip "You can attach one document to this request by clicking the button below and selecting a document." in "Documents" under "Create Approval Request"
    And Show tooltip "Select the role for which you want this Approval Request to be assigned to" in "Assigned Role" under "Create Approval Request"
    When Click "Create" button 2
    #Required error messages
    Then Show error message "Required" at "Approval Request Description" field for create approval
    And Show error message "A role is required when creating a new approval request." at "Assigned Role" field for create approval
    And Enter 1005 alpha numeric data in "Approval Request Description" field
    And Show error message "1005 of 1000 characters." at "Approval Request Description" field for create approval
    When Click "Close" button
    And Wait for 3 seconds
    And Logout from the system
    
    #SLYN-29141
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29141
  Scenario: Verify as a Buyer, I should create approval request assigned to the respective roles and see them under Approval requests tab
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    And Wait for 3 seconds
    Then Verify "Create Approval Request" button is displayed under "Approval Requests"
    And Click "Create Approval Request" button
    And Wait for 3 seconds
    Then Enter 5 alpha numeric data in "Approval Request Description" field
    And Wait for 3 seconds
    Then Click on the "Administrator" as assigned role
    And Wait for 3 seconds
    When Click "Create" button 2
    And Verify toast message "A new approval request has been created successfully." successfully is shown
    And Wait for 3 seconds
    And Verify "Approval Source" value is displying as "Manual" at "1"
    And Verify "Role Assigned" value is displying as "Administrator" at "2"
    And Verify "Approval Status" value is displying as "Pending" at "5"
		And Logout from the system
		
		
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29157 @SRMSanityCheck
  Scenario: Verify as a Buyer, I should able to Once the request is in Approved status. Complete Request, Cancel Request & Reject Request buttons should be displayed and Edit Attributes icon should no longer be displayed.
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
    And Wait for 3 seconds
    #identifiers
    When Click "Next" button
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    And Verify "Cancel Request" label button is displying under "Supplier Request"
    And Verify "Complete Request" label button is displying under "Supplier Request" at "2"
    When Click "Actions" button
    And Verify "Reject Request" button is displayed under "Actions"
    And Verify Edit button is not visible for other user login
    And Logout from the system
		
		#SLYN-29157 #We need to configure for Argentina country
  @Regression @SupplierRequest @SLYN-29157
  Scenario: Verify as a Buyer, I should able to see Request History should capture the event details Once the request is in Approved status
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
    And Wait for 3 seconds
    #identifiers
    When Click "Next" button
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

    When Click on "Supplier Request" in Approval requests "2"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds
    #Verify Request History
    When Click on label button "Request History" under for "Supplier Request"
    And Wait for 3 seconds
    Then verify the table view updated with status "Approved"
    Then verify the table view updated with status "system"
    And Wait for 3 seconds
    And Logout from the system
    
    #SLYN-29157
  @Regression @SupplierRequest @SLYN-29157
  Scenario: Verify as a Buyer, I should able to see Request History should capture the event details Once the request is in Approved status with other states no cofiguration
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter Random Supplier Company Name on Invite Supplier modal
    Then Select country as "Australia" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click "Request a New Supplier" button
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Victoria" in "State or Territory " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Approved"
		#Verify Request History
    When Click on label button "Request History" under for "Supplier Request"
    And Wait for 3 seconds
    Then verify the table view updated with status "Approved"
    Then verify the table view updated with status "system"
    And Wait for 3 seconds
    And Logout from the system
    
    #SLYN-29157 #We need to configure for Argentina country
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29157
  Scenario: Verify as a Buyer, I should able to see Approved request is for connected supplier same status should reflect in the Supplier Request panel on the Action Center in supplier wide profile
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
    Then Click on the Skip
    Then Wait for 3 seconds
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
    Then verify the supplier status as "Pending Invites"
    When Wait 3 seconds
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    When Click "Next" button
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
		#Verify Request History
    When Click on label button "Request History" under for "Supplier Request"
    And Wait for 3 seconds
    Then verify the table view updated with status "Approved"
    Then verify the table view updated with status "system"
    And Wait for 3 seconds
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    When Click on the Action Center
    And Wait for 3 seconds
    Then Verify the "Supplier Requests" status updated to "Approved"
    And Logout from the system
    
    #SLYN-29157 #We need to configure for Argentina country
  @Regression @SupplierRequest @SLYN-29157
  Scenario: Verify as a Buyer, I should able to see Approved request is for preloaded supplier same status should reflect in the Supplier Request panel on the Action Center in supplier wide profile
    #Invite supplier from connected supplier
    And Click on My Suppliers Tab
    When Wait 3 seconds
    #Filter with preload and USA
    When Click on "Filter by" button on "Connected Supplier page"
    And Click on "Country/Region" filter
    And Click on "Country" dropdown
    And Click on "Argentina" option in "Countries" dropdown
    And Click on "Status" filter
    And Click on "Status" dropdown
    And Select Pending Invites in Status dropdown "Preloaded"
    And Click on "Search" button in connected supplier filter by
    When Wait 5 seconds
    And Click on first supplier from connected supplier
    Then verify the supplier status as "Preloaded"
    When Wait 3 seconds
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    #And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    #And Enter "Denmark" in "City" field after "Test" supplier registration
    #Then Select "Alabama" in "State" dropdown
    #And Enter "2000112" in "Zip Code" field after "Test" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    When Enter "firstname" in "First Name" field after "Supplier Contacts" supplier registration
    And Enter "lastname" in "Last Name" field after "Supplier Contacts" supplier registration
    
    And Enter Contact Email Address on Supplier contacts from maildrop
    When Click "Next" button
    And Wait for 3 seconds
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the preloaded supplier name after request and press Enter
    And Wait for 3 seconds
    #Verify status
    Then verify the supplier status as "Pending"
	#Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    #Verify Request History
    When Click on label button "Request History" under for "Supplier Request"
    And Wait for 3 seconds
    Then verify the table view updated with status "Approved"
    Then verify the table view updated with status "system"
    And Wait for 3 seconds
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Click "Go to details" button
    And Wait for 3 seconds
    When Click on the Action Center
    And Wait for 3 seconds
    Then Verify the "Supplier Requests" status updated to "Approved"
    And Logout from the system
    
    #SLYN-29157 #We need to configure for Argentina country
  @Regression @SupplierRequest @SLYN-29157 @SRMSanityCheck
  Scenario: Verify as a Buyer, I should able to see Supplier Assigned Assessments should be in a read-only mode after the SR is moved to approved status
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
    And Wait for 3 seconds
    #identifiers
    When Click "Next" button
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    When Click on the "PIF Indicator" under Assigned Assessments
    Then Wait for 10 seconds
    And Verify "Save" button is not enabled under for "Supplier Request"
    And Verify "Save & Close" button is not enabled under for "Supplier Request"
    And Verify "Submit" button is not enabled under for "Supplier Request"
    And Wait for 3 seconds
    And Logout from the system
    
    #SLYN-29158
    @Regression @SupplierRequest @SLYN-29158
  	Scenario: Verify as a Buyer, I should able to see lables and tooltips for Reject Request section
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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
      When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    #Then verify the supplier status as "Approved"
      When Click on "Reject Request" link button
    Then Verify "Reject Request" label is displying under "Reject Request" for "Reject Request"
    And Show "Notes" label in at "Reject Request"
    Then Show tooltip "You can provide notes in the text area below. These will not be shown to the supplier, and are for internal use only." in "Notes" under "Reject Request"
    When Click "Cancel" button
    And Wait for 3 seconds
    And Logout from the system
    
    #SLYN-29158 #Raised a bug for mandatory field SLYN-30820
    @Regression @SupplierRequest @SLYN-29158
  	Scenario: Verify as a Buyer, I should able to see Rejection reason is mandatory and Attachment is optional
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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
      When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
      Then verify the supplier status as "Pending"
      #Answer questionnaire
    #PIF Indicator
      When Click on the "PIF Indicator" under Assigned Assessments
      And Click on the NO for First question in PIF Indicator
      And Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
      Then verify the supplier status as "In Progress"

      When Click on the "Supplier Request" under Assigned Assessments at "1"
      Then Wait for 3 seconds
      And Click on "Approve" div button
      And Wait for 3 seconds
      Then Enter the Notes under the accepth buyer Notes Box
      When Click "Approve" button
      Then Wait for 5 seconds
      And Navigate back to supplier
      Then Wait for 5 seconds
    Then verify the supplier status as "Approved"
      When Click "Actions" button
      And Verify "Reject Request" button is displayed under "Actions"
    Then Click "Reject Request" button
    When Click "Submit" button
      And Wait for 3 seconds
    Then Verify "Required" error is showing under "Reject Request"
    And Wait for 3 seconds
      When Click "Cancel" button
    And Logout from the system
    
    #SLYN-29158
    @Regression @SupplierRequest @SLYN-29158
  	Scenario: Verify as a Buyer, I should able to Reject Request when supplier is in Pending status also should show the toast message as Supplier Request Rejected successfully
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
      And Wait for 3 seconds
    #identifiers
      When Click "Next" button
      And Wait for 3 seconds
      And Wait for 3 seconds
      When Click "Continue" button
      And Wait for 3 seconds
      When Click "Submit Request" button
      And Wait for 5 seconds
      And Click on the Same supplier name after request and press Enter
      And Wait for 3 seconds
      Then verify the supplier status as "Pending"
      When Click on "Reject Request" link button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Rejected successfully" successfully is shown
    And Wait for 5 seconds
      Then verify the supplier status as "Rejected"
    And Wait for 3 seconds
    And Logout from the system
    
    #SLYN-29158
    @Regression @SupplierRequest @SLYN-29158
  	Scenario: Verify as a Buyer, I should able to Reject Request when supplier is in In Progress status also should show the toast message as Supplier Request Rejected successfully
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
      And Wait for 3 seconds
    #identifiers
      When Click "Next" button
      And Wait for 3 seconds
      And Wait for 3 seconds
      When Click "Continue" button
      And Wait for 3 seconds
      When Click "Submit Request" button
      And Wait for 5 seconds
      And Click on the Same supplier name after request and press Enter
      And Wait for 3 seconds
      Then verify the supplier status as "Pending"
    #Answer Assigned Assessments
      When Click on the "PIF Indicator" under Assigned Assessments
      And Wait for 3 seconds
      When Click "Assign / Reassign" button 2
      And Select re-assign role to "Administrator"
      And Click "Re-assign" button
      And Verify toast message "Successfully reassigned" successfully is shown
      And Wait for 5 seconds
      Then Click on the NO for First question
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
    #Second
      When Click on the "Supplier Management" under Assigned Assessments
      And Wait for 3 seconds
      Then Click on the NO for First question
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
    #Third
      When Click on the "Buyer Internal assessment" under Assigned Assessments
      And Wait for 3 seconds
      Then Click on the YES for First question
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      And Wait for 3 seconds
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
      Then verify the supplier status as "In Progress"
    When Click on "Reject Request" link button
    Then Verify "Reject Request" label is displying under "Reject Request" for "Reject Request"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Rejected successfully" successfully is shown
    And Wait for 5 seconds
		Then verify the supplier status as "Rejected"
    And Wait for 3 seconds
    And Logout from the system
    
    #SLYN-29158
    @Regression @SupplierRequest @SLYN-29158 @SRMSanityCheck
  	Scenario: Verify as a Buyer, I should able to Reject Request when supplier is in Approved status also should show the toast message as Supplier Request Rejected successfully
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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
      Then verify the supplier status as "Pending"
	#Answer Assigned Assessments
      When Click on the "PIF Indicator" under Assigned Assessments
      And Wait for 3 seconds
      When Click "Assign / Reassign" button 2
      And Select re-assign role to "Administrator"
      And Click "Re-assign" button
      And Verify toast message "Successfully reassigned" successfully is shown
      And Wait for 5 seconds
      Then Click on the NO for First question
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
    #Second
      When Click on the "Supplier Management" under Assigned Assessments
      And Wait for 3 seconds
      Then Click on the NO for First question
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
    #Third
      When Click on the "Buyer Internal assessment" under Assigned Assessments
      And Wait for 3 seconds
      Then Click on the YES for First question
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      And Wait for 3 seconds
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
      Then verify the supplier status as "In Progress"
    #Approvals
      When Click on "Buyer Internal assessment" in Approval Source "1"
      Then Wait for 5 seconds
      Then Click on the Approve button
      Then Enter the Notes
      Then Enter the Notes under the Notes Box
      Then Click on the Approve button on approval
      Then Wait for 3 seconds
      Then Navigate back to supplier

      When Click on "Supplier Request" in Approval requests "1"
      Then Wait for 5 seconds
      Then Click on the Approve button
      Then Enter the Notes
      Then Enter the Notes under the Notes Box
      Then Click on the Approve button on approval
      Then Wait for 3 seconds
      Then Navigate back to supplier
      Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
      Then verify the supplier status as "Approved"
    When Click on "Reject Request" link button
    Then Verify "Reject Request" label is displying under "Reject Request" for "Reject Request"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Rejected successfully" successfully is shown
    And Wait for 5 seconds
		Then verify the supplier status as "Rejected"
    And Wait for 3 seconds
    And Logout from the system
    
    #SLYN-29158
    @Regression @SupplierRequest @TYSFunctionality @SLYN-29158
  	Scenario: Verify as a Buyer, I should able to Reject Request when supplier is in In Progress status from connected supplier also should show the status as Rejected also all assessments should be cancelled. Pending approvals should be cancelled.
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
      Then Click on the Skip
      Then Wait for 3 seconds
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
      Then verify the supplier status as "Pending Invites"
      When Wait 3 seconds
    #Invite from Supplier Request
      And Click "Supplier Requests" tab
      And Wait for 3 seconds
      When Click "Initiate Supplier Request" button
      And Enter connected Supplier Company Name on Invite Supplier modal
      Then Select country as "Argentina" in "Tax Country" dropdown
      And Wait for 3 seconds
      When Click "Search" button
      And Wait for 3 seconds
      When Click on Businessname from Supplier Request
      And Wait for 3 seconds
      Then Enter timestamp in "Legal Business Name" field "Legal Business"
      And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
      And Enter "Denmark" in "City" field after "Test" supplier registration
      Then Select "Jujuy" from "Region " dropdown
      And Enter "2000112" in "Postal Code" field after "Test" supplier registration
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
      When Click "Next" button
    #Supplier Segmentation
      Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
      And Wait for 3 seconds
      And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
      And Wait for 3 seconds
      And Select text "EMEA" under "IBM Region" for Custom Fields
      And Wait for 3 seconds
      And Select text "BENELUX" under "IBM Market" for Custom Fields
      And Wait for 3 seconds
      And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
      And Wait for 3 seconds
      And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
      And Wait for 5 seconds
      And Click on the Same supplier name after request and press Enter
      And Wait for 3 seconds
      Then verify the supplier status as "Pending"
    #Answer questionnaire
    #PIF Indicator
    When Click on the "PIF Indicator" under Assigned Assessments
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    When Click on "Reject Request" link button
    Then Verify "Reject Request" label is displying under "Reject Request" for "Reject Request"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Rejected successfully" successfully is shown
    And Wait for 5 seconds
		Then verify the supplier status as "Rejected"
		#Verify buttons ans status
		And Verify "Cancel Request" button is not displying
		And Verify "Reject Request" button is not displying
		And Verify "Complete Request" button is not displying
		Then Verify "No data available" text is displying under "Assigned Assessments"
		When Click on "Clear All" div button
		And Wait for 3 seconds
		When Click on the "Supplier Request" under Assigned Assessments at "1"
		And Wait for 3 seconds
		Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system
    
    #SLYN-29158
    @Regression @SupplierRequest @SLYN-29158
  	Scenario: Verify as a Buyer, I should able to Reject Request when supplier is in Approved status from connected supplier also should show the status as Rejected and All the open approvals and assessments should be cancelled.The approvals in Approved status should be moved to Completed status
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
      Then Click on the Skip
      Then Wait for 3 seconds
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
      Then verify the supplier status as "Pending Invites"
      When Wait 3 seconds
    #Invite from Supplier Request
      And Click "Supplier Requests" tab
      And Wait for 3 seconds
      When Click "Initiate Supplier Request" button
      And Enter connected Supplier Company Name on Invite Supplier modal
      Then Select country as "Argentina" in "Tax Country" dropdown
      And Wait for 3 seconds
      When Click "Search" button
      And Wait for 3 seconds
      When Click on Businessname from Supplier Request
      And Wait for 3 seconds
      Then Enter timestamp in "Legal Business Name" field "Legal Business"
      And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
      And Enter "Denmark" in "City" field after "Test" supplier registration
      Then Select "Jujuy" from "Region " dropdown
      And Enter "2000112" in "Postal Code" field after "Test" supplier registration
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
      When Click "Next" button
    #Supplier Segmentation
      Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
      And Wait for 3 seconds
      And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
      And Wait for 3 seconds
      And Select text "EMEA" under "IBM Region" for Custom Fields
      And Wait for 3 seconds
      And Select text "BENELUX" under "IBM Market" for Custom Fields
      And Wait for 3 seconds
      And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
      And Wait for 3 seconds
      And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
      And Wait for 5 seconds
      And Click on the Same supplier name after request and press Enter
      And Wait for 3 seconds
      Then verify the supplier status as "Pending"
	#Answer Assigned Assessments
      When Click on the "PIF Indicator" under Assigned Assessments
      And Wait for 3 seconds
      When Click "Assign / Reassign" button 2
      And Select re-assign role to "Administrator"
      And Click "Re-assign" button
      And Verify toast message "Successfully reassigned" successfully is shown
      And Wait for 5 seconds
      Then Click on the NO for First question
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
    #Second
      When Click on the "Supplier Management" under Assigned Assessments
      And Wait for 3 seconds
      Then Click on the NO for First question
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
    #Third
      When Click on the "Buyer Internal assessment" under Assigned Assessments
      And Wait for 3 seconds
      Then Click on the YES for First question
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      And Wait for 3 seconds
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
      Then verify the supplier status as "In Progress"
    #Approvals
      When Click on "Buyer Internal assessment" in Approval Source "1"
      Then Wait for 5 seconds
      Then Click on the Approve button
      Then Enter the Notes
      Then Enter the Notes under the Notes Box
      Then Click on the Approve button on approval
      Then Wait for 3 seconds
      Then Navigate back to supplier

      When Click on "Supplier Request" in Approval requests "1"
      Then Wait for 5 seconds
      Then Click on the Approve button
      Then Enter the Notes
      Then Enter the Notes under the Notes Box
      Then Click on the Approve button on approval
      Then Wait for 3 seconds
      Then Navigate back to supplier
      Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
      Then verify the supplier status as "Approved"
    When Click on "Reject Request" link button
    Then Verify "Reject Request" label is displying under "Reject Request" for "Reject Request"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Rejected successfully" successfully is shown
    And Wait for 5 seconds
		Then verify the supplier status as "Rejected"
    And Wait for 3 seconds
    #Verify buttons ans status
		And Verify "Cancel Request" button is not displying
		And Verify "Reject Request" button is not displying
		And Verify "Complete Request" button is not displying
		Then Verify "No data available" text is displying under "Assigned Assessments"
		When Click on "Clear All" div button
		And Wait for 3 seconds
		When Click on the "Supplier Request" under Assigned Assessments at "1"
		And Wait for 3 seconds
		Then verify the supplier status as "Complete"
    And Wait for 3 seconds
    And Logout from the system
    
    #SLYN-29158
    @Regression @SupplierRequest @SLYN-29158
  	Scenario: Verify as a Buyer, I should able to Reject Request when supplier is in Approved status from connected supplier also should show the status as Rejected and All the open approvals and assessments should be cancelled.The approvals in Rejected status should be moved to Completed status

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
      Then Click on the Skip
      Then Wait for 3 seconds
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
      And Wait for 3 seconds
      When Click "Initiate Supplier Request" button
      And Enter connected Supplier Company Name on Invite Supplier modal
      Then Select country as "Argentina" in "Tax Country" dropdown
      And Wait for 3 seconds
      When Click "Search" button
      And Wait for 3 seconds
      When Click on Businessname from Supplier Request
      And Wait for 3 seconds
      Then Enter timestamp in "Legal Business Name" field "Legal Business"
      And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
      And Enter "Denmark" in "City" field after "Test" supplier registration
      Then Select "Jujuy" from "Region " dropdown
      And Enter "2000112" in "Postal Code" field after "Test" supplier registration
      And Wait for 3 seconds
      When Click "Next" button
      And Wait for 3 seconds
      When Click "Next" button
    #Supplier Segmentation
      Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
      And Wait for 3 seconds
      And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
      And Wait for 3 seconds
      And Select text "EMEA" under "IBM Region" for Custom Fields
      And Wait for 3 seconds
      And Select text "BENELUX" under "IBM Market" for Custom Fields
      And Wait for 3 seconds
      And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
      And Wait for 3 seconds
      And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
      And Wait for 5 seconds
      And Click on the Same supplier name after request and press Enter
      And Wait for 3 seconds
      Then verify the supplier status as "Pending"
	#Answer Assigned Assessments
      When Click on the "PIF Indicator" under Assigned Assessments
      And Wait for 3 seconds
      When Click "Assign / Reassign" button 2
      And Select re-assign role to "Administrator"
      And Click "Re-assign" button
      And Verify toast message "Successfully reassigned" successfully is shown
      And Wait for 5 seconds
      Then Click on the NO for First question
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
    #Second
      When Click on the "Supplier Management" under Assigned Assessments
      And Wait for 3 seconds
      Then Click on the NO for First question
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
    #Third
      When Click on the "Buyer Internal assessment" under Assigned Assessments
      And Wait for 3 seconds
      Then Click on the YES for First question
      Then Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      Then Enter "01/02/2021" in Expiry Date field
      Then add label as "VATDOCUMENT"
      Then Click on the Confirm button.
      And Wait for 3 seconds
      Then Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 5 seconds
      Then verify the supplier status as "In Progress"
    #Approvals
      When Click on "Buyer Internal assessment" in Approval Source "1"
      Then Wait for 5 seconds
      Then Click on the Approve button
      Then Enter the Notes
      Then Enter the Notes under the Notes Box
      Then Click on the Approve button on approval
      Then Wait for 3 seconds
      Then Navigate back to supplier

      When Click on "Supplier Request" in Approval requests "1"
      Then Wait for 5 seconds
      Then Click on the Approve button
      Then Enter the Notes
      Then Enter the Notes under the Notes Box
      Then Click on the Approve button on approval
      Then Wait for 3 seconds
      Then Navigate back to supplier
      Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
      Then verify the supplier status as "Approved"
    When Click on "Reject Request" link button
    Then Verify "Reject Request" label is displying under "Reject Request" for "Reject Request"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Rejected successfully" successfully is shown
    And Wait for 5 seconds
		Then verify the supplier status as "Rejected"
    And Wait for 3 seconds
    #Verify buttons ans status
		And Verify "Cancel Request" button is not displying
		And Verify "Reject Request" button is not displying
		And Verify "Complete Request" button is not displying
		Then Verify "No data available" text is displying under "Assigned Assessments"
		When Click on "Clear All" div button
		And Wait for 3 seconds
		When Click on the "Supplier Request" under Assigned Assessments at "1"
		And Wait for 3 seconds
		Then verify the supplier status as "Complete"
    And Wait for 3 seconds
    And Logout from the system

      #SLYN-29160
  @Regression @SupplierRequest @SLYN-29160
  Scenario: Verify as a Buyer, I should able to see lables and tooltips for Cancel Request section

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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    When Click on "Cancel Request" link button
    Then Verify "Cancel Request" label is displying under "Cancel Request" for "Cancel Request"
    And Show "Notes" label in at "Reject Request"
    Then Show tooltip "You can provide notes in the text area below. These will not be shown to the supplier, and are for internal use only." in "Notes" under "Reject Request"
    When Click "Cancel" button
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29160 #Raised a bug for mandatory field SLYN-30820
  @Regression @SupplierRequest @SLYN-29160
  Scenario: Verify as a Buyer, I should able to see Cancel reason is mandatory and Attachment is optional

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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
    When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    When Click on "Cancel Request" link button
    Then Verify "Cancel Request" label is displying under "Cancel Request" for "Cancel Request"
    When Click "Submit" button
    Then Verify "Required" error is showing under "Cancel Request"
    When Click "Cancel" button
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29160
  @Regression @SupplierRequest @SLYN-29160
  Scenario: Verify as a Buyer, I should able to Cancel Request when supplier is in Pending status also should show the toast message as Supplier Request Cancelled successfully

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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    When Click on "Cancel Request" link button
    Then Verify "Cancel Request" label is displying under "Cancel Request" for "Cancel Request"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29160
  @Regression @SupplierRequest @SLYN-29160
  Scenario: Verify as a Buyer, I should able to Cancel Request when supplier is in In Progress status also should show the toast message as Supplier Request Cancelled successfully

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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer questionnaire
    #PIF Indicator
    When Click on the "PIF Indicator" under Assigned Assessments
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    When Click on "Cancel Request" link button
    Then Verify "Cancel Request" label is displying under "Cancel Request" for "Cancel Request"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29160
  @Regression @SupplierRequest @SLYN-29160
  Scenario: Verify as a Buyer, I should able to Cancel Request when supplier is in Approved status also should show the toast message as Supplier Request Cancelled successfully

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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
	#Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    When Click on "Cancel Request" link button
    Then Verify "Cancel Request" label is displying under "Cancel Request" for "Cancel Request"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29160
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29160 @SRMSanityCheck
  Scenario: Verify as a Buyer, I should able to Cancel Request when supplier is in In Progress status also should show the status as Cancelled also all assessments should be cancelled. Pending approvals should be cancelled.

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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer questionnaire
    #PIF Indicator
    When Click on the "PIF Indicator" under Assigned Assessments
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    When Click on "Cancel Request" link button
    Then Verify "Cancel Request" label is displying under "Cancel Request" for "Cancel Request"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
		#Verify buttons ans status
    And Verify "Cancel Request" button is not displying
    And Verify "Reject Request" button is not displying
    And Verify "Complete Request" button is not displying
    Then Verify "No data available" text is displying under "Assigned Assessments"
    When Click on "Clear All" div button
    And Wait for 3 seconds
    When Click on the "Supplier Request" under Assigned Assessments at "1"
    And Wait for 3 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29160
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29160
  Scenario: Verify as a Buyer, I should able to Cancel Request when supplier is in Approved status also should show the status as Cancelled and All the open approvals and assessments should be cancelled.The approvals in Approved status should be moved to Cancelled status

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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
	#Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    When Click on "Cancel Request" link button
    Then Verify "Cancel Request" label is displying under "Cancel Request" for "Cancel Request"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    #Verify buttons ans status
    And Verify "Cancel Request" button is not displying
    And Verify "Reject Request" button is not displying
    And Verify "Complete Request" button is not displying
    Then Verify "No data available" text is displying under "Assigned Assessments"
    When Click on "Clear All" div button
    And Wait for 3 seconds
    When Click on the "Supplier Request" under Assigned Assessments at "1"
    And Wait for 3 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29160
  @Regression @SupplierRequest @SLYN-29160
  Scenario: Verify as a Buyer, I should able to Cancel Request when supplier is in Approved status also should show the status as Cancelled and All the open approvals and assessments should be cancelled.The approvals in Cancelled status should be moved to Cancelled status

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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"

	#Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    When Click on "Cancel Request" link button
    Then Verify "Cancel Request" label is displying under "Cancel Request" for "Cancel Request"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    #Verify buttons ans status
    And Verify "Cancel Request" button is not displying
    And Verify "Reject Request" button is not displying
    And Verify "Complete Request" button is not displying
    Then Verify "No data available" text is displying under "Assigned Assessments"
    When Click on "Clear All" div button
    And Wait for 3 seconds
    When Click on the "Supplier Request" under Assigned Assessments at "1"
    And Wait for 3 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29160
  @Regression @SupplierRequest @SLYN-29160
  Scenario: Verify as a Buyer, I should able to Cancel Request when supplier is in In Progress status from connected supplier also should show the status as Cancelled also all assessments should be cancelled. Pending approvals should be cancelled.

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
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    When Click "Next" button
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer questionnaire
    #PIF Indicator
    When Click on the "PIF Indicator" under Assigned Assessments
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    When Click on "Cancel Request" link button
    Then Verify "Cancel Request" label is displying under "Cancel Request" for "Cancel Request"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
		#Verify buttons ans status
    And Verify "Cancel Request" button is not displying
    And Verify "Reject Request" button is not displying
    And Verify "Complete Request" button is not displying
    Then Verify "No data available" text is displying under "Assigned Assessments"
    When Click on "Clear All" div button
    And Wait for 3 seconds
    When Click on the "Supplier Request" under Assigned Assessments at "1"
    And Wait for 3 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29160
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29160
  Scenario: Verify as a Buyer, I should able to Cancel Request when supplier is in Approved status from connected supplier also should show the status as Cancelled and All the open approvals and assessments should be cancelled.The approvals in Approved status should be moved to Cancelled status

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
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    When Click "Next" button
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
	#Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    When Click on "Cancel Request" link button
    Then Verify "Cancel Request" label is displying under "Cancel Request" for "Cancel Request"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    #Verify buttons ans status
    And Verify "Cancel Request" button is not displying
    And Verify "Reject Request" button is not displying
    And Verify "Complete Request" button is not displying
    Then Verify "No data available" text is displying under "Assigned Assessments"
    When Click on "Clear All" div button
    And Wait for 3 seconds
    When Click on the "Supplier Request" under Assigned Assessments at "1"
    And Wait for 3 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29160
  @Regression @SupplierRequest @SLYN-29160
  Scenario: Verify as a Buyer, I should able to Cancel Request when supplier is in Approved status from connected supplier also should show the status as Cancelled and All the open approvals and assessments should be cancelled.The approvals in Cancelled status should be moved to Cancelled status

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
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    When Click "Next" button
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
	#Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    When Click on "Cancel Request" link button
    Then Verify "Cancel Request" label is displying under "Cancel Request" for "Cancel Request"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Submit" button
    And Verify toast message "Supplier Request Cancelled successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    #Verify buttons ans status
    And Verify "Cancel Request" button is not displying
    And Verify "Reject Request" button is not displying
    And Verify "Complete Request" button is not displying
    Then Verify "No data available" text is displying under "Assigned Assessments"
    When Click on "Clear All" div button
    And Wait for 3 seconds
    When Click on the "Supplier Request" under Assigned Assessments at "1"
    And Wait for 3 seconds
    Then verify the supplier status as "Cancelled"
    And Wait for 3 seconds
    And Logout from the system

  #SLYN-29165
  @Regression @SupplierRequest @SLYN-29165
  Scenario: Verify as a Buyer, I should able to see the Complete Request button when Only users with permission to either Complete_Mine or Complete_All

    #Configuration
    And Click on "Admin Actions" Down arrow on Dashboard
    And Click "Manage Users" tab
    And Click on Edit Permissions tab
    And Click on "Edit" icon for "Internal Buyer" role on "Edit permission screen"
    And Click on "read" permission for "SupplierRequest" security module
    And Wait for 2 seconds
    And Click on "complete:mine" permission when selected "SupplierRequest" security module
    And Wait for 2 seconds
    And Click on "complete:all" permission for "SupplierRequest" security module
    And Wait for 2 seconds
    And Click "Save" button
    And Wait for 3 seconds
    #Invite supplier
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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    Then Verify Edit button is visible for same user login
    #Answer questionnaire
    #PIF Indicator
    When Click on the "PIF Indicator" under Assigned Assessments
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    When Click on the "Supplier Request" under Assigned Assessments at "1"
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Wait for 3 seconds
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 5 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    Then Enter the date "12" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    Then Wait for 5 seconds
    And Navigate back to supplier
    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    And Verify "Complete Request" label button is displying under "Supplier Request" at "2"
    And Wait for 3 seconds
    And Logout from the system

     #SLYN-29165
  @Regression @SupplierRequest @SLYN-29165
  Scenario: Verify as a Buyer, I should able to see the Complete Request button when the user role has permission to Complete_Mine on the request that was created by that user

    #Invite supplier
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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    Then Verify Edit button is visible for same user login
    #Answer questionnaire
    #PIF Indicator
    When Click on the "PIF Indicator" under Assigned Assessments
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    When Click on the "Supplier Request" under Assigned Assessments at "1"
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Wait for 3 seconds
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 5 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    Then Enter the date "12" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    Then Wait for 5 seconds
    And Navigate back to supplier
    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    And Verify "Complete Request" label button is displying under "Supplier Request" at "2"
    And Wait for 3 seconds
    And Logout from the system
    And Wait for 3 seconds
    When Enter export user in Email Address field
    ##And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Supplier Requests" tab
    And Wait for 10 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then Verify "Complete Request" button is not visible
    And Wait for 3 seconds
    And Logout from the system

    #SLYN-29165
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29165
  Scenario: Verify as a Buyer, I should able to see Complete Request button should present a right drawer with buttons & fields for New users or preloaded users

    #Invite supplier
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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    Then Verify Edit button is visible for same user login
	#Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    And Verify "Complete Request" label button is displying under "Supplier Request" at "2"
    And Wait for 3 seconds
    When Click on "Complete Request" link button at 2
    Then Verify "Complete Request" label is displying under "Complete Request" for "Complete Request"
    And Enter the Notes under complete request
    When Click "Proceed to Invite" button
    #Verify input fields not enabled
    Then Verify "Supplier Company Name" input text field not enabled under for "Invite Supplier"
    And Verify "First Name" input text field not enabled under for "Invite Supplier"
    And Verify "Last Name" input field not enabled under for "Invite Supplier"
    And Verify "Email ID" input field not enabled under for "Invite Supplier"
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
    Then verify the supplier status as "Completed"
    And Wait for 3 seconds
    And verify the status for Questionnaire Name for "PIF Indicator" as "Completed"
    When Click on "Clear All" div button
    And Wait for 3 seconds
    When Click on the "Supplier Request" under Assigned Assessments at "1"
    And Wait for 3 seconds
    Then verify the supplier status as "Complete"
    And Navigate back to supplier
    #Verify buttons
    Then verify the supplier status as "Approved"
    When Click on the "PIF Indicator" under Assigned Assessments
    Then Wait for 10 seconds
    And Verify "Save" button is not enabled under for "Supplier Request"
    And Verify "Save & Close" button is not enabled under for "Supplier Request"
    And Verify "Submit" button is not enabled under for "Supplier Request"
    And Wait for 3 seconds
    Then Logout from the system

    #SLYN-29165
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29165 @SRMSanityCheck
  Scenario: Verify as a Buyer, I should able to see Complete Request button should present a right drawer with buttons & fields for Connected Supplier

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
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    When Click "Next" button
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
	#Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    And Verify "Complete Request" label button is displying under "Supplier Request" at "2"
    And Wait for 3 seconds
    When Click on "Complete Request" link button at 2
    Then Verify "Complete Request" label is displying under "Complete Request" for "Complete Request"
    And Enter the Notes under complete request
    When Click "Proceed to Invite" button
    #Verify input fields not enabled
    Then Verify "Supplier Company Name" input text field not enabled under for "Invite Supplier"
    And Verify "First Name" input text field not enabled under for "Invite Supplier"
    And Verify "Last Name" input field not enabled under for "Invite Supplier"
    And Verify "Email ID" input field not enabled under for "Invite Supplier"
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
    Then verify the supplier status as "Completed"
    And Wait for 3 seconds
    And verify the status for Questionnaire Name for "PIF Indicator" as "Completed"
    When Click on "Clear All" div button
    And Wait for 3 seconds
    When Click on the "Supplier Request" under Assigned Assessments at "1"
    And Wait for 3 seconds
    Then verify the supplier status as "Complete"
    #Verify buttons
    Then verify the supplier status as "Approved"
    When Click on the "PIF Indicator" under Assigned Assessments
    Then Wait for 10 seconds
    And Verify "Save" button is not enabled under for "Supplier Request"
    And Verify "Save & Close" button is not enabled under for "Supplier Request"
    And Verify "Submit" button is not enabled under for "Supplier Request"
    And Wait for 3 seconds
    Then Logout from the system
  #SLYN-29165
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29165
  Scenario: Verify as a Buyer, I should able to see Complete Request button should present a right drawer with buttons & fields for Discoverable Supplier
    And Wait for 3 seconds
    Then Logout from the system
    Then Enter data in Email Address field for nokia buyer
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    #Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait 5 seconds
    Then Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Invite from Supplier Request
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    #When Click "Next" button
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
	#Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    And Verify "Complete Request" label button is displying under "Supplier Request" at "2"
    And Wait for 3 seconds
    When Click on "Complete Request" link button at 2
    Then Verify "Complete Request" label is displying under "Complete Request" for "Complete Request"
    And Enter the Notes under complete request
    When Click "Proceed to Invite" button
    #Verify input fields not enabled
    Then Verify "Supplier Company Name" input text field not enabled under for "Invite Supplier"
    And Verify "First Name" input text field not enabled under for "Invite Supplier"
    And Verify "Last Name" input field not enabled under for "Invite Supplier"
    And Verify "Email ID" input field not enabled under for "Invite Supplier"
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
    Then verify the supplier status as "Completed"
    And Wait for 3 seconds
    And verify the status for Questionnaire Name for "PIF Indicator" as "Completed"
    When Click on "Clear All" div button
    And Wait for 3 seconds
    When Click on the "Supplier Request" under Assigned Assessments at "1"
    And Wait for 3 seconds
    Then verify the supplier status as "Complete"
    And Navigate back to supplier
    #Verify buttons
    Then verify the supplier status as "Approved"
    When Click on the "PIF Indicator" under Assigned Assessments
    Then Wait for 10 seconds
    And Verify "Save" button is not enabled under for "Supplier Request"
    And Verify "Save & Close" button is not enabled under for "Supplier Request"
    And Verify "Submit" button is not enabled under for "Supplier Request"
    And Wait for 3 seconds
    Then Logout from the system

    #SLYN-29165
  @Regression @SupplierRequest @SLYN-29165
  Scenario: Verify as a Buyer, I should able to see Complete Request button should present a right drawer with buttons & fields for New users without approvals or assessments.

    #Invite supplier
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter Random Supplier Company Name on Invite Supplier modal
    Then Select country as "Brazil" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click "Request a New Supplier" button
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Approved"
    And Verify "Complete Request" label button is displying under "Supplier Request" at "2"
    And Wait for 3 seconds
    When Click on "Complete Request" link button at 2
    Then Verify "Complete Request" label is displying under "Complete Request" for "Complete Request"
    And Enter the Notes under complete request
    When Click "Proceed to Invite" button
    #Verify input fields not enabled
    Then Verify "Supplier Company Name" input text field not enabled under for "Invite Supplier"
    And Verify "First Name" input text field not enabled under for "Invite Supplier"
    And Verify "Last Name" input field not enabled under for "Invite Supplier"
    And Verify "Email ID" input field not enabled under for "Invite Supplier"
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
    Then verify the supplier status as "Completed"
    And Wait for 3 seconds
    Then Logout from the system

    #SLYN-29165
  @Regression @SupplierRequest @SLYN-29165
  Scenario: Verify as a Buyer, I should able to see Custom field information, except for fields with value type as Boolean and single-select, from the supplier request should be merged for an existing connected supplier when the user Complete the Request

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
    Then Select "0 - 50,000 USD" value from "root_supplierInformation_spendThreshold" label
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    Then Select "Ariba Network ID" value from "buyerSystemDetails.0.buyerSystemName" label
    Then Enter value for "System ID" field
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    When Click "Next" button
    #Supplier Segmentation
    Then Select "Direct Procurement Spare Parts (SPP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "IT Managed Services (ITM)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "APAC" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "ASEAN" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Afghanistan (AF)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
	#Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    And Verify "Complete Request" label button is displying under "Supplier Request" at "2"
    And Wait for 3 seconds
    When Click on "Complete Request" link button at 2
    Then Verify "Complete Request" label is displying under "Complete Request" for "Complete Request"
    And Enter the Notes under complete request
    When Click "Submit" button 2
    And Wait for 5 seconds
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    When Click on the Action Center
    And Wait for 3 seconds
    Then Verify "IT Managed Services (ITM)" under "Supplier Category (Commodity Family)" in action center
    Then Verify "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" in action center
    Then Verify "APAC" under "IBM Region" in action center
    Then Verify "EMEA" under "IBM Region" in action center
    Then Verify "ASEAN" under "IBM Market" in action center
    Then Verify "BENELUX" under "IBM Market" in action center
    Then Logout from the system


    #SLYN-29175
  @Regression @SupplierRequest @SLYN-29175
  Scenario: Verify as a Buyer, I should able to see Supplier Request panel and Request ID, Status, Requested by and Request date under Action center

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
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    When Click "Next" button
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    And Save the request ID
    And Save the requested by from supplier request
    And Save the requested time from supplier request
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    When Click on the Action Center
    And Wait for 3 seconds
    Then Verify the "Supplier Requests" status updated to "Pending"
    And Verify the request ID is displaying in action center
    And Verify the request by is displaying in action center
    And Verify the request time is displaying in action center
    And Logout from the system

    #SLYN-29175
  @Regression @SupplierRequest @SLYN-29175
  Scenario: Verify as a Buyer, I should able to see the Supplier Request status under Action center for Pending status

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
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    When Click "Next" button
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    When Click on the Action Center
    And Wait for 3 seconds
    Then Verify the "Supplier Requests" status updated to "Pending"
    And Logout from the system

    #SLYN-29175
  @Regression @SupplierRequest @SLYN-29175
  Scenario: Verify as a Buyer, I should able to see the Supplier Request status under Action center for In-Progress status

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
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    When Click "Next" button
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
     #Answer questionnaire
    #PIF Indicator
    When Click on the "PIF Indicator" under Assigned Assessments
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    When Click on the Action Center
    And Wait for 3 seconds
    Then Verify the "Supplier Requests" status updated to "In Progress"
    And Logout from the system

    #SLYN-29175
  @Regression @SupplierRequest @TYSFuncationality @SLYN-29175 @SRMSanityCheck
  Scenario: Verify as a Buyer, I should able to see the Supplier Request status under Action center for Approved status with Approvals and assignments

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
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    When Click "Next" button
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
	#Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    When Click on the Action Center
    And Wait for 3 seconds
    Then Verify the "Supplier Requests" status updated to "Approved"
    And Logout from the system

    #SLYN-29175
  @Regression @SupplierRequest @SLYN-29175
  Scenario: Verify as a Buyer, I should able to see the Supplier Request status under Action center for Approved status without Approvals and assignments

    #Invite supplier
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter Random Supplier Company Name on Invite Supplier modal
    Then Select country as "Brazil" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click "Request a New Supplier" button
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Approved"
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    When Click on the Action Center
    And Wait for 3 seconds
    Then Verify the "Supplier Requests" status updated to "Approved"
    And Logout from the system

    #SLYN-29175 #before running we have to make sure the user has without Read:All permission for supplier request
  @Regression @SupplierRequest @SLYN-29175
  Scenario: Verify as a Buyer, I should able to see error message as Access is restricted to the requests created by you if user without Read:All permission

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
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    When Click "Next" button
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
	#Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    When Click on the Action Center
    And Wait for 3 seconds
    Then Verify the "Supplier Requests" status updated to "Approved"
    And Logout from the system
    #Verify error message
    When Enter other user in Email Address field
    ##And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    Then Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    When Click on the Action Center
    And Wait for 3 seconds
    When Click on supplier requests row
    Then Verify toast message "Access is restricted to the requests created by you" successfully is shown
    And Wait for 5 seconds
    And Logout from the system

     #SLYN-29175
  @Regression @SupplierRequest @SLYN-29175
  Scenario: Verify as a Buyer, I should able to see the Supplier Request details navigation under Action center from connected supplier

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
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    When Click "Next" button
    #Supplier Segmentation
    Then Select "Global Logistics (GLP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Albania (AL)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
	#Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    When Click "Connected Suppliers" tab
    And Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    When Click on the Action Center
    And Wait for 3 seconds
    Then Verify the "Supplier Requests" status updated to "Approved"
    When Click on supplier requests row
    And Wait for 3 seconds
    Then verify the supplier status as "Approved"
    And Wait for 5 seconds
    And Logout from the system


    #SLYN-30400
  @Regression @SupplierRequest @TYSFunctionality @SLYN-30400
  Scenario: Verify as a Buyer, I should able to see the Approval details like Approval source,Full Supplier Request,Approval Request Description

    #Invite supplier
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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    Then Verify Edit button is visible for same user login
	#Answer Assigned Assessments
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Administrator"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Second
    When Click on the "Supplier Management" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the NO for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    #Third
    When Click on the "Buyer Internal assessment" under Assigned Assessments
    And Wait for 3 seconds
    Then Click on the YES for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    And Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    #Approvals
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier

    When Click on "Supplier Request" in Approval requests "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 5 seconds

#    When Click on "Supplier Request" in Approval requests "2"
#    Then Wait for 5 seconds
#    Then Click on the Approve button
#    Then Enter the Notes
#    Then Enter the Notes under the Notes Box
#    Then Click on the Approve button on approval
#    Then Wait for 3 seconds
#    Then Navigate back to supplier
#    Then Wait for 5 seconds
    #Verify buttons
    Then verify the supplier status as "Approved"
    And Verify "Complete Request" label button is displying under "Supplier Request" at "2"
    And Wait for 3 seconds
    When Click on "Complete Request" link button at 2
    Then Verify "Complete Request" label is displying under "Complete Request" for "Complete Request"
    And Enter the Notes under complete request
    When Click "Proceed to Invite" button
    #Verify input fields not enabled
    Then Verify "Supplier Company Name" input text field not enabled under for "Invite Supplier"
    And Verify "First Name" input text field not enabled under for "Invite Supplier"
    And Verify "Last Name" input field not enabled under for "Invite Supplier"
    And Verify "Email ID" input field not enabled under for "Invite Supplier"
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
    Then verify the supplier status as "Completed"
    And Wait for 3 seconds
    And verify the status for Questionnaire Name for "PIF Indicator" as "Completed"
    When Click on "Clear All" div button
    And Wait for 3 seconds
    When Click on the "Supplier Request" under Assigned Assessments at "1"
    And Wait for 3 seconds
    Then verify the supplier status as "Complete"
    And Verify "Supplier Request" label is displaying under "Approval source"
    And Verify link under "Full Supplier Request"
    And Verify "Approval Request Description" as "testtest" under Approval details
    And Navigate back to supplier
    Then Logout from the system

   #SLYN-30400
  @Regression @SupplierRequest @TYSFunctionality @SLYN-30400
  Scenario: Verify as a Buyer, I should able to see the Approval details for assessments approvals

    And Wait for 3 seconds
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    Then Select "Buyer Internal assessment" value from dropdown
    #Then Click on "Buyer Internal assessment" option in "Approval Source" dropdown
    Then Click on "Search" button in connected supplier filter by
    And Wait for 3 seconds
    And Refresh the current webpage
    And Wait for 10 seconds
    When Click on "Buyer Internal assessment" manage approval after filter
    Then Verify link under "Approval source"
    And Verify link under "Full Supplier Request"
    And Verify "Question" as "Do you confirm that buyer have reviewed all the risk in the process and is in agreement to onboard the supplier?" under Approval details
    And Verify "Response" as "Yes" under Approval details
    And Verify "Approval Request Description" as "test" under Approval details
    And Verify "Approval Request Cause" as "Generated because Supplier Answer Yes is Equal To Yes" under Approval details
    Then Logout from the system

    #SLYN-30458
  @Regression @SupplierRequest @TYSFunctionality @SLYN-30458
  Scenario: Verify as a Buyer, I should able to see the Supplier request category under approval source for manage approvals

    And Wait for 3 seconds
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    Then Select "Supplier Request" value from dropdown
    #Then Click on "Buyer Internal assessment" option in "Approval Source" dropdown
    Then Click on "Search" button in connected supplier filter by
    And Wait for 3 seconds
    And Refresh the current webpage
    And Wait for 10 seconds
    When Click on "Supplier Request" manage approval after filter
    And Verify "Supplier Request" label is displaying under "Approval source"
    And Verify link under "Full Supplier Request"
    And Verify "Approval Request Description" as "testtest" under Approval details
    Then Logout from the system

    #SLYN-30459
  @Regression @SupplierRequest @TYSFunctionality @SLYN-30459
  Scenario: Verify as a Buyer, I should able to see the Supplier Assessment as DPL Search category under approval source for manage approvals
    And Wait for 3 seconds
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    Then Select "DPL Search" value from dropdown
    #Then Click on "Buyer Internal assessment" option in "Approval Source" dropdown
    Then Click on "Search" button in connected supplier filter by
    And Wait for 3 seconds
    And Refresh the current webpage
    And Wait for 10 seconds
    When Click on "DPL Search" manage approval after filter
    And Wait for 5 seconds
    Then Verify link under "Approval source"
    And Verify link under "Full Supplier Request"
    And Verify "Question" as "Was the requested supplier or any of their owners, companies or key personnel found in DPL search?" under Approval details
    And Verify "Response" as "Yes" under Approval details
    And Verify "Approval Request Description" as "not equal to" under Approval details
    And Verify "Approval Request Cause" as "Generated because Supplier Answer Yes is Equal To Yes" under Approval details
    Then Logout from the system

    #SLYN-30459
  @Regression @SupplierRequest @TYSFunctionality @SLYN-30459
  Scenario: Verify as a Buyer, I should able to see the Supplier Assessments names category under approval source for manage approvals

    And Wait for 3 seconds
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    Then Select "Buyer Internal assessment" value from dropdown
    And Wait for 2 seconds
    Then Select "DPL Search" value from dropdown
    And Wait for 2 seconds
    #Then Click on "Buyer Internal assessment" option in "Approval Source" dropdown
    Then Click on "Search" button in connected supplier filter by
    And Wait for 3 seconds
    And Refresh the current webpage
    And Wait for 10 seconds
    Then Verify "DPL Search" and "Buyer Internal assessment" are displaying on manage approval after filter
    Then Logout from the system

    #SLYN-29116
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29116
  Scenario: Verify as a Buyer, I should able to see the dependent assessment questionnaire based on response(s) for that assessment match

    And Wait for 3 seconds
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    And Click on label button "Internal Assessments" under for "Configure Workflow"
    And Wait for 3 seconds
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on "Workflow" for "PIF Indicator (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Is this a PIF Supplier?"
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    When Select "DPL Search" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 3 seconds
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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    Then Verify Edit button is visible for same user login
    #Answer questionnaire
    #PIF Indicator
    When Click on the "PIF Indicator" under Assigned Assessments
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    And Navigate back to supplier
    Then verify the supplier status as "In Progress"
    #Verify assignment questionnaire
    Then Verify "DPL Search" questionnaire name displyed under assigned assessments
    #Delete the configure workflow
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    And Click on label button "Internal Assessments" under for "Configure Workflow"
    Then Wait for 3 seconds
    When Click on "Workflow" for "PIF Indicator (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    Then Navigate page back
    Then Wait for 4 seconds
    Then Logout from the system

  @Regression @SupplierRequest @SLYN-29116
  Scenario: Verify as a Buyer, I should able to see the assigned role based on response(s) for that assessment match
    And Wait for 3 seconds
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    And Click on label button "Internal Assessments" under for "Configure Workflow"
    And Wait for 3 seconds
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on "Workflow" for "PIF Indicator (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Is this a PIF Supplier?"
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    When Select "USL Search" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 3 seconds
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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    Then Verify Edit button is visible for same user login
    #Answer questionnaire
    #PIF Indicator
    When Click on the "PIF Indicator" under Assigned Assessments
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    And Navigate back to supplier
    Then verify the supplier status as "In Progress"
    #Verify assignment questionnaire
    Then Verify "USL Search" questionnaire name displyed under assigned assessments
    And Verify assigned role is showing as "Internal Buyer"
    #Delete the configure workflow
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    And Click on label button "Internal Assessments" under for "Configure Workflow"
    Then Wait for 3 seconds
    When Click on "Workflow" for "PIF Indicator (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    Then Navigate page back
    Then Wait for 4 seconds
    Then Logout from the system

    #SLYN-29116
  @Regression @SupplierRequest @SLYN-29116
  Scenario: Verify as a Buyer, I should not able to publish questionnaire with different when log in to different user role

    And Wait for 3 seconds
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    And Click on label button "Internal Assessments" under for "Configure Workflow"
    And Wait for 3 seconds
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on "Workflow" for "PIF Indicator (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Is this a PIF Supplier?"
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    When Select "USL Search" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 3 seconds
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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    Then Verify Edit button is visible for same user login
    #Answer questionnaire
    #PIF Indicator
    When Click on the "PIF Indicator" under Assigned Assessments
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    And Navigate back to supplier
    Then verify the supplier status as "In Progress"
    #Verify assignment questionnaire
    Then Verify "USL Search" questionnaire name displyed under assigned assessments
    #Log in to other user
    Then Logout from the system
    When Enter export user in Email Address field
    ##And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 3 seconds
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 5 seconds
    When Click on the "USL Search" under Assigned Assessments
    Then Wait for 10 seconds
    And Verify "Save" button is not enabled under for "Supplier Request"
    And Verify "Save & Close" button is not enabled under for "Supplier Request"
    And Verify "Submit" button is not enabled under for "Supplier Request"
    Then Logout from the system
    #Delete the configure workflow
    Then Enter data in Email Address field
    ##And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 3 seconds
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    And Click on label button "Internal Assessments" under for "Configure Workflow"
    Then Wait for 3 seconds
    When Click on "Workflow" for "PIF Indicator (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    Then Navigate page back
    Then Wait for 4 seconds
    Then Logout from the system

     #SLYN-29119
  @Regression @SupplierRequest @SLYN-29119
  Scenario: Verify as a Buyer, I should not able to see Assign/Re-Assign button when the SRA is complete status

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
    Then Select "0 - 50,000 USD" value from "root_supplierInformation_spendThreshold" label
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    Then Select "Ariba Network ID" value from "buyerSystemDetails.0.buyerSystemName" label
    Then Enter value for "System ID" field
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    When Click "Next" button
    #Supplier Segmentation
    Then Select "Direct Procurement Spare Parts (SPP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "IT Managed Services (ITM)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "APAC" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "ASEAN" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Afghanistan (AF)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer questionnaire
    #PIF Indicator
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 5 seconds
    #Verify assign/re-assign button
    Then Verify "Assign / Reassign" button is visible for "Questionnaire" at "2"
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    And verify the status for Questionnaire Name for "PIF Indicator" as "Completed"
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 5 seconds
    Then Verify "Assign / Reassign" button is not displying
    Then Logout from the system

    #SLYN-29119
  @Regression @SupplierRequest @SLYN-29119
  Scenario: Verify as a Buyer, I should able see right drawer with Roles and Users dropdown options when click on Assign/Re-Assign button

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
    Then Select "0 - 50,000 USD" value from "root_supplierInformation_spendThreshold" label
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    Then Select "Ariba Network ID" value from "buyerSystemDetails.0.buyerSystemName" label
    Then Enter value for "System ID" field
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
    When Click "Initiate Supplier Request" button
    And Enter connected Supplier Company Name on Invite Supplier modal
    Then Select country as "Argentina" in "Tax Country" dropdown
    And Wait for 3 seconds
    When Click "Search" button
    And Wait for 3 seconds
    When Click on Businessname from Supplier Request
    And Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter "TestAddress1" in "Address Line 1" field after "Test" supplier registration
    And Enter "Denmark" in "City" field after "Test" supplier registration
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 3 seconds
    When Click "Next" button
    And Wait for 3 seconds
    #enter data
    #
    #When Click "Next" button
    #And Wait for 3 seconds
    When Click "Next" button
    #Supplier Segmentation
    Then Select "Direct Procurement Spare Parts (SPP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "IT Managed Services (ITM)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "APAC" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "ASEAN" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Afghanistan (AF)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer questionnaire
    #PIF Indicator
    When Click on the "PIF Indicator" under Assigned Assessments
    And Wait for 5 seconds
    #Verify assign/re-assign button
    When Click "Assign / Reassign" button 2
    Then Verify "Re-assign to Role" div label is displayed under "Re-assign to Role"
    And Verify "Assign to users (Optional)" div label is displayed under "Re-assign to Role"
    And Show tooltip "Select the role for which you want this Assessment to be assigned to" in "Re-assign to Role" under "Assign / Reassign"
    And Verify "Re-assign to Role" select input option is displayed under "Re-assign to Role"
    And Verify CC role input filed is visible
    And Verify "Re-assign" button is displayed under "Assign / Reassign"
    And Verify "Close" button is visible for "Assign / Reassign" at "3"
    When Click "Close" button 3
    Then Logout from the system


    #SLYN-29119
  @Regression @SupplierRequest @SLYN-29119 @SRMSanityCheck
  Scenario: Verify as a Buyer, I should able see Assign/Reassign button should only be visible to the role the supplier request is assigned to

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
    And Wait for 3 seconds
    #identifiers
    When Click "Next" button
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer questionnaire
    When Click on the "USL Search" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Internal Buyer"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Logout from the system
    #Verify assign/re-assign button is displaying
    When Enter other user in Email Address field
    ##And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 5 seconds
    When Click on the "USL Search" under Assigned Assessments
    And Verify "Assign / Reassign" button is visible for "Assign / Reassign" at "2"
    Then Logout from the system
    #Verify assign/re-assign button is not displaying
    When Enter export user in Email Address field
    ##And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 5 seconds
    When Click on the "USL Search" under Assigned Assessments
    And Verify "Assign / Reassign" button is not displying
    Then Logout from the system

     #SLYN-29119
  @Regression @SupplierRequest @TYSFunctionality @SLYN-29119
  Scenario: Verify as a Buyer, I should able to select different role and select different users Only roles with update permission to Supplier Request Assessment security module

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
    And Wait for 3 seconds
    #identifiers
    When Click "Next" button
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer questionnaire
    When Click on the "USL Search" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Internal Buyer"
    And Select user "rama l, ramaibmint@maildrop.cc" under "Assign to users"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Logout from the system
    #Login with different user
    When Enter same internal user in Email Address field
    ##And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 5 seconds
    When Click on the "USL Search" under Assigned Assessments
    And Wait for 5 seconds
    When Click "Assign / Reassign" button 2
    #Verify Re-assign to Role not enabled
    Then Verify "Re-assign to Role" select dropdown is not enabled
    When Click "Close" button 3
    Then Logout from the system

    #SLYN-29119
  @Regression @SupplierRequest @SLYN-29119
  Scenario: Verify as a Buyer, I should able to assign the user from different user  with same role with Update permission

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
    Then Select "Jujuy" from "Region " dropdown
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    Then verify the supplier status as "Pending"
    #Answer questionnaire
    When Click on the "USL Search" under Assigned Assessments
    And Wait for 3 seconds
    When Click "Assign / Reassign" button 2
    And Select re-assign role to "Internal Buyer"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Logout from the system
    #Login with different user
    When Enter same internal user in Email Address field
    ##And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Supplier Requests" tab
    And Wait for 3 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 5 seconds
    When Click on the "DPL Search" under Assigned Assessments
    And Wait for 5 seconds
    When Click "Assign / Reassign" button 2
    #Verify Re-assign to Role not enabled
    And Wait for 3 seconds
    And Select re-assign role to "Export Regulations"
    And Click "Re-assign" button
    And Verify toast message "Successfully reassigned" successfully is shown
    And Wait for 5 seconds
    Then Logout from the system

  @Regression @SupplierRequest @TYSFunctionality @SLYN-29161
  Scenario:Verify as a Buyer, I should able to see the Complete Request button should be disabled with a hover over message stating “All the assessments and/or approvals should be completed before completing the request” when the Questionnaries have approval

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
    Then Select "0 - 50,000 USD" value from "root_supplierInformation_spendThreshold" label
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    Then Select "Ariba Network ID" value from "buyerSystemDetails.0.buyerSystemName" label
    Then Enter value for "System ID" field
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
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
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
    #Supplier Segmentation
    Then Select "Direct Procurement Spare Parts (SPP)" in "Supplier Category" dropdown
    And Wait for 3 seconds
    And Select text "IT Managed Services (ITM)" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "APAC" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "ASEAN" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    And Select text "Afghanistan (AF)" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
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
    And Wait for 3 seconds
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
         When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
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
    Then verify the supplier status as "In Progress"
    When Click on the "Supplier Request" under Assigned Assessments at "1"
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Wait for 3 seconds
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    Then Wait for 5 seconds
    And Navigate back to supplier
    Then Wait for 5 seconds
    #Verify assignment questionnaire
    Then verify the supplier status as "Approved"
    Then Verify "All the assessments and/or approvals should be completed before completing the request" label is displaying under "Complete Request"
    And Logout from the system

  @Regression @SupplierRequest @TYSFunctionality @SLYN-29161
  Scenario:Verify as a Buyer, I should able to see the notification received to primary and secondary recipient when post approval assessment is generated

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
    Then Select "0 - 50,000 USD" value from "root_supplierInformation_spendThreshold" label
    Then Click "Yes" option for "Is supplier located in a focus country (excluding Italy and Greece)?" field
    Then Select "Ariba Network ID" value from "buyerSystemDetails.0.buyerSystemName" label
    Then Enter value for "System ID" field
    Then Click on Next button
    Then Click on the Skip
    Then Wait for 3 seconds
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
    And Wait for 3 seconds
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
    Then Select "Jujuy" from "Region " dropdown
    And Enter "2000112" in "Postal Code" field after "Test" supplier registration
    And Wait for 5 seconds
    When Click "Next" button
    And Wait for 5 seconds
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
    And Wait for 3 seconds
    When Click "Continue" button
    And Wait for 3 seconds
             When Click "Submit Request" button
    And Wait for 5 seconds
    And Click on the Same supplier name after request and press Enter
    And Wait for 3 seconds
    When Click on the "S&EMS Record created" under Assigned Assessments
    And Click on the NO for First question in PIF Indicator
    Then Enter the Notes under notes for buyer Notes Box
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 5 seconds
    Then verify the supplier status as "In Progress"
    When Click on the "Supplier Request" under Assigned Assessments at "1"
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Wait for 3 seconds
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    Then Wait for 5 seconds
    And Navigate back to supplier
    Then Wait for 5 seconds
    #Verify assignment questionnaire
    Then verify the supplier status as "Approved"
    Then Verify "All the assessments and/or approvals should be completed before completing the request" label is displaying under "Complete Request"
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification has been sent to recipient as "An Assessment is assigned for"
    And Logout from the system
    When Enter other user in Email Address field
    ##And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Notifications" tab
    Then Verify notification has been sent to recipient as "An Assessment is assigned for"
    And Logout from the system










