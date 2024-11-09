Feature: Add New Contact in Management

 Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @SupplierContact @CDCI
  Scenario: Verify address fields in Add a Contact to Management Team
    Then Enter data in Supplier Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 7 seconds
    Then Click "Management" tab
    Then Wait for 5 seconds
    When Click on Add Other button on Management page
    Then Wait for 3 seconds
    Then Select "Add a New Location" in "Select Location" dropdown
    Then Verify "United States of America" is listed in "Country/Region" dropdown
    Then Select "United States of America" in "Country/Region" dropdown
    Then Show "Country/Region" Label
    Then Show "Country/Region" Dropdown
    Then Show "Address Line 1" Label
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" Label
    Then Show "Address Line 2" input text field
    Then Show "City" Label
    Then Show "City" input text field
    Then Show "State" Label
    Then Show "State" Dropdown
    Then Show "Zip Code" Label
    Then Show "Zip Code" input text field
    Then Show "PO Box" Label
    Then Show "PO Box" input text field
    Then Show "PO Box Zip Code" Label
    Then Show "PO Box Zip Code" input text field
    #Tooltip
    Then Show "First Name" tooltip "The First Name of the contact person, as it appears on official government documents, such as a passport. This is a required field. Max length: 35 characters."
    Then Wait for 2 seconds
    #Then Show "Middle Name" tooltip "The Middle Name of the contact person, as it appears on official government documents, such as a passport. This is an optional field. Max length: 35 characters."
    #Then Show "Last Name" tooltip "The Last Name of the contact person, as it appears on official government documents, such as a passport. This is a required field. Max length: 35 characters."
    Then Wait for 2 seconds
    Then Show "Year of Birth" tooltip "The year this person was born, as it appears on official government documents, such as a passport. This is a required field."
    Then Show "Job Title" tooltip "The job title of this person. This is a required field."
    Then Show "Primary Phone" tooltip "The primary phone number of this contact. This is a required field."
    Then Show "Secondary Phone" tooltip "The secondary phone number of this contact. This is optional."
    Then Show "Email ID" tooltip "The official email address of this person. This is a required field."
    #Then Show "Alternate Email" tooltip "Secondary email address of this person. This is optional."
    Then Show "Select Location" tooltip "The location at which this person works officially. This is an optional field."
    Then Show "Address Type" tooltip "Address Type is the category of address. This is a required field."
    Then Show "D-U-N-S Number" tooltip "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank."
    #Then Show "Country/Region" tooltip "Select the appropriate country from the dropdown. This is a mandatory field." in add contact modal
    #Input Field
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "State" dropdown enabled
    Then Verify "Zip Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Zip Code" input text field enabled
    # Flag
    Then Verify "USA" flag in "Primary Phone" field "us"
    Then Verify "USA" flag in "Secondary Phone" field "us"
    #Phone Number
    Then Enter "John" in "First Name" field
    Then Enter "Wick" in "Last Name" field
    Then Click "Year of Birth" checkbox
    Then Enter "QA" in "Job Title" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Verify phone number "Primary Phone" is entered in accepted format "+1 (987) 654-3210"
    Then Enter phone number "1234567890" in "Secondary Phone" field
    Then Verify phone number "Secondary Phone" is entered in accepted format "+1 (123) 456-7890"
    ###Required Error
    Then Click on "Save Contact" button
    Then Show error message "Required" for "Address Type" field
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    Then Show error message "Required" for "State" field
    Then Show error message "Required" for "Zip Code" field
    ### Error Validation
    ###Address 1
    Then Enter 150 digit alpha numeric data in "Address Line 1" field
    Then Show error message like "Maximum length exceeded" under "Address Line 1" field
    ###Address 2
    Then Enter 150 digit alpha numeric data in "Address Line 2" field
    Then Show error message like "Maximum length exceeded" under "Address Line 2" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    #### Zip code
    Then Enter "1234567890" in "Zip Code" field
    Then Verify data entered in "Zip Code" field is "12345-6789"
    Then Enter "1234" in "Zip Code" field
    Then Show error message like "Must be a valid Zip Code." under "Zip Code" field
    Then Enter "12345678" in "Zip Code" field
    Then Show error message like "Must be a valid Zip Code." under "Zip Code" field
    Then Enter "@@@@" in "Zip Code" field
    Then Verify no data is entered in "Zip Code" field
    Then Enter "    " in "Zip Code" field
    Then Verify no data is entered in "Zip Code" field
    Then Enter "123456" in "Zip Code" field
    Then Verify data entered in "Zip Code" field is "12345-6"
    ###PO Box
    Then Enter "1234567890123" in "PO Box" field
    ###PO Box Zip Code
    Then Enter "1234567890" in "PO Box Zip Code" field
    Then Verify data entered in "PO Box Zip Code" field is "12345-6789"
    Then Enter "1234" in "PO Box Zip Code" field
    Then Show error message like "Must be a valid PO Box Zip Code." under "PO Box Zip Code" field
    Then Enter "12345678" in "PO Box Zip Code" field
    Then Show error message like "Must be a valid PO Box Zip Code." under "PO Box Zip Code" field
    Then Enter "abcd" in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "@@@@" in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "    " in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "123456" in "PO Box Zip Code" field
    Then Verify data entered in "PO Box Zip Code" field is "12345-6"
    ##Input Type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    Then Enter "       " in "Zip Code" field
    Then Enter "     " in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    Then Show error message "Required" for "Zip Code" field
    Then Show error message "Required" for "State" field
    Then Enter "123456787" in "PO Box" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Enter "abcd" in "Zip Code" field
    Then Verify no data is entered in "Zip Code" field
    Then Enter "123456" in "Zip Code" field
    Then Enter "abcd" in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "@#$%" in "Zip Code" field
    Then Verify no data is entered in "Zip Code" field
    Then Enter "@#$%" in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "123456" in "PO Box Zip Code" field
    Then Close the modal
    Then Logout from the system
