Feature: Questionnaire

  Background: Launch TYS Application
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window

  @Regression @Questionnaires @PublishQuestionnaire
  Scenario: Verify assigning questionnaire
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "Auto" Supplier Company name on Invite Supplier window
    Then Enter "Auto" Supplier Contact email address on Invite Supplier modal
    Then Enter "Auto" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    #Assign Questionnaire Group
    Then Click "Yes" radio button
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "AutoQues" group from the Questinnaire Group drop down
    Then Click on "Next" button
    Then Click on "Next" button
    Then Click on Send Invite button on Invite Supplier Confirmation window
    #Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Auto" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "Auto" supplier Email
    #Then Switch to "new TYS" tab
    Then Switch to the active window
    # Registration
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    ###Then Click "Continue" button
    Then Wait for 15 seconds
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter "123456789" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Click "Invite" button
    Then Wait for 5 seconds
    # Then Enter "Dir" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Enter phone number "98765432" in "Phone Number" field
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    # Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "1/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button 1
    Then Enter "12" followed by "-" and 7 numbers in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
  Then Wait for 10 seconds
  Then Switch to the parent window
  Then Click on the next step button
  Then Click on "Next Step" button
  Then Click on "Add a New Contact" button
  Then Enter "Dir" in "First Name" field
  Then Enter "sales" in "Last Name" field
  Then Enter "DOS" in "Job Title" field
  Then Enter phone number "9876543210" in "Primary Phone" field
  Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
  Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
  Then Click "Save Contact" button   
  Then Wait for 3 seconds 
  Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    #############
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ##############
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on Questionnaires Nav link
    ##Verify visibility & Status of Assigned Questionnaires
    Then Verify visibility of Assigned Questionnaires title in questionnaire page
    Then Verify "Pending" tab visibility
    Then Verify "Pending" tab status
    Then Verify "Published" tab visibility
    Then Verify "Published" tab status
    ###Verify name visibility
    Then Verify "Anti-Bribery, Anti-Corruption" name visibility
    Then Verify "Company Operations" name visibility
    Then Verify "Conflict Minerals" name visibility
    Then Verify "Conflict Minerals - IBM" name visibility
    Then Verify "Diversity - United States of America" name visibility
    Then Verify "Environment and Safety - IBM" name visibility
    Then Verify "Ethics and Compliance" name visibility
    Then Verify "GDPR - General Data Protection Regulation" name visibility
    Then Verify "Government Relations" name visibility
    Then Verify "Government Relations - IBM" name visibility
    Then Verify "Import Export Compliance" name visibility
    Then Verify "Import Export Compliance - IBM" name visibility
    Then Verify "Information Security" name visibility
    Then Verify "Intellectual Property" name visibility
    Then Verify "Liability Insurance" name visibility
    Then Verify "PIF Integrity Training- IBM" name visibility
    Then Verify "Quality Management" name visibility
    Then Verify "IBM Relations" name visibility
    Then Verify "Social and Environmental Management - IBM" name visibility
    Then Verify "Sustainability (Social, Environmental, Health & Safety)" name visibility
    Then Verify "Trade Compliance" name visibility
    ##Verify count
    Then Verify count of questionnaires is 21
    ## Verify Begin Questionnaire visibility & status
    Then Verify Begin Questionnaire button visibility for "Anti-Bribery, Anti-Corruption"
    Then Verify Begin Questionnaire button status for "Anti-Bribery, Anti-Corruption"
    Then Verify Begin Questionnaire button visibility for "Company Operations"
    Then Verify Begin Questionnaire button status for "Company Operations"
    Then Verify Begin Questionnaire button visibility for "Conflict Minerals"
    Then Verify Begin Questionnaire button status for "Conflict Minerals"
    Then Verify Begin Questionnaire button visibility for "Conflict Minerals - IBM"
    Then Verify Begin Questionnaire button status for "Conflict Minerals - IBM"
    Then Verify Begin Questionnaire button visibility for "Diversity - United States of America"
    Then Verify Begin Questionnaire button status for "Diversity - United States of America"
    Then Verify Begin Questionnaire button visibility for "Environment and Safety - IBM"
    Then Verify Begin Questionnaire button status for "Environment and Safety - IBM"
    Then Verify Begin Questionnaire button visibility for "Ethics and Compliance"
    Then Verify Begin Questionnaire button status for "Ethics and Compliance"
    Then Verify Begin Questionnaire button visibility for "GDPR - General Data Protection Regulation"
    Then Verify Begin Questionnaire button status for "GDPR - General Data Protection Regulation"
    Then Verify Begin Questionnaire button visibility for "Government Relations"
    Then Verify Begin Questionnaire button status for "Government Relations"
    Then Verify Begin Questionnaire button visibility for "Government Relations - IBM"
    Then Verify Begin Questionnaire button status for "Government Relations - IBM"
    Then Verify Begin Questionnaire button visibility for "Import Export Compliance"
    Then Verify Begin Questionnaire button status for "Import Export Compliance"
    Then Verify Begin Questionnaire button visibility for "Import Export Compliance - IBM"
    Then Verify Begin Questionnaire button status for "Import Export Compliance - IBM"
    Then Verify Begin Questionnaire button visibility for "Information Security"
    Then Verify Begin Questionnaire button status for "Information Security"
    Then Verify Begin Questionnaire button visibility for "Intellectual Property"
    Then Verify Begin Questionnaire button status for "Intellectual Property"
    Then Verify Begin Questionnaire button visibility for "Liability Insurance"
    Then Verify Begin Questionnaire button status for "Liability Insurance"
    Then Verify Begin Questionnaire button visibility for "PIF Integrity Training- IBM"
    Then Verify Begin Questionnaire button status for "PIF Integrity Training- IBM"
    Then Verify Begin Questionnaire button visibility for "Quality Management"
    Then Verify Begin Questionnaire button status for "Quality Management"
    Then Verify Begin Questionnaire button visibility for "IBM Relations"
    Then Verify Begin Questionnaire button status for "IBM Relations"
    Then Verify Begin Questionnaire button visibility for "Social and Environmental Management - IBM"
    Then Verify Begin Questionnaire button status for "Social and Environmental Management - IBM"
    Then Verify Begin Questionnaire button visibility for "Sustainability (Social, Environmental, Health & Safety)"
    Then Verify Begin Questionnaire button status for "Sustainability (Social, Environmental, Health & Safety)"
    Then Verify Begin Questionnaire button visibility for "Trade Compliance"
    Then Verify Begin Questionnaire button status for "Trade Compliance"
    Then Click on Begin Questionnaire button for "Anti-Bribery, Anti-Corruption"
    ##Verify Buttons visibility-Anti
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ##Verify questions visibility-Anti
    Then Verify visibility of question 1 is "Does your company have an anti-bribery/anti-corruption policy and procedures?"
    Then Verify visibility of question 2 is "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?"
    Then Verify visibility of question 3 is "Does your company review your suppliers for bribery risks prior to selection?"
    Then Verify visibility of question 4 is "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Verify visibility of question 5 is "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?"
    Then Verify visibility of question 6 is "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?"
    Then Verify visibility of question 7 is "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?"
    ##answering questionnaires-Anti
    Then click on radio button for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" is "YES"
    Then click on radio button for question "Does your anti-bribery policy" is "YES"
    Then click on radio button for question "Does your company review" is "YES"
    Then click on radio button for question "Do you train your employees" is "YES"
    Then click on radio button for question "Does your business have a code" is "YES"
    Then click on radio button for question "World Bank or similar contracts?" is "YES"
    Then click on radio button for question "investigated or charged" is "YES"
    ##publish-Anti
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Company Operations"
    ##Verify Buttons visibility-Company
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ##Verify questions visibility-Company
    Then Verify visibility of question 1 is "List your major Customers?"
    Then Verify visibility of question 2 is "In what countries do you operate?  Please indicate countries from which products and services will be supplied to your Customers."
    Then Verify visibility of question 3 is "Are you legally registered and located in the country/all the countries from which you intend to supply products or services to your Customers?"
    Then click on radio button for question "Are you legally registered" is "YES"
    Then Verify visibility of question 4 is "Are your company’s bank account(s) located in the same country where the company is legally registered to do business?"
    Then click on radio button for question "Are your company’s bank account(s) located in the same country where the company is legally registered to do business?" is "YES"
    Then Verify visibility of question 5 is "Does your company have Research and Development facilities or offices?"
    Then click on radio button for question "Does your company have Research and Development facilities or offices?" is "NO"
    Then Enter answer for question 6 as "answer"
    ##answering questionnaires-Company
    Then Enter answer for question 1 as "answer"
    Then Select Country for Company Operations Second question
    Then click on radio button for question "Are you legally registered" is "NO"
    Then Enter answer for question 3 as "answer"
    Then click on radio button for question "Are your company’s bank account(s)" is "NO"
    Then click on radio button for question "is the bank account located off-shore?" is "YES"
    Then Enter answer for question 5 as "answer"
    Then click on radio button for question "Does your company have Research and Development facilities" is "NO"
    ##publish-Company
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Conflict Minerals"
    ###Verify Buttons visibility-Conflict Minerals
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ###Verify questions visibility-Conflict Minerals
    Then Verify visibility of note is "True"
    Then Verify visibility of question 1 is "Will your Company provide hardware materials, hardware parts, or hardware products?"
    Then click on radio button for question "Will your Company" is "YES"
    Then Verify visibility of question 2 is "Does your company provide materials that contain tin, tantalum, tungsten or gold (3TG)?"
    Then Verify visibility of question 3 is "Do you have a CMRT report or scorecard? "
    Then Verify visibility of question 4 is "Does your company provide materials that contain Cobalt?"
    Then Verify visibility of question 5 is "Do you have a CRT report or scorecard. "
    ###answering questionnaires-Conflict Minerals
    Then click on radio button for question "Does your company provide materials that contain tin, tantalum, tungsten or gold (3TG)?" is "YES"
    Then click on radio button for question "Do you have a CMRT report or scorecard?" is "YES"
    Then Click "Attach Document" button for "Do you have a CMRT report"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    Then click on radio button for question "Does your company provide materials that contain Cobalt?" is "NO"
    Then click on radio button for question "Do you have a CRT report or scorecard. " is "YES"
    Then Click "Attach Document" button for "Do you have a CRT report or scorecard. "
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    ###publish-Conflict Minerals
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Conflict Minerals - IBM"
    ###Verify Buttons visibility-ConflictMinerals-IBM
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ###Verify questions visibility-ConflictMinerals-IBM
    Then Verify visibility of question 1 is "Will your Company provide hardware materials, hardware parts, or hardware products?"
    Then click on radio button for question "Will your Company provide" is "YES"
    Then Verify visibility of question 2 is "IBM requires that your Company provide a Conflict Minerals Reporting Template (CMRT) twice a year attenuated to the products which you provide to IBM. Do you confirm that your company has the ability to create the product CMRT and will provide it twice a year? "
    Then click on radio button for question "IBM requires that your" is "NO"
    Then Verify visibility of subtext is "If NO – please provide"
    Then Verify visibility of question 3 is "conflict minerals are processed"
    Then click on radio button for question "conflict minerals are processed" is "NO"
    Then Verify visibility of subtext is "If NO – please submit details"
    Then Verify visibility of question 4 is "Does your company have a conflict minerals contact?"
    Then click on radio button for question "Does your company" is "YES"
    Then Verify visibility of subtext is "Provide conflict minerals contact information"
    Then Verify visibility of question 5 is "Are there any issues or concerns that your company may have regarding compliance to IBM Conflict Minerals Conflict Free requirement?"
    Then click on radio button for question "Are there any issues" is "YES"
    Then Verify visibility of subtext is "If Yes – please provide details"
    ###answering questionnaires-ConflictMinerals-IBM
    Then Enter answer for question 2 as "answer"
    Then Enter answer for question 3 as "answer"
    Then click on radio button for question "Does your company" is "NO"
    Then Enter answer for question 5 as "answer"
    ###publish-ConflictMinerals-IBM
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Diversity - United States of America"
    ###Verify Buttons visibility-Diversity - United States of America
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ###Verify questions visibility-Diversity - United States of America
    Then Verify visibility of Diversity note is "True"
    Then Verify visibility of question 1 is "Are you willing to disclose information"
    Then Verify visibility of subtext is "Diverse owned businesses"
    Then click on radio button for question "Are you willing to disclose information" is "YES"
    Then Verify visibility of question 2 is "MBE (Minority-Owned Business Enterprise)"
    Then Verify visibility of subtext is "Your company"
    Then click on radio button for question "MBE (Minority-Owned Business Enterprise" is "YES"
    Then Verify visibility of question 3 is "Constituency Category : Select"
    Then click on checkbox for question "Constituency Category : Select" is "1"
    Then Verify visibility of question 4 is "Do you have the certification: National Minority"
    Then click on radio button for question "Do you have the certification: National Minority" is "YES"
    Then Verify visibility of question 5 is "WBE (Women-Owned Business Enterprise)"
    Then Verify visibility of subtext is "Your company is at least 51% owned"
    Then click on radio button for question "WBE (Women-Owned Business Enterprise)" is "YES"
    Then Verify visibility of question 6 is "Do you have the certification: Women Business"
    Then click on radio button for question "Do you have the certification: Women Business" is "YES"
    Then Verify visibility of question 7 is "PWD (People with Disabilities)"
    Then Verify visibility of subtext is "Your company is at least 51% owned"
    Then click on radio button for question "PWD (People with Disabilities)" is "YES"
    Then Verify visibility of question 8 is "Do you have the certification: AbilityOne"
    Then click on radio button for question "Do you have the certification: AbilityOne" is "YES"
    Then Verify visibility of question 9 is "LGBT-Owned (Lesbian, Gay, Bisexual or Transgendered)"
    Then Verify visibility of subtext is "Your company is at least 51% owned"
    Then click on radio button for question "LGBT-Owned (Lesbian, Gay, Bisexual or Transgendered)" is "YES"
    Then Verify visibility of question 10 is "Do you have the certification: National Gay & Lesbian Chamber of Commerce (NGLCC)"
    Then click on radio button for question "Do you have the certification: National Gay & Lesbian Chamber of Commerce (NGLCC)" is "YES"
    Then Verify visibility of question 11 is "HUBZone (Historically Underutilized Business Zone)"
    Then Verify visibility of subtext is "Your company must be a small business"
    Then click on radio button for question "HUBZone (Historically Underutilized Business Zone)" is "YES"
    Then Verify visibility of question 12 is "Do you have the certification: Small Business Administration Historically Underutilized Business Zone (HUBZone)"
    Then click on radio button for question "Do you have the certification: Small Business Administration Historically Underutilized Business Zone (HUBZone)" is "YES"
    Then Verify visibility of question 13 is "HBCU (US Historically Black Colleges and Universities and Minority Institutions)"
    Then Verify visibility of subtext is "An historically black College"
    Then click on radio button for question "HBCU (US Historically Black Colleges and Universities and Minority Institutions)" is "YES"
    Then Verify visibility of question 14 is "Business Development Program"
    Then Verify visibility of subtext is "Your company is at least 51% owned"
    Then click on radio button for question "Business Development Program" is "YES"
    Then Verify visibility of question 15 is "Do you have the certification: Small Business Administration 8a Program"
    Then click on radio button for question "Do you have the certification: Small Business Administration 8a Program" is "YES"
    Then Verify visibility of question 16 is "Service-Disabled Veteran-Owned Small Business"
    Then Verify visibility of subtext is "Your company is at least 51% owned"
    Then click on radio button for question "Service-Disabled Veteran-Owned Small Business" is "YES"
    Then Verify visibility of question 17 is "Do you have the certification: Department of Veteran Affairs VetBiz"
    Then click on radio button for question "Do you have the certification: Department of Veteran Affairs VetBiz" is "YES"
    Then Verify visibility of question 18 is "American Indian-Owned Small Business"
    Then Verify visibility of subtext is "Your company is at least 51% owned"
    Then click on radio button for question "American Indian-Owned Small Business" is "YES"
    Then Verify visibility of question 19 is "Do you have the certification: Bureau of Indian Affairs"
    Then click on radio button for question "Do you have the certification: Bureau of Indian Affairs" is "YES"
    Then Verify visibility of question 20 is "Diverse Owned LLC"
    Then Verify visibility of subtext is "Public owned companies are defined"
    Then click on radio button for question "Diverse Owned LLC" is "YES"
    Then Verify visibility of question 21 is "Diverse Owned JV (Joint Venture)"
    Then Verify visibility of question 22 is "Diverse Owned SA (Strategic Alliance)"
    Then Verify visibility of question 23 is "Are you registered with another program in the Small Business Administration?"
    Then Verify visibility of subtext is "US Small Business Entrepreneur"
    Then click on radio button for question "Are you registered with another program in the Small Business Administration?" is "YES"
    Then Verify visibility of question 24 is "Select which Federal Program below:"
    Then click on checkbox for question "Select which Federal Program below:" is "2"
    Then Verify visibility of question 25 is "Do you have the certification: Self-Certification (Small Business Administration Profile/SAM)"
    Then click on radio button for question "Do you have the certification: Self-Certification (Small Business Administration Profile/SAM)" is "YES"
    Then Verify visibility of question 26 is "Do you have a certification from any Non-Government Agency (NGO)."
    Then Verify visibility of subtext is "OPTIONAL: Check Yes if Applicable"
    Then click on radio button for question "Do you have a certification from any Non-Government Agency (NGO)." is "YES"
    Then Verify visibility of question 27 is "Do you have any other certification from a Federal, State, or Local State Government?"
    Then Verify visibility of subtext is "OPTIONAL: Check Yes"
    ###answering questionnaires-Diversity - United States of America
    Then Scroll the page
    Then Click "Attach Document" button for "Do you have the certification: National Minority"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    Then Click "Attach Document" button for "Do you have the certification: Women Business"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    Then Click "Attach Document" button for "Do you have the certification: AbilityOne"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    Then Click "Attach Document" button for "Do you have the certification: National Gay & Lesbian Chamber of Commerce (NGLCC)"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    Then Click "Attach Document" button for "Do you have the certification: Small Business Administration Historically Underutilized Business Zone (HUBZone)"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    Then Click "Attach Document" button for "Do you have the certification: Small Business Administration 8a Program"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    Then Click "Attach Document" button for "Do you have the certification: Department of Veteran Affairs VetBiz"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    Then Click "Attach Document" button for "Do you have the certification: Bureau of Indian Affairs"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    Then Click "Attach Document" button for "Do you have the certification: Self-Certification (Small Business Administration Profile/SAM)"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    Then Click "Attach Document" button for "Do you have a certification from any Non-Government Agency (NGO)."
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    ###publish-Diversity - United States of America
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Environment and Safety - IBM"
    ###Verify Buttons visibility-Environment and Safety - IBM
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ###Verify questions visibility-Environment and Safety - IBM
    Then Verify visibility of question 1 is "Will your company be a supplier of hardware products"
    Then click on radio button for question "Will your company be a supplier of hardware products" is "YES"
    Then Verify visibility of question 2 is "Do you have the capacity to identify and comply with country"
    Then click on radio button for question "Do you have the capacity to identify and comply with country" is "YES"
    Then Verify visibility of question 3 is "Is your Company aware of applicable environmental requirements"
    Then click on radio button for question "Is your Company aware of applicable environmental requirements" is "YES"
    Then Verify visibility of question 4 is "Are there any issues or concerns that your Company"
    Then Verify visibility of subtext is "If Yes – please provide sufficient details for IBM to evaluate your response."
    Then click on radio button for question "Are there any issues or concerns that your Company" is "YES"
    Then Verify visibility of question 5 is "Does your company have a Technical environmental contact?"
    Then Verify visibility of subtext is "Provide Technical environmental contact information"
    Then click on radio button for question "Does your company have a Technical environmental contact?" is "YES"
    Then Verify visibility of question 6 is "For hardware products, do you assure compliance with country"
    Then click on radio button for question "For hardware products, do you assure compliance with country" is "YES"
    Then Verify visibility of question 7 is "In the event of a defective product"
    Then click on radio button for question "In the event of a defective product" is "YES"
    Then Verify visibility of question 8 is "In the event of a product failure"
    ###answering questionnaires-Environment and Safety - IBM
    Then Enter answer for question 4 as "answer"
    Then click on radio button for question "Does your company have a Technical environmental contact?" is "NO"
    Then click on radio button for question "In the event of a product failure" is "YES"
    ###publish-Environment and Safety - IBM
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Ethics and Compliance"
    ###Verify Buttons visibility-Ethics and Compliance
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ### Verify questions visibility-Ethics and Compliance
    Then Verify visibility of question 1 is "Within the past five (5) years:  Has your company or any related entity"
    Then click on radio button for question "Within the past five (5) years:  Has your company or any related entity" is "YES"
    Then Verify visibility of subtext is "If YES - please provide sufficient details to evaluate your response"
    Then Verify visibility of question 2 is "Have your company or any employee of your company, any related entities"
    Then click on radio button for question "Have your company or any employee of your company, any related entities" is "YES"
    Then Verify visibility of subtext is "If YES – please provide sufficient details to evaluate your response."
    Then Verify visibility of question 3 is "Does your company have a written code of conduct"
    Then click on radio button for question "Does your company have a written code of conduct" is "YES"
    Then Verify visibility of question 4 is "Please provide any documents or links to access code"
    Then Verify visibility of question 5 is "Does your company conduct ethics training of employees"
    ### #answering questionnaires-Ethics and Compliance
    Then Enter answer for question 1 as "answer"
    Then Enter answer for question 2 as "answer"
    Then click on radio button for question "Does your company have a written code of conduct" is "YES"
    Then click on radio button for question "Does your company conduct ethics training of employees" is "NO"
    Then Enter answer for question 4 as "answer"
    Then Scroll the page
    Then click on radio button for question "Does your company conduct ethics training of employees" is "YES"
    ### #publish-Ethics and Compliance
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    ####Jira- SLYN-20295
    #Then Click on Begin Questionnaire button for "GDPR - General Data Protection Regulation"
    #### Verify Buttons visibility-GDPR - General Data Protection Regulation
    #Then Check "Save" button visibility in pending questionaire "false"
    #Then Check "Close" button visibility in pending questionaire "true"
    #Then Check "Save & Close" button visibility in pending questionaire "false"
    #Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    #### Verify questions visibility-GDPR - General Data Protection Regulation
    #Then Verify visibility of question 1 is "Will your Company be collecting, using, processing, storing, and/or transmitting any Personal Data"
    #Then click on radio button for question "Will your Company be collecting, using, processing, storing, and/or transmitting any Personal Data" is "YES"
    #Then Verify visibility of question 2 is "Select all types of Personal Data that apply:"
    #Then Select "Personal Information (PI)" from multi select dropdown for Question 2
    #Then Verify visibility of question 3 is "If the type of personal data that you are processing is not listed above, please describe it in detail."
    #Then Enter answer for question 3 as "NA"
    #Then Verify visibility of question 4 is "Is your organisation compliant with all legal obligations stemming from the General Data Protection Regulation (GDPR)?"
    #Then click on radio button for question "Is your organisation compliant with all legal obligations stemming from the General Data Protection Regulation (GDPR)?" is "YES"
    #Then Verify visibility of question 5 is "How are you addressing GDPR (EU Data Privacy Requirements) into your processes and contracts?"
    #Then Verify visibility of question 6 is "Has your company appointed an expert data protection officer"
    #Then Click "No" for Question "6"
    #Then Verify visibility of question 7 is "Are you prepared to address data subjects rights"
    #Then Click "Yes" for Question "7"
    #Then Verify visibility of question 8 is "Is the collection of your customer’s personal data limited to what is necessary for the purpose of processing?"
    #Then Click "Yes" for Question "8"
    #Then Verify visibility of question 9 is "Does your team have systems, procedures and training to comply with individuals Right to Erasure?"
    #Then Click "Yes" for Question "9"
    #Then Verify visibility of question 10 is "Are your systems able to completely erase customer data?"
    #Then Click "Yes" for Question "10"
    #Then Verify visibility of question 11 is "Does your team have systems, procedures and training to comply with individuals Right to Rectification?"
    #Then Click "Yes" for Question "11"
    #Then Verify visibility of question 12 is "Are your staff trained to identify and balance the needs"
    #Then Click "Yes" for Question "12"
    #Then Verify visibility of question 13 is "Do your systems allow for one customer’s data to be isolated, extracted or removed from active processing upon their request?"
    #Then Click "Yes" for Question "13"
    #Then Verify visibility of question 14 is "Please confirm whether you maintain any IT security standards certifications"
    #Then Click "No" for Question "14"
    #Then Verify visibility of question 15 is "What controls do you have in place internally related to international data transfers?"
    #Then Verify visibility of question 16 is "Has a Data Protection Impact Assessment been completed"
    #Then Click "Yes" for Question "16"
    #Then Verify visibility of question 17 is "Have you a mechanism in place enabling data breach identification and reporting of occurrence?"
    #Then Click "Yes" for Question "17"
    #Then Verify visibility of question 18 is "Is any customer data transferred to, or accessible by contractors or vendor suppliers?"
    #Then Click "Yes" for Question "18"
    #Then Verify visibility of question 19 is "Have you reviewed your usage and contracts with third-party suppliers"
    #Then Click "Yes" for Question "19"
    #Then Verify visibility of question 20 is "Do you want to attach any available document on your GDPR policy?"
    #Then Click "Yes" for Question "20"
    #answering questionnaires-GDPR - General Data Protection Regulation
    #Then Enter answer for question 5 as "answer"
    #Then Enter answer for question 15 as "answer"
    #Then Click "Attach Document" button for "Do you want to attach any available document on your GDPR policy?"
    #Then Upload "PDF" under "Upload Document"
    #Then Click "Confirm" button
    #publish-GDPR - General Data Protection Regulation
    #Then click on Publish Questionnaire
    #Then Scroll Down the page
    #Then click on Publish Questionnaire Button
    #Then click on Publish Button
    #Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Government Relations"
    #Verify Buttons visibility-Government Relations
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ###Verify questions visibility-Government Relations
    Then Verify visibility of Government Relations note is "True"
    Then Verify visibility of question 1 is "Does a government entity own a controlling interest"
    Then click on radio button for question "Does a government entity own a controlling interest" is "YES"
    Then Verify visibility of subtext is "If YES – please provide sufficient details to evaluate your response"
    Then Verify visibility of question 2 is "Were any of your company’s owners"
    Then click on radio button for question "Were any of your company’s owners" is "YES"
    Then Verify visibility of subtext is "If YES – please provide sufficient details to evaluate your response"
    Then Verify visibility of question 3 is "Do any of your company’s owners, Board Members"
    Then click on radio button for question "Do any of your company’s owners, Board Members" is "YES"
    Then Verify visibility of subtext is "If YES – please provide sufficient details to evaluate your response"
    Then Verify visibility of question 4 is "Are any of the companies named under the Ownership"
    Then click on radio button for question "Are any of the companies named under the Ownership" is "YES"
    Then Verify visibility of subtext is "If YES – please provide sufficient details to evaluate your response"
    #answering questionnaires-Government Relations
    Then Enter answer for question 1 as "answer"
    Then Enter answer for question 2 as "answer"
    Then Enter answer for question 3 as "answer"
    Then Enter answer for question 4 as "answer"
    #publish-Government Relations
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Government Relations - IBM"
    ###Verify Buttons visibility-Government Relations - IBM
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ###Verify questions visibility-Government Relations - IBM
    Then Verify visibility of question 1 is "Will your Company be responsible for providing services to IBM"
    Then click on radio button for question "Will your Company be responsible for providing services to IBM" is "YES"
    Then Verify visibility of subtext is "Please explain"
    Then Verify visibility of question 2 is "Will your company be responsible representing IBM or IBM interests"
    Then click on radio button for question "Will your company be responsible representing IBM or IBM interests" is "YES"
    Then Verify visibility of subtext is "Please explain"
    Then Verify visibility of question 3 is "Please identify the person completing this questionnaire."
    #answering questionnaires-Government Relations - IBM
    Then Enter answer for question 1 as "answer"
    Then Enter answer for question 2 as "answer"
    Then click on Assign a Contact Button
    Then Switch to the active window
    Then click on dropdown
    Then Select the option "Dir sales - DOS" on the Assign a Contact modal
    Then click on Assign a Contact
    ### publish-Government Relations - IBM
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Import Export Compliance"
    ###Verify Buttons visibility-Import Export Compliance
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ### Verify questions visibility-Import Export Compliance
    Then Verify visibility of question 1 is "Are you able to provide export and import classifications"
    Then click on radio button for question "Are you able to provide export and import classifications" is "NO"
    Then Verify visibility of subtext is "If NO, please explain."
    Then Verify visibility of question 2 is "Do you know or have reason to believe that"
    Then click on radio button for question "Do you know or have reason to believe that" is "YES"
    Then Verify visibility of subtext is "If YES – please explain."
    Then Verify visibility of question 3 is "Do you know or have reason to believe that any citizens"
    Then click on radio button for question "Do you know or have reason to believe that any citizens" is "YES"
    Then Verify visibility of subtext is "If YES – please explain."
    ###answering questionnaires-Import Export Compliance
    Then Enter answer for question 1 as "answer"
    Then Enter answer for question 2 as "answer"
    Then Enter answer for question 3 as "answer"
    #publish-Import Export Compliance
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Import Export Compliance - IBM"
    ###Verify Buttons visibility-Import Export Compliance - IBM
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ###Verify questions visibility-Import Export Compliance - IBM
    Then Verify visibility of question 1 is "IBM requires its suppliers to comply with all legal and regulatory requirements"
    Then click on radio button "No - I cannot comply with global and country specific Supplier Shipping Instructions"
    Then Verify visibility of subtext is "If NO – please provide sufficient details for IBM to evaluate your response."
    ###answering questionnaires-Import Export Compliance - IBM
    Then Enter answer for question 1 as "answer"
    Then click on Publish Questionnaire
    Then click on Publish Button
    ###publish-Import Export Compliance - IBM
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Information Security"
    ### Verify Buttons visibility-Information Security
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ###Verify questions visibility-Information Security
    Then Verify visibility of Information Security note is "True"
    Then Verify visibility of question 1 is "Does your company have a documented Management System"
    Then Verify visibility of question 2 is "Are you certified to any security standards such as ISO 27001:2013?"
    Then Verify visibility of subtext is "ISO/IEC 27001:2013 specifies the requirements for establishing"
    Then click on radio button for question "Are you certified to any security standards such as ISO 27001:2013?" is "YES"
    Then Verify visibility of question 3 is "Please select the Certifying Body"
    #answering questionnaires-Information Security
    Then click on radio button for question "Does your company have a documented Management System" is "YES"
    Then click on radio button for question "Are you certified to any security standards such as ISO 27001:2013?" is "NO"
    #publish-Information Security
    Then click on Publish Questionnaire
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Intellectual Property"
    #Verify Buttons visibility-Intellectual Property
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ### Verify questions visibility-Intellectual Property
    Then Verify visibility of question 1 is "Does your company have an Intellectual property rights (IPR) policy?"
    Then Verify visibility of question 2 is "Does your IPR Policy have the following components?  Check all that apply."
    Then Verify visibility of question 3 is "Are all relevant personnel trained in the above IPR policy, related practices and risk management procedures?"
    Then Verify visibility of question 4 is "Are records of such training kept and archived for the relevant risk period?"
    ###answering questionnaires-Intellectual Property
    Then click on radio button for question "Does your company have an Intellectual property rights (IPR) policy?" is "YES"
    Then click on checkbox for question "Does your IPR Policy have the following components?  Check all that apply." is "1"
    Then click on radio button for question "Are all relevant personnel trained" is "YES"
    Then click on radio button for question "Are records of such training kept" is "YES"
    Then Scroll the page
    ###publish-Intellectual Property
    Then click on Publish Questionnaire
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    ####JIRA - SLYN - SLYN-20322
    #Then Click on Begin Questionnaire button for "Liability Insurance"
    ##Verify Buttons visibility-Liability Insurance
    #Then Check "Save" button visibility in pending questionaire "false"
    #Then Check "Close" button visibility in pending questionaire "true"
    #Then Check "Save & Close" button visibility in pending questionaire "false"
    #Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ####Verify questions visibility-Liability Insurance
    #Then Verify visibility of question 1 is "Do you carry liability insurance and are willing to disclose the current maximum liability amounts covered by your policy?"
    #Then click on radio button for question "Do you carry liability insurance and are willing to disclose the current maximum liability amounts covered by your policy?" is "YES"
    #Then Verify visibility of question 2 is "Select the currency in which you will declare your liability coverages"
    #Then Verify visibility of subtext is "Identify your current limits of liability"
    #Then Select "Albanian Lek (ALK)" for question 2
    #Then Verify visibility of question 3 is "Type of Insurance Coverage (Select all that apply)"
    #Then Verify visibility of subtext is "Select the  relevant Liability Insurance policy Type(s) applicable for your organization"
    #Then Select "General Liability" from search and select drop down
    #Then Verify visibility of question 4 is "General liability - please select coverage amount"
    #Then Verify visibility of subtext is "Identify your current limits of liability"
    #Then Select "≥ 1M and < 2M" for question 4
    #Then Verify visibility of question 5 is "Please state the General Liability provider"
    #Then Verify visibility of subtext is "Identify your current limits of liability"
    #Then Select "100k - 200k" for question 5
    #Then Enter answer for question 5 as "answer"
    #Then Scroll Down the page
    #Then Verify visibility of question 6 is "Please attach the Certificate of Insurance document for your organization"
    #Then Click "Attach Document" button
    #Then Click "Attach Document" button for "Please attach the Certificate of Insurance document for your organization"
    #Then Upload "PDF" under "Upload Document"
    #Then Enter Date of Expiry
    #Then Click "Confirm" button
    #Then Scroll Down the page
    #Then Verify visibility of question 7 is "Do you have any Insurance documents other than the documents covered as part of the Certificate of Insurance for your organization?"
    #Then click on radio button for question "Do you have any Insurance documents other than the documents covered as part of the Certificate of Insurance for your organization?" is "YES"
    #Then Verify visibility of subtext is "Please attach the document and select the expiration date."
    #Then Click "Attach Document" button for "Do you have any Insurance documents other than the documents covered as part of the Certificate of Insurance for your organization?"
    #Then Upload "PDF" under "Upload Document"
    #Then Enter Date of Expiry
    #Then Click "Confirm" button
    ####publish-Liability Insurance
    #Then click on Publish Questionnaire Button
    #Then click on Publish Button
    #Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "PIF Integrity Training- IBM"
    ###Verify Buttons visibility-PIF Integrity Training- IBM
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ####Verify Buttons visibility-PIF Integrity Training- IBM
    Then Verify visibility of PIF Integrity Training- IBM note is "True"
    Then Verify visibility of question 1 is "Please confirm that all employees meeting the criteria, have completed the training"
    Then click on radio button for question "Please confirm that all employees meeting the criteria, have completed the training" is "YES"
    Then Verify visibility of question 2 is "Please provide  the names of the employees"
    Then Verify visibility of subtext is "There are no contacts selected currently"
    Then click on radio button for question "Please confirm that all employees meeting the criteria, have completed the training" is "NO"
    Then Verify visibility of subtext is "If No – please provide the details why the employees have not completed the training"
    ### answering questionnaires-PIF Integrity Training- IBM
    Then Enter answer for question 1 as "answer"
    ###publish-PIF Integrity Training- IBM
    Then Scroll the page
    Then click on Publish Questionnaire
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Quality Management"
    ###Verify Buttons visibility-Quality Management
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ###Verify questions visibility-Quality Management
    Then Verify visibility of question 1 is "Do you maintain Quality certifications e.g. ISO 9000, ISO 9001, IATF 16949, GMP, HAACP, CMMI, SPICE, Other?"
    Then click on radio button for question "Do you maintain Quality certifications e.g. ISO 9000, ISO 9001, IATF 16949, GMP, HAACP, CMMI, SPICE, Other?" is "YES"
    Then Verify visibility of question 2 is "Do you maintain ISO 9000 certification?"
    Then Verify visibility of question 3 is "Do you maintain ISO 9001 certification?"
    Then Verify visibility of question 4 is "Do you maintain IATF 16949 certification?"
    Then Verify visibility of question 5 is "Do you maintain GMP certification?"
    Then Verify visibility of question 6 is "Do you maintain HAACP certification?"
    Then Verify visibility of question 7 is "Do you maintain CMMI certification?"
    Then Verify visibility of question 8 is "Do you maintain SPICE certification?"
    Then Verify visibility of question 9 is "If you have selected Other, please state the certification in the comment section"
    Then Verify visibility of question 10 is "Does the Return Material Authorization (RMA) rate, or field failure, or customer return rate meet your internal targets for each of the past 3 years?"
    Then click on radio button for question "Do you maintain Quality certifications e.g. ISO 9000, ISO 9001, IATF 16949, GMP, HAACP, CMMI, SPICE, Other?" is "NO"
    Then Verify visibility of question 2 is "Please provide the target date by when you would certify"
    Then Verify visibility of question 3 is "Does your company have Quality Management System"
    ###answering questionnaires-Quality Management
    Then Enter answer for question 2 as "answer"
    Then click on radio button for question "Does your company have Quality Management System" is "NO"
    Then click on radio button for question "Does the Return Material Authorization" is "NO"
    ###publish-Quality Management
    Then Scroll the page
    Then click on Publish Questionnaire
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "IBM Relations"
    ###Verify Buttons visibility-IBM Relations
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ###Verify questions visibility-IBM Relations
    Then Verify visibility of question 1 is "Are any of the persons listed under the Management section"
    Then click on radio button for question "Are any of the persons listed under the Management section" is "YES"
    Then Verify visibility of subtext is "If YES – please provide sufficient details for IBM"
    Then Verify visibility of question 2 is "Were any of the persons listed under the Management"
    Then click on radio button for question "Were any of the persons listed under the Management" is "YES"
    Then Verify visibility of subtext is "If YES – please provide sufficient details for IBM"
    Then Verify visibility of question 3 is "Do you currently expect to use any subcontractors in providing services or deliverables to IBM?"
    Then click on radio button for question "Do you currently expect to use any subcontractors" is "YES"
    Then Verify visibility of subtext is "If YES, please identify the subcontractors and describe the services or deliverables they will provide."
    ###answering questionnaires-IBM Relations
    Then Enter answer for question 1 as "answer"
    Then Enter answer for question 2 as "answer"
    Then Enter answer for question 3 as "answer"
    ###publish-IBM Relations
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Social and Environmental Management - IBM"
    ###Verify Buttons visibility-Social and Environmental Management - IBM
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ###Verify questions visibility-Social and Environmental Management - IBM
    Then Verify visibility of Social note is "True"
    Then Verify visibility of question 1 is "Do any of these four categories apply to your company?"
    Then Verify visibility of subtext is "For companies that cannot obtain"
    Then click on checkbox for question "Do any of these four categories apply to your company?" is "2"
    Then Verify visibility of question 2 is "Regarding the above 8 requirements, do you confirm that you understand"
    Then click on radio button for question "Regarding the above 8 requirements, do you confirm that you understand" is "NO"
    Then Verify visibility of question 3 is "Regarding the above 8 requirements, do you confirm that your company"
    Then click on radio button for question "Regarding the above 8 requirements, do you confirm that your company" is "YES"
    Then Verify visibility of question 4 is "Establish a corporate social responsibility"
    Then Verify visibility of subtext is "Please select Yes if you are able to meet"
    Then click on radio button for "Establish a corporate social responsibility" with text "No, I am unable to meet this requirement within 12 months."
    Then Verify visibility of subtext is "Please describe your plan to meet this requirement within 12 months"
    Then Verify visibility of question 5 is "Establish programs"
    Then Verify visibility of subtext is "Please select Yes if you are able to meet"
    Then click on radio button for "Establish programs" with text "No, I am unable to meet this requirement within 12 months."
    Then Verify visibility of subtext is "Please describe your plan to meet this requirement within 12 months"
    Then Verify visibility of question 6 is "Monitor/measure"
    Then Verify visibility of subtext is "Please select Yes if you are able to meet"
    Then click on radio button for "Monitor/measure" with text "No, I am unable to meet this requirement within 12 months."
    Then Verify visibility of subtext is "Please describe your plan to meet this requirement within 12 months"
    Then Verify visibility of question 7 is "Set voluntary environmental goals"
    Then Verify visibility of subtext is "Please select Yes if you are able to meet"
    Then click on radio button for "Set voluntary environmental goals" with text "No, I am unable to meet this requirement within 12 months."
    Then Verify visibility of subtext is "Please describe your plan to meet this requirement within 12 months"
    Then Verify visibility of question 8 is "Publicly disclose results associated"
    Then Verify visibility of subtext is "Please select Yes if you are able to meet"
    Then click on radio button for "Publicly disclose results associated" with text "No, I am unable to meet this requirement within 12 months."
    Then Verify visibility of subtext is "Please describe your plan to meet this requirement within 12 months"
    Then Verify visibility of question 9 is "Train employees who are responsible"
    Then Verify visibility of subtext is "Please select Yes if you are able to meet"
    Then click on radio button for "Train employees who are responsible" with text "No, I am unable to meet this requirement within 12 months."
    Then Verify visibility of subtext is "Please describe your plan to meet this requirement within 12 months"
    Then Verify visibility of question 10 is "As part of the"
    Then Verify visibility of subtext is "Please select Yes if you are able to meet"
    Then click on radio button for "As part of the" with text "No, I am unable to meet this requirement within 12 months."
    Then Verify visibility of subtext is "Please describe your plan to meet this requirement within 12 months"
    Then Verify visibility of question 11 is "Cascade the above set"
    Then Verify visibility of subtext is "Please select Yes if you are able to meet"
    Then click on radio button for "Cascade the above set" with text "No, I am unable to meet this requirement within 12 months."
    Then Verify visibility of subtext is "Please describe your plan to meet this requirement within 12 months"
    Then Verify visibility of question 12 is "Additional Environmental Comments"
    ###answering questionnaires-Social and Environmental Management - IBM
    Then Enter answer for question 4 as "answer"
    Then Enter answer for question 5 as "answer"
    Then Enter answer for question 6 as "answer"
    Then Enter answer for question 7 as "answer"
    Then Enter answer for question 8 as "answer"
    Then Enter answer for question 9 as "answer"
    Then Enter answer for question 10 as "answer"
    Then Enter answer for question 11 as "answer"
    Then Enter answer for question 12 as "answer"
    ###publish-Social and Environmental Management - IBM
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Sustainability (Social, Environmental, Health & Safety)"
    ###Verify Buttons visibility-Sustainability (Social, Environmental, Health & Safety)
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ####Verify questions visibility-Sustainability (Social, Environmental, Health & Safety)
    Then Verify visibility of question 1 is "Is your company a member of the Responsible Business Alliance?"
    Then click on radio button for question "Is your company a member of the Responsible Business Alliance?" is "YES"
    Then Verify visibility of question 2 is "Does your company participate in the United Nations Global Compact?"
    Then click on radio button for question "Does your company participate in the United Nations Global Compact?" is "YES"
    Then Verify visibility of subtext is "Please provide link "
    Then Enter answer for question 2 as "answer"
    Then Verify visibility of question 3 is "Is your company B Corp certified?"
    Then click on radio button for question "Is your company B Corp certified?" is "YES"
    Then Verify visibility of subtext is "Please provide link "
    Then Enter answer for question 3 as "answer"
    Then Verify visibility of question 4 is "Has your company been assessed by EcoVadis?"
    Then click on radio button for question "Has your company been assessed by EcoVadis?" is "YES"
    Then Verify visibility of subtext is "Please provide a link to your score card"
    Then Enter answer for question 4 as "answer"
    Then Verify visibility of question 5 is "Do you have another rating or certification related to Sustainability?"
    Then click on radio button for question "Do you have another rating or certification related to Sustainability?" is "NO"
    Then Verify visibility of question 6 is "Does your organization operate a labor Management System that is certified against SA 8000?"
    Then click on radio button for question "Do you have another rating or certification related to Sustainability?" is "YES"
    Then Verify visibility of subtext is "Please provide a link to your scorecord if available, else attach on the next question"
    Then Verify visibility of question 6 is "Would you like to attach another rating or certification related to sustainability?"
    Then click on radio button for question "Would you like to attach another rating or certification related to sustainability?" is "NO"
    Then Verify visibility of question 7 is "Does your organization operate a labor Management System that is certified against SA 8000?"
    Then click on radio button for question "Does your organization operate a labor Management System that is certified against SA 8000?" is "NO"
    Then Verify visibility of question 8 is "Do you have an alternate certification other than SA 8000?"
    Then click on radio button for question "Do you have an alternate certification other than SA 8000?" is "YES"
    Then Verify visibility of subtext is "Name of Certification Body"
    Then Verify visibility of question 9 is "Attach Certification?"
    Then click on radio button for question "Do you have an alternate certification other than SA 8000?" is "NO"
    Then Verify visibility of question 9 is "Please describe what Employee Working Conditions/Standards do you implement?"
    Then Enter answer for question 9 as "answer"
    Then Verify visibility of question 10 is "Does your organization operate a social responsibility system that is certified against ISO 26001?"
    Then click on radio button for question "Does your organization operate a social responsibility system that is certified against ISO 26001?" is "NO"
    Then Verify visibility of question 11 is "Do you have an alternate certification other than ISO 26001?"
   	Then click on radio button for question "Do you have an alternate certification other than ISO 26001?" is "NO"
		Then Verify visibility of question 12 is "Please describe what Employee Working Conditions/Standards do you implement?"
   	Then click on radio button for question "Do you have an alternate certification other than ISO 26001?" is "YES"
    Then Verify visibility of subtext is "Name of Certification Body"
    Then Verify visibility of question 12 is "Attach Certification?"
    Then click on radio button for question 12 as "NO"
    Then Verify visibility of question 13 is "Does your organization have ISO22301 - Business Continuity Management System Certification?"
    Then click on radio button for question "Does your organization have ISO22301 - Business Continuity Management System Certification?" is "NO"
    Then Click "Attach Document" button for "Does your organization have ISO22301 - Business Continuity Management System Certification?"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    Then Verify visibility of question 14 is "Does your organization operate a structured H&S Management System that is certified against OHSAS 18001, ISO 45001 or equivalent?"
    Then click on radio button for question "Does your organization operate a structured H&S Management System that is certified against OHSAS 18001, ISO 45001 or equivalent?" is "NO"
    Then Verify visibility of question 15 is "Is there a function / appointed person responsible for Health & Safety Management Issues?"
    Then click on radio button for question "Is there a function / appointed person responsible for Health & Safety Management Issues?" is "NO"
    Then Verify visibility of question 16 is "Provide details of H&S performance against the following performance indicators"
    Then click on radio button for question "Provide details of H&S performance against the following performance indicators" with text "Number of fatalities (last 2 years)"
    Then Enter answer for question 16 as "answer"
    Then Verify visibility of subtext is "If the number of fatalities or major accidents is greater than 0 (zero) provide details"
    Then Verify visibility of question 17 is "Does your organization operate an Environmental Management System"
    Then click on radio button for question "Does your organization operate an Environmental Management System" is "NO"
		Then Verify visibility of question 18 is "Please provide the target date by when you would certify against ISO 14001 or equivalent"
    Then Enter answer for question 18 as "answer"
    Then Scroll to view "15" field
    Then click on radio button for question "Does your organization operate an Environmental Management System" is "YES"
    Then Click "Attach Document" button for "Does your organization operate an Environmental Management System"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    Then Verify visibility of question 18 is "Do you have an environmental policy?"
    Then click on radio button for question "Do you have an environmental policy?" is "YES"
    Then Verify visibility of question 19 is "Does it cover climate change?"
    Then Verify visibility of question 20 is "Does it cover plastics pollution?"
    Then click on radio button for question "Do you have an environmental policy?" is "NO"
    Then Verify visibility of question 19 is "Has your organisation been prosecuted for environmental violations?"
    Then click on radio button for question "Has your organisation been prosecuted for environmental violations?" is "NO"
    Then Verify visibility of question 20 is "Does your organization operate an Energy Management System that is certified against ISO 50001 or equivalent?"
    Then click on radio button for question "Does your organization operate an Energy Management System that is certified against ISO 50001 or equivalent?" is "NO"
		Then Verify visibility of question 21 is "Please provide the target date by when you would certify against ISO 50001 or equivalent"
		Then Scroll to view "19" field
		Then click on radio button for question "Does your organization operate an Energy Management System that is certified against ISO 50001 or equivalent?" is "YES"
    Then Click "Attach Document" button for "Does your organization operate an Energy Management System that is certified against ISO 50001 or equivalent?"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then Click "Confirm" button
    Then Wait for 3 seconds
    #Then Verify visibility of question 21 is "Do you purchase 100% renewable electricity?"
    #Then click on radio button for question "Do you purchase 100% renewable electricity?" is "YES"
    Then click on radio button for question 21 as "YES"
    Then Verify visibility of question 22 is "What percentage of your current electricity consumption comes from renewable sources?"
    #Then Verify visibility of question 23 is "If you do not purchase 100% renewable electricity today, do you have a target to get to 100%?"
    #Then Verify visibility of question 24 is "If you have a target to get to 100%, what date is the target set to?"
		Then Scroll to view "19" field
    #Then click on radio button for question "Do you purchase 100% renewable electricity?" is "NO"
    Then click on radio button for question 21 as "NO"
    #Then Verify visibility of question 22 is "Do you have plans to source 100% renewable electricity?"
    #Then click on radio button for question "Do you have plans to source 100% renewable electricity?" is "NO"
    Then click on radio button for question 22 as "NO"
    #Then Verify visibility of question 23 is "If you have a target to get to 100%, what date is the target set to?"
    #Then click on radio button for question "If you have a target to get to 100%, what date is the target set to?" is "NO"
    Then click on radio button for question 23 as "NO"
    Then Verify visibility of question 24 is "Do you have a carbon reduction target?"
		Then click on radio button for question "Do you have a carbon reduction target?" is "YES"
		Then Verify visibility of question 25 is "Is your carbon reduction target a science based net zero carbon target aligned to 1.5 degrees pathway?"
		Then click on radio button for question "Is your carbon reduction target a science based net zero carbon target aligned to 1.5 degrees pathway?" is "NO"
    ###publish-Sustainability (Social, Environmental, Health & Safety)
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Click on Begin Questionnaire button for "Trade Compliance"
    ###Verify Buttons visibility-Trade Compliance
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    ###Verify questions visibility-Trade Compliance
    Then Verify visibility of question 1 is "Does your company have an internal Trade control"
    Then Verify visibility of question 2 is "Is your company committed to declare and value exports"
    ###answering questionnaires-Trade Compliance
    Then click on radio button for question "Does your company have an internal Trade control" is "YES"
    Then click on radio button for question "Is your company committed to declare and value exports" is "YES"
    ###publish-Trade Compliance
    Then click on Publish Questionnaire
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then click on Published tab
    Then Verify "Anti-Bribery, Anti-Corruption" name visibility
    Then Verify "Company Operations" name visibility
    Then Verify "Conflict Minerals" name visibility
    Then Verify "Conflict Minerals - IBM" name visibility
    Then Verify "Diversity - United States of America" name visibility
    Then Verify "Environment and Safety - IBM" name visibility
    Then Verify "Ethics and Compliance" name visibility
    #Then Verify "GDPR - General Data Protection Regulation" name visibility
    Then Verify "Government Relations" name visibility
    Then Verify "Government Relations - IBM" name visibility
    Then Verify "Import Export Compliance" name visibility
    Then Verify "Import Export Compliance - IBM" name visibility
    Then Verify "Information Security" name visibility
    Then Verify "Intellectual Property" name visibility
    #Then Verify "Liability Insurance" name visibility
    Then Verify "PIF Integrity Training- IBM" name visibility
    Then Verify "Quality Management" name visibility
    Then Verify "IBM Relations" name visibility
    Then Verify "Social and Environmental Management - IBM" name visibility
    Then Verify "Sustainability (Social, Environmental, Health & Safety)" name visibility
    Then Verify "Trade Compliance" name visibility
    Then Click "Your Profile" tab
    Then Logout from the system

  @Regression @Questionnaires @PublishQuestionnaire
  Scenario:  As a Buyer, I should able to add a Questionnaire from Supplier full screen
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "AutoQues" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "AutoQues" Supplier Contact email address on Invite Supplier modal
    Then Enter "AutoQues" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click "Yes" radio button
    Then Deselect all QGs from the Questinnaire Group
    Then Click "No" radio button
    Then Click on "Next" button
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    #Then Click on Status dropdown on My Suppliers page
    #Then Select Pending Invites in Status dropdown "Profile Complete"
    #Then Click on Apply button in Status dropdown
    Then click on supplier quick view button
    Then Click on View Supplier Button 
    Then verify Profile page is visible
    Then Scroll Down the page
    Then Show "Questionnaires" component on the reading panel
    Then Show "Manage / Assign Questionnaires" Link in the "Questionnaires" component
    Then Click on "Manage / Assign Questionnaires" Link in the "Questionnaires" component
    Then Click on "Add" button at the "Conflict Minerals - IBM" Questionnaires
    Then Scroll the page
    Then Click on Update button to update the questionnaire
    Then Wait for 10 seconds
    Then Click on back arrow button
    Then Scroll Down the page
    Then Show "Conflict Minerals - IBM" questionnaire on the Questinnaire component "true"
    Then Click on "Manage / Assign Questionnaires" Link in the "Questionnaires" component
    Then Click on "Remove" button at the "Conflict Minerals - IBM" Questionnaires
    Then Click on Update button to update the questionnaire
    Then Wait for 10 seconds
    Then Click on back arrow button
    Then Scroll Down the page
    Then Show "Conflict Minerals - IBM" questionnaire on the Questinnaire component "false"
    Then Logout from the system