Feature: Supplier Bank Account and country USA
  
  #BankAccount

Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @Supplier @BankAccount
  Scenario: Verify all the fields visibility and status in Bank Account page
    #When Enter Supplier Email in Email Address field
    When Enter Nokia Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    # And Enter data in Password field
    Then Enter data in Nokia Password field
    Then Click on Sign In button on Login
    And Click on Bank Account Nav link
    Then Show title on Bank Account page "Bank Account Information"
    Then Show Add a company account button on Bank account page "true"
    When Click on "Add a Bank Account" button
    And Logout from the system

  @Regression @Supplier @BankAccount
  Scenario: Verify all "Labels", "Input fields" and "Validation errors" in Company account page for "USA"
    #When Enter Supplier Email in Email Address field
    When Enter Nokia Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    #Then Enter data in Password field
    Then Enter data in Nokia Password field
    Then Click on Sign In button on Login
    Then Click on Bank Account Nav link
    Then Click on "Add a Bank Account" button
    Then Wait for 2 seconds
    ##########################  Bank Account Information ##########################
    ####Input fields status
    And Verify "Company Account" radio status under "Select Account Type"
    And Verify "Factoring Company Account" radio status under "Select Account Type"
    And Show "Add Accounts Receivable Contact" button
    And Verify "Add Accounts Receivable Contact" button clickable
    ##########################  Bank Account Information ##########################
    #### Labels
    And Verify "Country/Region" label under "Bank Account Information" section
    And Verify "Bank Account Label" label under "Bank Account Information" section
    And Verify "Intermediary Bank Account" label under "Bank Account Information" section
    And Verify "Bank Name" label under "Bank Account Information" section
    And Verify "Currency" label under "Bank Account Information" section
    And Verify "Account Holder Name" label under "Bank Account Information" section
    And Wait for 2 seconds
    And Verify "Account Number" label under "Bank Account Information" section
    #And Verify "Bank Key" label under "Bank Account Information" section
    And Verify "SWIFT Code" label under "Bank Account Information" section
    And Verify "Bank Routing Number" label under "Bank Account Information" section
    And Verify "Account Evidence" label under "Bank Account Information" section
    ####Input fields visiility
    And Verify "Country/Region" dropdown visibility under "Bank Account Information" section
    And Verify "Bank Account Label" input field visibility under "Bank Account Information" section
    And Verify "Intermediary Bank Account" dropdown visibility under "Bank Account Information" section
    And Verify "Bank Name" input field visibility under "Bank Account Information" section
    Then Show "Currency" css dropdown
    And Verify "Account Holder Name" input field visibility under "Bank Account Information" section
    #And Verify "Bank Key" input field visibility under "Bank Account Information" section
    And Verify "Account Number" input field visibility under "Bank Account Information" section
    And Verify "SWIFT Code" input field visibility under "Bank Account Information" section
    And Verify "Bank Routing Number" input field visibility under "Bank Account Information" section
    And Verify "Account Evidence" dropdown visibility under "Bank Account Information" section
    #### Input Fields status
    And Verify "Country/Region" dropdown status under "Bank Account Information" section
    And Verify "Bank Account Label" input field status under "Bank Account Information" section
    And Verify "Intermediary Bank Account" dropdown status under "Bank Account Information" section
    And Verify "Bank Name" input field status under "Bank Account Information" section
    Then Verify "Currency" css dropdown enabled
    And Verify "Account Holder Name" input field status under "Bank Account Information" section
    #And Verify "Bank Key" input field status under "Bank Account Information" section
    #And Verify "Account Number" input field status under "Bank Account Information" section
    And Verify "SWIFT Code" input field status under "Bank Account Information" section
    And Verify "Bank Routing Number" input field status under "Bank Account Information" section
    And Verify "Account Evidence" dropdown status under "Bank Account Information" section
    And Logout from the system

  #deleting icomplete data
  #When Enter Nokia Supplier Email in Email Address field
  # When Enter Supplier Email in Email Address field
  ##Then Click on Continue button on Login page
  #Then Enter data in Nokia Password field
  # Then Enter data in Password field
  #And Click on Sign In button on Login
  #Then Click "Bank Account" tab
  #Then Click on back page arrow
  #Then Click on the Delete button
  #Then Wait 5 seconds
  #Then Click on confirm button
  #And Logout from the system
  #Tooltips
  @Regression @Supplier @BankAccount
  Scenario: Verify all the "Tooltips" in Company account page.
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    #Then Enter data in Password field
    Then Enter data in Nokia Password field
    When Click on Sign In button on Login
    And Click on Bank Account Nav link
    When Click on "Add a Bank Account" button
    Then Verify "Bank Branch Name" tooltip "The branch name, or location, of this bank." in add bank account page
    #	And verify the address line tooltip
    # And Verify "Address Line 1" tooltip "Street name, House/Building or Block number. Max length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 1" tooltip "Street name, House/Building or Block number. Max length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip "Continue Street name, House/Building, Neighbourhood or Block number. Max Length: 100 characters. This is an optional field." in add bank account page
    Then Verify "City" tooltip "Name of the City at which it is located. This is a mandatory field." in add bank account page
    And Verify "State" tooltip "Name of the State at which it is located. This is a mandatory field." in add bank account page
    And Verify "Zip Code" tooltip "The Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is a mandatory field. Max Length: 10" in add bank account page
    And Verify "PO Box" tooltip "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    Then Verify "PO Box Zip Code" tooltip "The PO Box Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is an Optional field. Max Length: 10" in add bank account page
    And Logout from the system
    # deleting
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    # Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    #Then Click on back page arrow
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system

  @Regression @Supplier @BankAccount
  Scenario: Verify all the "Tooltips" in Factoring Company account page.
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    #And Enter data in Password field
    Then Enter data in Nokia Password field
    Then Click on Sign In button on Login
    Then Click on Bank Account Nav link
    When Click on "Add a Bank Account" button
    Then Click on the "Factoring Company Account" radio button
    And Verify "Country/Region" tooltip "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account page
    And Verify "Bank Account Label" tooltip "Bank Account Label is the nickname of this account. For eg: Business Checking Account, Business Savings Account etc." in add bank account page
    And Verify "Intermediary Bank Account" tooltip "Select ‘Yes’ if your bank account is an intermediary account, else select ‘No’. Select ‘Not Applicable’ if this field is not applicable for your account details." in add bank account page
    And Verify "Currency" tooltip "The currency type used in this bank account." in add bank account page
    And Verify "Account Holder Name" tooltip "The name on which your account has been opened. Max Length: 100 characters. This field is mandatory." in add bank account page
    And Verify "Account Evidence" tooltip "Please select a type of evidence you wish to attach" in add bank account page
    And Verify "Bank Branch Name" tooltip "The branch name, or location, of your factoring company's bank." in add bank account page
    And Verify "Address Line 1" tooltip "Street name, House/Building or Block number. Max length: 100 characters. This is a mandatory field." in add bank account page
    Then Verify "Zip Code" tooltip "The Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is a mandatory field. Max Length: 10" in add bank account page
    Then Verify "PO Box" tooltip "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    Then Verify "PO Box Zip Code" tooltip "The PO Box Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is an Optional field. Max Length: 10" in add bank account page
    And Logout from the system
    ####deleting
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    #Then Click on back page arrow
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system

  ####Error Validations
  @Regression @Supplier @BankAccount
  Scenario: Verify show error messages
    When Enter Nokia Supplier Email in Email Address field
    # When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait 9 seconds
    Then Click on Bank Account Nav link
    Then Wait 9 seconds
    Then Click on "Add a Bank Account" button
    Then Wait 9 seconds
    Then Click "Save" button 6
    Then Wait 9 seconds
    Then Verify no error message is displayed under "Country/Region" field under "Bank Account Information" section
    Then Verify no error message is displayed under "Bank Account Label" field under "Bank Account Information" section
    Then Verify no error message is displayed under "Intermediary Bank Account" field under "Bank Account Information" section
    Then Show error message "Required" under "Bank Name" field under "Bank Account Information" section
    Then Show error message "Required" under Currency field under "Bank Account Information"
    Then Show error message "Required" under "Account Holder Name" field under "Bank Account Information" section
    Then Verify no error message is displayed under "SWIFT Code" field under "Bank Account Information" section
    Then Verify no error message is displayed under "Bank Routing Number" field under "Bank Account Information" section
    Then Show error message "Required" under Account Evidence field
    And Logout from the system
    #deleting
    When Enter Nokia Supplier Email in Email Address field
    # When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    #Then Click on back page arrow
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system

  ########################## Bank Address ##########################
  #### Labels
  @Regression @Supplier @BankAccount
  Scenario: Verify all "Labels", "Input fields" in Company account page
    When Enter Nokia Supplier Email in Email Address field
    # When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click on Bank Account Nav link
    When Click on "Add a Bank Account" button
    #Then Verify "Bank Branch Name" label under "Bank Address" section
    #Then Verify "Address Line 1" label under "Bank Address" section
    #Then Verify "Address Line 2" label under "Bank Address" section
    #Then Verify "City" label under "Bank Address" section
    #Then Verify "State" label under "Bank Address" section
    #Then Verify "Zip Code" label under "Bank Address" section
    #Then Verify "PO Box" label under "Bank Address" section
    #Then Verify "PO Box Zip Code" label under "Bank Address" section
    ####Input fields visiility
    And Verify "Bank Branch Name" input field visibility under "Bank Address" section
    And Verify "Address Line 1" input field visibility under "Bank Address" section
    And Verify "Address Line 2" input field visibility under "Bank Address" section
    And Verify "City" input field visibility under "Bank Address" section
    And Verify "State" input field visibility under "Bank Address" section
    And Verify "Zip Code" input field visibility under "Bank Address" section
    And Verify "PO Box" input field visibility under "Bank Address" section
    And Verify "PO Box Zip Code" input field visibility under "Bank Address" section
    #### Input Fields status
    #And Verify "Bank Branch Name" input field status under "Bank Address" section
    #And Verify "Address Line 1" input field status under "Bank Address" section
    #And Verify "Address Line 2" input field visibility under "Bank Address" section
    #And Verify "City" input field status under "Bank Address" section
    #And Verify "State" input field visibility under "Bank Address" section
    #And Verify "Zip Code" input field status under "Bank Address" section
    #And Verify "PO Box" input field status under "Bank Address" section
    #And Verify "PO Box Zip Code" input field status under "Bank Address" section
    ####Error Validationss
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Show error message "Required" under "Bank Branch Name" field under "Bank Address" section
    Then Show error message "Required" under "Address Line 1" field under "Bank Address" section
    Then Show error message "Required" under "City" field under "Bank Address" section
    Then Show error message "Required" under "Zip Code" field Value under "Bank Address" section
    Then Verify no error message is displayed under "PO Box" field under "Bank Address" section
    ########################## Bank Contact ##########################
    #### Labels
    And Verify "Bank Contact Name" label under "Bank Contact" section
    And Verify "Bank Contact Number" label under "Bank Contact" section
    And Verify "Bank Contact Email Address" label under "Bank Contact" section
    ####Input fields visiility
    And Verify "Bank Contact Name" input field visibility under "Bank Contact" section
    #And Verify "Germany" flag in "Bank Contact Number" field "de"
    And Verify "Bank Contact Email Address" input field visibility under "Bank Contact" section
    #### Input Fields status
    And Verify "Bank Contact Name" input field status under "Bank Contact" section
    And Verify "Bank Contact Email Address" input field status under "Bank Contact" section
    #### Tooltips
    And Verify "Bank Contact Name" tooltip "The full name of the contact at the bank in which this account is held." in add bank account page
    And Verify "Bank Contact Email Address" tooltip "The email address of the contact from the bank in which this account is held." in add bank account page
    And Verify "Bank Contact Number" tooltip "The phone number of the contact from the bank in which this account is held." in add bank account page
    ####Error Validations
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Show error message "Required" under "Bank Contact Name" field under "Bank Contact" section
    Then Show error message "Required" under "Bank Contact Number" field Value under "Bank Contact" section
    Then Verify no error message is displayed under "Bank Contact Email Address" field under "Bank Contact" section
    ########################## Ordering Information ##########################
    #### Labels
    And Verify "Payment Terms" label under "Ordering Information" section
    And Verify "Purchase Order Email Address" label under "Ordering Information" section
    ####Input fields visiility
    And Verify "Payment Terms" input field visibility under "Ordering Information" section
    And Verify "Purchase Order Email Address" input field visibility under "Ordering Information" section
    ####Input fields status
    And Verify "Payment Terms" input field status under "Ordering Information" section
    And Verify "Purchase Order Email Address" input field status under "Ordering Information" section
    #### Tooltips
    And Verify "Payment Terms" tooltip "Ex: Net 10, Net 30, PIA, EOM, etc..." in add bank account page
    And Verify "Purchase Order Email Address" tooltip "The email address of an employee to whom the POs need to be sent." in add bank account page
    ####Error Validations
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Verify no error message is displayed under "Payment Terms" field under "Ordering Information" section
    Then Verify no error message is displayed under "Purchase Order Email Address" field under "Ordering Information" section
    Then Wait for 3 seconds
    Then Logout from the system
    #deleting icomplete data
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    #Then Click on back page arrow
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system

  @Regression @Supplier @BankAccount
  Scenario: Verify all "Labels", "Input fields" and "Validation errors" in Factoring Company account page.
    When Enter Nokia Supplier Email in Email Address field
    # When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Bank Account Nav link
    Then Click on "Add a Bank Account" button
    Then Wait for 5 seconds
    Then Click on the "Factoring Company Account" radio button
    ##########################  Bank Account Information ##########################
    ####Input fields visibility
    And Verify "Company Account" radio visibiity under "Select Account Type" "true"
    And Verify "Factoring Company Account" radio visibiity under "Select Account Type" "true"
    ####Input fields status
    #And Verify "Company Account" radio status under "Select Account Type"
    #And Verify "Factoring Company Account" radio status under "Select Account Type"
    ########################## Accounts Receivable ##########################
    ####Input fields visibility
    And Show "Add Accounts Receivable Contact" button
    #### Input Fields status
    # And Verify "Add Accounts Receivable Contact" button clickable
    ##########################  Bank Account Information ##########################
    #### Labels
    And Verify "Country/Region" label under "Bank Account Information" section
    And Verify "Bank Account Label" label under "Bank Account Information" section
    And Verify "Intermediary Bank Account" label under "Bank Account Information" section
    And Verify "Bank Name" label under "Bank Account Information" section
    And Verify "Currency" label under "Bank Account Information" section
    And Verify "Account Holder Name" label under "Bank Account Information" section
    And Verify "Account Number" label under "Bank Account Information" section
    #And Verify "Bank Key" label under "Bank Account Information" section
    And Verify "SWIFT Code" label under "Bank Account Information" section
    And Verify "Bank Routing Number" label under "Bank Account Information" section
    And Verify "Account Evidence" label under "Bank Account Information" section
    ####Input fields visiility
    And Verify "Country/Region" dropdown visibility under "Bank Account Information" section
    And Verify "Bank Account Label" input field visibility under "Bank Account Information" section
    And Verify "Intermediary Bank Account" dropdown visibility under "Bank Account Information" section
    And Verify "Bank Name" input field visibility under "Bank Account Information" section
    Then Show "Currency" css dropdown
    And Verify "Account Holder Name" input field visibility under "Bank Account Information" section
    #And Verify "Bank Key" input field visibility under "Bank Account Information" section
    And Verify "Account Number" input field visibility under "Bank Account Information" section
    And Verify "SWIFT Code" input field visibility under "Bank Account Information" section
    And Verify "Bank Routing Number" input field visibility under "Bank Account Information" section
    And Verify "Account Evidence" dropdown visibility under "Bank Account Information" section
    #### Input Fields status
    And Verify "Country/Region" dropdown status under "Bank Account Information" section
    And Verify "Bank Account Label" input field status under "Bank Account Information" section
    And Verify "Intermediary Bank Account" dropdown status under "Bank Account Information" section
    And Verify "Bank Name" input field status under "Bank Account Information" section
    Then Verify "Currency" css dropdown enabled
    And Verify "Account Holder Name" input field status under "Bank Account Information" section
    #And Verify "Bank Key" input field status under "Bank Account Information" section
    And Verify "Account Number" input field status under "Bank Account Information" section
    And Verify "SWIFT Code" input field status under "Bank Account Information" section
    And Verify "Bank Routing Number" input field status under "Bank Account Information" section
    And Verify "Account Evidence" dropdown status under "Bank Account Information" section
    #### Tooltips
    And Verify "Country/Region" tooltip "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account page
    And Verify "Bank Account Label" tooltip "Bank Account Label is the nickname of this account. For eg: Business Checking Account, Business Savings Account etc." in add bank account page
    And Verify "Intermediary Bank Account" tooltip "Select ‘Yes’ if your bank account is an intermediary account, else select ‘No’. Select ‘Not Applicable’ if this field is not applicable for your account details." in add bank account page
    And Verify "Currency" tooltip "The currency type used in this bank account." in add bank account page
    And Verify "Account Holder Name" tooltip "The name on which your account has been opened. Max Length: 100 characters. This field is mandatory." in add bank account page
    And Verify "Account Number" tooltip "Account number of your Bank account which is minimum 4 to maximum 18 alphanumeric characters." in add bank account page
    And Verify "SWIFT Code" tooltip "The Swift code of your bank. This is an optional field." in add bank account page
    And Verify "Bank Routing Number" tooltip "The routing number of the Bank which is usually of 9 digits. They are sometimes called as routing transit numbers, ABA routing numbers, or RTNs." in add bank account page
    And Verify "Account Evidence" tooltip "Please select a type of evidence you wish to attach" in add bank account page
    And Verify "Bank Branch Name" tooltip "The branch name, or location, of your factoring company's bank." in add bank account page
    And Verify "Address Line 1" tooltip "Street name, House/Building or Block number. Max length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Zip Code" tooltip "The Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is a mandatory field. Max Length: 10" in add bank account page
    And Verify "PO Box" tooltip "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    And Verify "PO Box Zip Code" tooltip "The PO Box Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is an Optional field. Max Length: 10" in add bank account page
    ####Error Validations
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Verify no error message is displayed under "Country/Region" field under "Bank Account Information" section
    Then Verify no error message is displayed under "Bank Account Label" field under "Bank Account Information" section
    Then Verify no error message is displayed under "Intermediary Bank Account" field under "Bank Account Information" section
    #Then Show error message "Required" under "Bank Name" field under "Bank Account Information" section
    #Then Show error message "Required" under "Bank Name" field under "Bank Account Information" section
    Then Show error message "Required" under "Bank Name" field under "Bank Account Information" section
    Then Show error message "Required" under Currency field under "Bank Account Information"
    Then Show error message "Required" under "Account Holder Name" field under "Bank Account Information" section
    Then Verify no error message is displayed under "SWIFT Code" field under "Bank Account Information" section
    Then Verify no error message is displayed under "Bank Routing Number" field under "Bank Account Information" section
    Then Show error message "Required" under Account Evidence field
    ########################## Bank Address ##########################
    #### Labels
    And Verify "Bank Branch Name" label under "Bank Address" section
    And Verify "Address Line 1" label under "Bank Address" section
    And Verify "City" label under "Bank Address" section
    And Verify "Zip Code" label under "Bank Address" section
    And Verify "PO Box" label under "Bank Address" section
    And Verify "PO Box Zip Code" label under "Bank Address" section
    ####Input fields visiility
    And Verify "Bank Branch Name" input field visibility under "Bank Address" section
    And Verify "Address Line 1" input field visibility under "Bank Address" section
    And Verify "City" input field visibility under "Bank Address" section
    And Verify "Zip Code" input field visibility under "Bank Address" section
    And Verify "PO Box" input field visibility under "Bank Address" section
    And Verify "PO Box Zip Code" input field visibility under "Bank Address" section
    #### Input Fields status
    And Verify "Bank Branch Name" input field status under "Bank Address" section
    And Verify "Address Line 1" input field status under "Bank Address" section
    And Verify "City" input field status under "Bank Address" section
    And Verify "Zip Code" input field status under "Bank Address" section
    And Verify "PO Box" input field status under "Bank Address" section
    And Verify "PO Box Zip Code" input field status under "Bank Address" section
    #### Tooltips
    #And Verify "Bank Branch Name" tooltip "The branch name, or location, of your factoring company's bank." in add bank account page
    #And Verify "Bank Branch Name" tooltip "The branch name, or location, of your factoring company's bank." in add bank account page
    # And Verify "Address Line 1" tooltip "Street name, House/Building or Block number. Max length: 80 characters. This is a mandatory field." in add bank account page
    #And Verify "Bank Branch Name" tooltip "The branch name, or location, of your factoring company's bank." in add bank account page
    #And Verify "Address Line 1" tooltip "Street name, House/Building or Block number. Max length: 100 characters. This is a mandatory field." in add bank account page
    #And Verify "Zip Code" tooltip "The Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is a mandatory field. Max Length: 10" in add bank account page
    #And Verify "PO Box" tooltip "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    #And Verify "PO Box Zip Code" tooltip "The PO Box Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is an Optional field. Max Length: 10" in add bank account page
    ####Error Validations
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Show error message "Required" under "Bank Branch Name" field under "Bank Address" section
    Then Show error message "Required" under "Address Line 1" field under "Bank Address" section
    Then Show error message "Required" under "City" field under "Bank Address" section
    Then Show error message "Required" under "Zip Code" field Value under "Bank Address" section
    Then Verify no error message is displayed under "PO Box" field under "Bank Address" section
    ########################## Bank Contact ##########################
    #### Labels
    And Verify "Bank Contact Name" label under "Bank Contact" section
    And Verify "Bank Contact Number" label under "Bank Contact" section
    And Verify "Bank Contact Email Address" label under "Bank Contact" section
    ####Input fields visiility
    And Verify "Bank Contact Name" input field visibility under "Bank Contact" section
    And Verify "Bank Contact Email Address" input field visibility under "Bank Contact" section
    #### Input Fields status
    And Verify "Bank Contact Name" input field status under "Bank Contact" section
    And Verify "Bank Contact Email Address" input field status under "Bank Contact" section
    ####Error Validations
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Show error message "Required" under "Bank Contact Name" field under "Bank Contact" section
    Then Show error message "Required" under "Bank Contact Number" field Value under "Bank Contact" section
    Then Verify no error message is displayed under "Bank Contact Email Address" field under "Bank Contact" section
    ########################## Factoring Company Info ##########################
    #### Labels
    And Verify "Factoring Company Name" label under "Factoring Company Info" section
    And Verify "VAT Number" label under "Factoring Company Info" section
    ####Input fields visiility
    And Verify "Factoring Company Name" input field visibility under "Factoring Company Info" section
    And Verify "VAT Number" input field visibility under "Factoring Company Info" section
    #### Input Fields status
    #And Verify "Factoring Company Name" input field status under "Factoring Company Info" section
    #And Verify "VAT Number" input field status under "Factoring Company Info" section
    ####Error Validations
    Then Click "Save" button 6
    Then Wait for 3 seconds
    ########################## Factoring Company Address ##########################
    #### Labels
    And Verify "Country/Region" label under "Factoring Company Address" section
    And Verify "Address Line 1" label under "Factoring Company Address" section
    And Verify "Address Line 2" label under "Factoring Company Address" section
    And Verify "City" label under "Factoring Company Address" section
    And Verify "Zip Code" label under "Factoring Company Address" section
    And Verify "PO Box" label under "Factoring Company Address" section
    And Verify "PO Box Zip Code" label under "Factoring Company Address" section
    ####Input fields visiility
    And Verify "Country/Region" dropdown visibility under "Factoring Company Address" section
    And Verify "Address Line 1" input field visibility under "Factoring Company Address" section
    And Verify "City" input field visibility under "Factoring Company Address" section
    And Verify "Zip Code" input field visibility under "Factoring Company Address" section
    And Verify "PO Box" input field visibility under "Factoring Company Address" section
    And Verify "PO Box Zip Code" input field visibility under "Factoring Company Address" section
    #### Input Fields status
    #And Verify "Country/Region" dropdown status under "Factoring Company Address" section
    #And Verify "Address Line 1" input field status under "Factoring Company Address" section
    #And Verify "City" input field status under "Factoring Company Address" section
    #And Verify "Zip Code" input field status under "Factoring Company Address" section
    #And Verify "PO Box" input field status under "Factoring Company Address" section
    #And Verify "PO Box Zip Code" input field status under "Factoring Company Address" section
    ####Error Validations
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Verify no error message is displayed under "Country/Region" field under "Bank Account Information" section
    Then Show error message "Required" under "Bank Branch Name" field under "Bank Address" section
    Then Show error message "Required" under "Address Line 1" field under "Bank Address" section
    Then Show error message "Required" under "City" field under "Bank Address" section
    Then Show error message "Required" under "Zip Code" field Value under "Bank Address" section
    Then Verify no error message is displayed under "PO Box" field under "Bank Address" section
    ########################## Factoring Company Contact ##########################
    #### Labels
    And Verify "Factoring Company Contact Name" label under "Factoring Company Contact" section
    And Verify "Factoring Company Contact Number" label under "Factoring Company Contact" section
    And Verify "Factoring Company Email Address" label under "Factoring Company Contact" section
    ####Input fields visiility
    And Verify "Factoring Company Contact Name" input field visibility under "Factoring Company Contact" section
    And Verify "Factoring Company Email Address" input field visibility under "Factoring Company Contact" section
    #### Input Fields status
    #And Verify "Factoring Company Contact Name" input field status under "Factoring Company Contact" section
    #And Verify "Factoring Company Email Address" input field status under "Factoring Company Info" section
    #### Tooltips
    And Verify "Factoring Company Contact Name" tooltip "The full name of your contact at the factoring company." in add bank account page
    And Verify "Factoring Company Contact Number" tooltip "The phone number of your contact at the factoring company." in add bank account page
    And Verify "Factoring Company Email Address" tooltip "The email address of your contact at the factoring company" in add bank account page
    ####Error Validations
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Verify no error message is displayed under "Factoring Company Contact Name" field under "Factoring Company Contact" section
    ########################## Ordering Information ##########################
    #### Labels
    And Verify "Payment Terms" label under "Ordering Information" section
    #And Verify "Purchase Order Email Address" label under "Ordering Information" section
    ####Input fields visiility
    And Verify "Payment Terms" input field visibility under "Ordering Information" section
    #And Verify "Purchase Order Email Address" input field visibility under "Ordering Information" section
    ####Input fields status
    #And Verify "Payment Terms" input field status under "Ordering Information" section
    #And Verify "Purchase Order Email Address" input field status under "Ordering Information" section
    #### Tooltips
    And Verify "Payment Terms" tooltip "Ex: Net 10, Net 30, PIA, EOM, etc..." in add bank account page
    #And Verify "Purchase Order Email Address" tooltip "The email address of an employee to whom the POs need to be sent." in add bank account page
    ####Error Validations
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Verify no error message is displayed under "Payment Terms" field under "Ordering Information" section
    #Then Verify no error message is displayed under "Purchase Order Email Address" field under "Ordering Information" section
    Then Wait for 3 seconds
    And Logout from the system
    #deleting icomplete data
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    #Then Click on back page arrow
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system

  @Smoke @Supplier @BankAccount @TYSFunctionality @SanityCheck
  Scenario: Add Company Account with valid data for Country "United States of America" for existing supplier
    #When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    Then Enter "netherland" email in Email Address field for Italy
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of US"
    Then Select "US Dollar" in "Currency" css dropdown
    Then Enter value for Account Holder Name "America"
    Then Enter input data in "Account Number" field
    Then Wait for 3 seconds
    Then Enter value for Bank Routing Number "23634795651"
    #Then Enter value for Bank Account Number "123434334"
    # And Enter value for Bank Key "54543643"
    # And Enter value for Bank Swift Code "FDGFDHQKIR"
    # And Enter value for IBAN "FF46363537458658383737"
    Then Wait for 3 seconds
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    #And Wait for 10 seconds
    Then Upload "PDF" under "Upload Document"
    And Wait for 1 seconds
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "America USA"
    Then Enter value for Address "1 COPLEY PKY"
    Then Enter value for City " MORRISVILLE"
    Then Select "Colorado" at "State" dropdown
    Then Enter "76735224234234" in "Zip Code" field after "Bank address" supplier registration
    #Then Enter value for Zip code "27560"
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    # Then Wait for 3 seconds
    Then Click "Save" button 6
    Then Wait for 13 seconds
    Then Click on save button in my account page
    Then Wait 8 seconds
#    #And Click on the save in Address verification
#   # When Click on Save Contact button on Supplier Contacts page
#    #Then Click on link this Account button
#    Then Wait 5 seconds
#    Then Click "Cancel" button 2
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    #Then Click "Cancel" button 3
    Then Logout from the system

  # Edit Bankaccount of a supplier
  @Smoke @Supplier @BankAccount @SanitySuiteCheck @SanityCheck
  Scenario: Edit Company Account with valid data for Country "United States of America" for existing supplier
    #When Enter EmailAdress in Email Address field "autonokiasup@maildrop.cc"
    When Enter Supplier Email in Email Address field
    ##Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    # Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of US"
    Then Select "US Dollar" in "Currency" css dropdown
    Then Enter value for Account Holder Name "America"
    Then Enter value for Bank Routing Number "23634795651"
    Then Enter value for Bank Account Number "123434334"
    # And Enter value for Bank Key "54543643"
    # And Enter value for Bank Swift Code "FDGFDHQKIR"
    # And Enter value for IBAN "FF46363537458658383737"
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "America USA"
    Then Enter value for Address "1 COPLEY PKY"
    Then Enter value for City " MORRISVILLE"
    Then Select "Colorado" at "State" dropdown
   # Then Enter value for Zip code "27560"
    Then Enter "76735224234234" in "Zip Code" field after "Bank address" supplier registration
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    # Then Wait for 3 seconds
    Then Click "Save" button 6
    And Click on the save in Address verification
    #Then Click on Not now button
    Then Wait for 3 seconds
    Then Select the Body the Bank Account
    When Click "Complete Bank Details" button
    And Wait for 5 seconds
    #Then Select "United States of America" in "Country/Region" dropdown
    Then Click on "Add Accounts Receivable Contact" button on leftmenu
    And Wait for 4 seconds
    And Select Accounts Receivable Contact from dropdown
    When Click "Save" button
    And Wait for 10 seconds
#    Then Enter value for Bank Name "Bank of INdia"
#    #Then Select "Moldovan Leu" in "Currency" css dropdown
#    #Then Select "US Dollar" in "Currency" css dropdown
#    Then Enter value for Account Holder Name "SBI"
#    Then Enter value for Bank Account Number "123434334"
#    #Then Enter value for Bank Routing Number "23634795651"
#    # And Enter value for Bank Key "54543643"
#    #  And Enter value for Bank Swift Code "FDGFDHQKIR"
#    # And Enter value for IBAN "FF46363537458658383737"
#    Then Select "Bank / Deposit slip or Voided cheque" in "Account Evidence" dropdown
#    # Then Click "Upload" button
#    #Then Upload "PDF" under "Upload Document"
#    #Then Click "Confirm" button
#    Then Enter value for Bank Branch Name "SBI"
#    Then Enter value for Address "Gandhinagar"
#    Then Enter value for City " Medak"
#    Then Wait for 3 seconds
#    Then Click on the Update Account button
#    #And Click on the save in Address verification
#    #Then Click on Not now button
#    Then Wait for 3 seconds
#    #Then Select the Body the Bank Account
#    # And Click on the Preferred Bank check box
#    #Then Wait 5 seconds
#    # Then Click on the Confirm in Preferred
#    #Then Wait 5 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    #Then Click "Cancel" button 3
    Then Logout from the system

  @Smoke @Supplier @BankAccount @QuickSanity
  Scenario: Add Factoring Company Account with valid data for Country "United States of America" for existing supplier
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on "Add a Bank Account" button
    Then Click on the "Factoring Company Account" radio button
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of US"
    Then Select "US Dollar" in "Currency" css dropdown
    Then Enter value for Account Holder Name "America"
    Then Enter value for Bank Routing Number "23634795651"
    Then Enter value for Bank Account Number "123434334"
    #Then Enter value for Bank Key "54543643"
    #Then Enter value for Bank Swift Code "FDGFDHQKIR"
    #Then Enter value for IBAN "FF46363537458658383737"
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "America USA"
    Then Enter value for Address "1 COPLEY PKY"
    Then Enter value for City " MORRISVILLE"
    Then Select "Colorado" in "State" dropdown
    #Then Enter value for Zip code "27560"
    Then Enter "76735224234234" in "Zip Code" field after "Bank address" supplier registration
    Then Enter value for Bank Contact Name "ramaleela"
    Then Enter value for Bank Contact Number "9886543210"
    #Then Enter "IT People Corp" in "Factoring Company Name" field under "Factoring Company Info" section
    Then Enter "IT People Corp" in "Factoring Company Name" field under "Factoring Company Info" section
    Then Enter "Street 1" in "Address Line 1" field under "Factoring Company Address" section
    Then Enter "Nice City" in "City" field under "Factoring Company Address" section
    Then Wait for 9 seconds
    Then Select state "Florida" in state dropdown in Factoring Company Account
    Then Enter "123456098" in "Zip Code" field under "Factoring Company Address" section
    Then Wait for 3 seconds
    Then Click "Save" button 6
    Then Wait for 15 seconds
    And Click on the save in Address verification for Factoring Company Account
    Then Click on Not now button
    Then Wait for 3 seconds
    Then Select the Body the Bank Account
    And Click on the Preferred Bank check box
    Then Wait for 5 seconds
    Then Click on the Confirm in Preferred
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    #Then Click "Cancel" button 3
    And Logout from the system

  @Smoke @Supplier @BankAccount @QuickSanity
  Scenario: Checking the Bank Account visibility on Buyer End
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of US"
    Then Select "US Dollar" in "Currency" css dropdown
    Then Enter value for Account Holder Name "rama"
    Then Enter value for Bank Routing Number "23634795651"
    Then Enter value for Bank Account Number "123434334"
    #And Enter value for Bank Key "54543643"
    #And Enter value for Bank Swift Code "FDGFDHQKIR"
    #And Enter value for IBAN "FF46363537458658383737"
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "America USA"
    Then Enter value for Address "1 COPLEY PKY"
    Then Enter value for City " MORRISVILLE"
    Then Select "Colorado" in "State" dropdown
    #Then Enter value for Zip code "27560"
    Then Enter "76735224234234" in "Zip Code" field after "Bank address" supplier registration
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    #Then Wait for 3 seconds
    Then Click "Save" button 6
    Then Wait for 3 seconds
   # And Click on the save in Address verification
    Then Click on Not now button
    Then Wait for 3 seconds
    #Then Click on buyer link
    Then Click on link this Account button
    #Then Select the Body the Bank Account
    #And Click on the Preferred Bank check box
    # Then Wait 5 seconds
    # Then Click on the Confirm in Preferred
    Then Wait 5 seconds
    Then Logout from the system
    #Then Enter data in Email Address field
    Then Enter nokia buyer in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Connected Suppliers" tab
    Then Click on first record1 of the Search
    And Scroll Down the page record of the Search
    And Scroll Down the opened popup and close
    #And Verify the Account number enetered is same
    And Logout from the system
    #deleting incomplete data
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on unlink account
    Then Wait for 3 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system
