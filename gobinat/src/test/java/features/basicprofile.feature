Feature: Basic Profile functionality

  #Basicprofile
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @Basicprofile @SupplierProfile @Supplier
  Scenario: Verify the Basic Information tooltip details of Supplier
    Then Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Basic Information" tab
    #Then Scroll Down the page
    #TOOLTIPS
    #Company Details
    Then Show "Business Name" tooltip is "Name under which the company carries on its business. Also known as DBA, Doing Business As."
    Then Show "Legal Business Name" tooltip is "Legal Name must be the full legal name of your company as it appears on your Government registration documents."
    #Then Show "Native Language Business Name" tooltip is "Name under which the company carries on its business in the company's native language. Also known as DBA, Doing Business As. This is an optional field."
    #Then Show "Native Language Legal Name" tooltip is "Legal Name in the company's native langauge. It must be the full legal name of your company as it appears on your Government registration documents. This is an optional field."
    Then Show "Date Established" tooltip is "The exact date of establishment of your Company as it appears on your Company's commercial registration certificate. It must be in MM/DD/YYYY format and mandatory."
    Then Show "Tax Country/Region" tooltip is "The country/region your company pays tax to. This was set during registration."
    Then Show "Description" tooltip is "A brief description of your Company."
    Then Scroll Down the page
    Then Show "Employer Identification Number (EIN)" tooltip as "The Employer Identification Number (EIN) is a unique identification number issued by the government to conduct business within your country. The expected format is XX-XXXXXXX (Only numbers)" on EIN Field
    Then Show "Tax Registration Document" tooltip as "Attach your company's tax registration document (W9) in the below mentioned formats" on Tax registration field
    Then Show "Business Type" tooltip as "The appropriate business type of your company." on Business Type Field
    Then Show "D-U-N-S Number" tooltip as "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank." on DUNS Number Field
    Then Scroll Down the page
    Then Click on Yes for Diversity section
    Then Select "Category" on Diversity Category field
    Then Show "Diversity Category" tooltip "Indicate the diversity category you belong to. For more information on the categories," on Diversity Category
    #Then Select "Sub-Category" on Diversity Sub-Category field
    Then Show "Diversity Sub-Category" tooltip "Indicate the Minority sub category you belong to. For more information on the categories," on Diversity Sub Category
    Then Click on No for Diversity section
    Then Click on Yes for Small Business and Disadvantaged Zone Business
    Then Click on No for Small Business and Disadvantaged Zone Business
    Then Click on Yes for Small Business and Disadvantaged Zone Business
    Then Select "Category" on Small Business Category
    #Then Select "Sub Category" on Small Business SubCategory
    Then Show "Category" tooltip "Indicate the diversity category you belong to. For more information on the categories," on Small Business category
    #Then Show "Sub-Category" tooltip "Indicate the Minority sub category you belong to. For more information on the categories," on Small Business Sub Category
    Then Click on No for Small Business and Disadvantaged Zone Business
    Then Click on Yes
    Then Click on No
    Then Click on Yes
    Then Select "Category" on Category for Underutilized Zone
    #Then Show "Company designated category" tooltip "Indicate the diversity category you belong to. For more information on the categories," on DisadvantageZone category
    Then Click on No
    Then Scroll Down the page
    Then Enter Phone Number on Phone Number field
    Then Show "Phone Number" tooltip is "The official corporate level contact number or a toll-free general information number of your company."
    Then Show "Fax Number" tooltip is "The official corporate level fax number of your company."
    Then Show "Company Email" tooltip is "The official email address of the point of contact from your Company."
    Then Show "Website" tooltip is "Please enter the URL of your company’s website." on Website
    Then Scroll Down the page
    Then Click on Yes for Additional Information
    Then Show "Stock Exchange" tooltip is "The Stock Exchange where your Company is listed. This is a required field."
    Then Show "Stock Exchange Symbol" tooltip is "The stock symbol of your company, as it appears on your Company's commercial registration certificate."
    Then Show "Number of Full-Time Employees" tooltip is "The exact number of full-time employees of your Company. Full time employees are esentially those who are under your Company's pay roll and receives the benefits of the Company."
    Then Show "Number of Temporary and Contracted Employees" tooltip is "Number of part time or contracted employees of your company."
    Then Show "UNSPSC" tooltip is "The UNSPSC (United Nations Standard Products and Services Code) is a global classification code set of products and services.  It is a four level hierarchy coded as an 8 digit number.  Please add the UNSPSC codes relevant to your business (minimum 1 code)"
    Then Show "NAICS" tooltip is "The NAICS (North American Industry Classification System) code is used by business and governments to classify and measure economic activity in the United States, Canada and Mexico. It is essentially a 6-digit code, where the first two digits designate the largest business sector, the third digit designates the sub-sector, the fourth digit designate the industry group, fifth digit designates particular industries and the last digit designates national industries. Please click on the text box to select the correct NAICS code from the below category. The system allows you to select multiple NAICS codes."
    Then Logout from the system

  #ENTER DATA
  @Regression @Basicprofile @SupplierProfile @Supplier
  Scenario: Verify the Basic Information data enter details of Supplier
    Then Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Basic Information" tab
    #Comapany Details
    Then Enter data on Business Name field
    Then Enter data on Legal Business Name field
    Then Select "Date" on Date Established
    Then Select "Fisical Year" on Starting month of the fiscal year field
    Then Enter data in Description
    Then Scroll Down the page
    #Tax Details
    Then Enter EIN Number on EIN field
    Then Select "Business Type" on Business Type field
    Then Enter DUNS Number
    #Diversity
    Then Click on Yes for Diversity section
    Then Select "Category" on Diversity Category field
    Then Select "Sub-Category" on Diversity Sub-Category field
    Then Click on No for Diversity section
    #Small business and disadvantage zone business
    #Then Scroll Down the page
    Then Click on Yes for Small Business and Disadvantaged Zone Business
    Then Click on No for Small Business and Disadvantaged Zone Business
    Then Click on Yes for Small Business and Disadvantaged Zone Business
    Then Select "Category" on Small Business Category
    Then Select "Sub Category" on Small Business SubCategory
    Then Click on No for Small Business and Disadvantaged Zone Business
    Then Click on Yes
    Then Click on No
    Then Click on Yes
    Then Select "Category" on Category for Underutilized Zone
    Then Click on No
    #Corporate Contact Details
    Then Enter Phone Number on Phone Number field
    Then Enter Fax Number on Fax Number field
    Then Enter Company Email on Company Email
    Then Enter Website on Website field
    #Additional Information
    #Then Scroll Down the page
    Then Click on Yes for Additional Information
    Then Select "Amman Financial Market" from "Search and Select a Stock Exchange..." on Additional Information
    Then Enter data on Stock Exchange Symbol
    Then Enter No of Full time employees
    Then Enter No of Temparary employees
    Then Select "11111 - Soybean Farming T" from "Select..." on NAICS
    #Save the Basic Information
    Then Save Draft button enable on Basic info page
    Then Click on Save and continue button
    Then Logout from the system

  #BUYER BASIC INFORMATION PAGE
  @Regression @Basicprofile @BuyerProfile @Buyer
  Scenario: Verify the Basic information tooltip details on Buyer
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    #TOOLTIPS
    Then Show "Business Name" tooltip is "Name under which the company carries on its business. Also known as DBA, Doing Business As."
    Then Show "Legal Business Name" tooltip is "Legal Name must be the full legal name of your company as it appears on your Government registration documents."
    #Then Show "Native Language Business Name" tooltip as "Name under which the company carries on its business in the company's native language. Also known as DBA, Doing Business As. This is an optional field."
    #Then Show "Native Language Legal Name" tooltip as "Legal Name in the company's native langauge. It must be the full legal name of your company as it appears on your Government registration documents. This is an optional field."
    Then Show "Date Established" tooltip is "The exact date of establishment of your Company as it appears on your Company's commercial registration certificate. It must be in MM/DD/YYYY format and mandatory."
    Then Show "Tax Country/Region" tooltip is "The country/region your company pays tax to. This was set during registration."
    Then Show "Description" tooltip is "A brief description of your Company."
    Then Scroll Down the page
    Then Show "Employer Identification Number (EIN)" tooltip as "The Employer Identification Number (EIN) is a unique identification number issued by the government to conduct business within your country. The expected format is XX-XXXXXXX (Only numbers)" on EIN Field
    Then Show "Tax Registration Document" tooltip as "Attach your company's tax registration document (W9) in the below mentioned formats" on Tax registration field
    Then Show "Business Type" tooltip as "The appropriate business type of your company." on Business Type Field
    Then Show "D-U-N-S Number" tooltip as "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank." on DUNS Number Field
    Then Scroll Down the page
    Then Show "Phone Number" tooltip is "The official corporate level contact number or a toll-free general information number of your company."
    Then Show "Fax Number" tooltip is "The official corporate level fax number of your company."
    Then Show "Company Email" tooltip is "The official email address of the point of contact from your Company."
    Then Show "Website" tooltip is "Please enter the URL of your company’s website." on Website
    #Then Scroll Down the page
    #Then Show "Stock Exchange" tooltip as "The Stock Exchange where your Company is listed. This is a required field."
    #Then Show "Stock Exchange Symbol" tooltip as "The stock symbol of your company, as it appears on your Company's commercial registration certificate."
    Then Show "Number of Full-Time Employees" tooltip is "The exact number of full-time employees of your Company. Full time employees are esentially those who are under your Company's pay roll and receives the benefits of the Company."
    Then Show "Number of Temporary and Contracted Employees" tooltip is "Number of part time or contracted employees of your company."
    Then Show "UNSPSC" tooltip is "The UNSPSC (United Nations Standard Products and Services Code) is a global classification code set of products and services.  It is a four level hierarchy coded as an 8 digit number.  Please add the UNSPSC codes relevant to your business (minimum 1 code)"
    Then Show "NAICS" tooltip is "The NAICS (North American Industry Classification System) code is used by business and governments to classify and measure economic activity in the United States, Canada and Mexico. It is essentially a 6-digit code, where the first two digits designate the largest business sector, the third digit designates the sub-sector, the fourth digit designate the industry group, fifth digit designates particular industries and the last digit designates national industries. Please click on the text box to select the correct NAICS code from the below category. The system allows you to select multiple NAICS codes."
    Then Logout from the system

  @Regression @Basicprofile @BuyerProfile @Buyer
  Scenario: Verify the Basic info enter data details on Buyer
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    #Company Details
    Then Enter data on Business Name field
    Then Enter data on Legal Business Name field
    Then Select "Date" on Date Established field
    Then Select "Fisical Year" on Starting month of the fiscal year field
    Then Enter data in Description
    #Then Scroll Down the page
    #Tax Details
    Then Enter EIN Number on EIN field
    Then Select "Business Type" on Business Type field
    Then Enter DUNS Number
    #Corporate Contact Details
    Then Enter Phone Number on Phone Number field
    Then Enter Fax Number on Fax Number field
    Then Enter Company Email on Company Email
    Then Enter Website on Website field
    #Additional Information
    Then Enter No of Full time employees
    Then Enter No of Temparary employees
    Then Select "11111 - Soybean Farming T" from "Select..." on NAICS
    Then Click on Save and continue button
    Then Logout from the system

  @Regression @Basicprofile @SupplierProfile @Supplier
  Scenario: Verify the Corporate contact details of Supplier
    Then Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Basic Information" tab
    Then Scroll Down the page
    # Tooltips
    Then Show "Phone Number" tooltip " The official corporate level contact number or a toll-free general information number of your company. "
    Then Show "Fax Number" tooltip " The official corporate level fax number of your company. "
    Then Show "Company Email" tooltip " The official email address of the point of contact from your Company. "
    Then Show "Website" tooltip "Please enter the URL of your company’s website." in Assign a Contact modal
    ###Flag
    Then Verify "USA" flag in "Phone Number" field "us"
    Then Verify "USA" flag in "Fax Number" field "us"
    ###Phone Number format
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+1 (987) 654-3210"
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+1 (987) 654-3210"
    ### Social Icon
    Then Show Social "twitter" Icon
    Then Show Social "facebook" Icon
    Then Show Social "linkedin" Icon
    Then Show Social "youtube" Icon
    Then Logout from the system

  @Regression @Basicprofile @SupplierProfile @Supplier
  Scenario: Verify the validations of Corporate contact details of Supplier
    Then Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Basic Information" tab
    Then Scroll Down the page
    # Validation of phone number
    Then Enter phone number "98" in "Phone Number" field
    Then Press Enter key on keyboard 1
    Then Verify phone number "Phone Number" is entered in accepted format "+1 (98"
    Then Show error message "Must be a full phone number" under "Phone Number" field
    Then Enter phone number "98" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+1 (98"
    Then Show error message "Must be a full fax number" under "Fax Number" field
    ## Social Icon
    ## Twitter
    Then Click Social "twitter" Icon
    Then Show "Add Link" Title
    Then verify "twitter" visibility "true"
    Then Click on close button on modal
    # save
    Then Click Social "twitter" Icon
    Then Enter "twitter.com" in "twitter" field
    Then Click on save button on modal
    # verify saved
    Then Click Social "twitter" Icon
    Then Verify data entered in "twitter" field is "twitter.com"
    Then Click on close button on modal
    ## Facebok
    Then Click Social "facebook" Icon
    Then Show "Add Link" Title
    Then verify "facebook" visibility "true"
    Then Click on close button on modal
    # save
    Then Click Social "facebook" Icon
    Then Enter "facebook.com" in "facebook" field
    Then Click on save button on modal
    # verify save
    Then Click Social "facebook" Icon
    Then Verify data entered in "facebook" field is "facebook.com"
    Then Click on close button on modal
    ## Linkedin
    Then Click Social "linkedin" Icon
    Then Show "Add Link" Title
    Then verify "linkedin" visibility "true"
    Then Click on close button on modal
    # save
    Then Click Social "linkedin" Icon
    Then Enter "linkedin.com" in "linkedin" field
    Then Click on save button on modal
    # verify saved
    Then Click Social "linkedin" Icon
    Then Verify data entered in "linkedin" field is "linkedin.com"
    Then Click on close button on modal
    ## youtube
    Then Click Social "youtube" Icon
    Then Show "Add Link" Title
    Then verify "youtube" visibility "true"
    Then Click on close button on modal
    # save
    Then Click Social "youtube" Icon
    Then Enter "youtube.com" in "youtube" field
    Then Click on save button on modal
    # verify saved
    Then Click Social "youtube" Icon
    Then Verify data entered in "youtube" field is "youtube.com"
    Then Click on close button on modal
    Then Logout from the system

  @Smoke @Basicprofile @BuyerProfile @Buyer @additionalinformaton @CDCI @Sanity
  Scenario: Verify the validations of Additional Information in Basic Info For supplier
    Then Enter supplier email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait 5 seconds
    Then Click "Basic Information" tab
    Then Wait 3 seconds
    Then Scroll Down the page
    Then Wait 3 seconds
    Then Enter the value "ABC" at Number of Full Time Employees on the Basic information page
    Then Enter the value "abc" at Number of Full Time Employees on the Basic information page
    Then Enter the value "$%#*" at Number of Full Time Employees on the Basic information page
    Then Enter the value "   " at Number of Full Time Employees on the Basic information page
    Then Enter the value "347" at Number of Full Time Employees on the Basic information page
    Then Enter the value "ABC" at Number of Temporary and Contracted Employees on the Basic information page
    Then Enter the value "abc" at Number of Temporary and Contracted Employees on the Basic information page
    Then Enter the value "$%#*" at Number of Temporary and Contracted Employees on the Basic information page
    Then Enter the value "   " at Number of Temporary and Contracted Employees on the Basic information page
    Then Wait 3 seconds
    Then Enter the value "512" at Number of Temporary and Contracted Employees on the Basic information page
    Then Verify data entered in "Number of Temporary and Contracted Employees" field is "512"
    Then Wait 3 seconds
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @Basicprofile @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: As a Supplier, I Should be able to accept comma in Business and Legal Name
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Dr.Reddys,CALabs" Supplier Company name on Invite Supplier window
    And Click on the enter
    Then Verify the "Ignore and Proceed" button is "enabled"
    Then Wait 3 seconds
    And Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter "Argentina" Supplier Contact email address on Invite Supplier modal
    Then Enter "Argentina" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Wait 3 seconds
    Then Click on the Skip
    Then Wait 3 seconds
    Then Click on the Skip
    Then Wait 3 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on the Send Invite button on Invite Supplier window
    Then Wait 5 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @Basicprofile @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: As a Supplier, I Should be able to accept dot in Business and Legal Name
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Jhonny.Co.ltd" Supplier Company name on Invite Supplier window
    And Click on the enter
    Then Verify the "Ignore and Proceed" button is "enabled"
    Then Wait 3 seconds
    And Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter "Argentina" Supplier Contact email address on Invite Supplier modal
    Then Enter "Argentina" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Wait 3 seconds
    Then Click on the Skip
    Then Wait 3 seconds
    Then Click on the Skip
    Then Wait 3 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on the Send Invite button on Invite Supplier window
    Then Wait 5 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @Basicprofile @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: As a Supplier, I Should be able to accept and symbol in Business and Legal Name
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Jhonson&Jhonson" Supplier Company name on Invite Supplier window
    And Click on the enter
    Then Verify the "Ignore and Proceed" button is "enabled"
    Then Wait 3 seconds
    And Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter "Argentina" Supplier Contact email address on Invite Supplier modal
    Then Enter "Argentina" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Wait 3 seconds
    Then Click on the Skip
    Then Wait 3 seconds
    Then Click on the Skip
    Then Wait 3 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on the Send Invite button on Invite Supplier window
    Then Wait 5 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @Basicprofile @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: As a Supplier, I Should be able to accept - symbol in Business and Legal Name
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Dolly-Fashions" Supplier Company name on Invite Supplier window
    And Click on the enter
    Then Verify the "Ignore and Proceed" button is "enabled"
    Then Wait 3 seconds
    And Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter "Argentina" Supplier Contact email address on Invite Supplier modal
    Then Enter "Argentina" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Wait 3 seconds
    Then Click on the Skip
    Then Wait 3 seconds
    Then Click on the Skip
    Then Wait 3 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on the Send Invite button on Invite Supplier window
    Then Wait 5 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @Basicprofile @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: As a Supplier, I Should be able to accept single quote in Business and Legal Name
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Aparie'sGolf" Supplier Company name on Invite Supplier window
    And Click on the enter
    Then Verify the "Ignore and Proceed" button is "enabled"
    Then Wait 3 seconds
    And Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter "Argentina" Supplier Contact email address on Invite Supplier modal
    Then Enter "Argentina" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Wait 3 seconds
    Then Click on the Skip
    Then Wait 3 seconds
    Then Click on the Skip
    Then Wait 3 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on the Send Invite button on Invite Supplier window
    Then Wait 5 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @Basicprofile @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: As a Supplier, I Should be able to accept braces in Business and Legal Name
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Pilsbery(industries,limited)" Supplier Company name on Invite Supplier window
    And Click on the enter
    Then Verify the "Ignore and Proceed" button is "enabled"
    Then Wait 3 seconds
    And Click on the IgnoreAndProceed button
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter "Argentina" Supplier Contact email address on Invite Supplier modal
    Then Enter "Argentina" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Wait 3 seconds
    Then Click on the Skip
    Then Wait 3 seconds
    Then Click on the Skip
    Then Wait 3 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on the Send Invite button on Invite Supplier window
    Then Wait 5 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Switch to the parent window
    Then Logout from the system

  @Regression @Basicprofile @BuyerProfile @Buyer
  Scenario: Validate the supplier name with invalid Symbols
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    # Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "$$>>" Supplier Company name on Invite Supplier window
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter "Argentina" Supplier Contact email address on Invite Supplier modal
    Then Enter "Argentina" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Show error message "Valid characters are A-Z a-z 0-9 À-Ö Ø-ö ø-ÿ . & - ' ( ) + and a single character space." under "Supplier Company Name" field
    Then Click "Close" button
    Then Logout from the system
