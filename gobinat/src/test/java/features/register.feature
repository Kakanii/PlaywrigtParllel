Feature: Supplier Registration

  #SupplierRegistration
  Background: Start the applicaiton
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @SupplierRegistration @USACountry
  Scenario Outline: I am able to register a supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    And Enter "<Supplier Company Name>" on Invite Supplier modal
    And Click on the enter
    And Click on the IgnoreAndProceed button
    Then Select "<Country>" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter First Name "<First Name>" on Invite Supplier window
    And Enter Last Name "<Last Name>" on Invite Supplier window
    And Enter Email Address "<Email Address>" on Invite Supplier window from maildrop
    And Enter Confirm Email Address "<Confirm Email Address>" on Invite Supplier window from maildrop
    And Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    And Click on the Skip
    And Wait for 3 seconds
    #And Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 3 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 5 seconds
    Then Logout from the system
    #Then Verify received an email "<Email Address>"in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email "<Email Address>"in supplier maildrop Inbox with subject "GSK is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter Legal Business Name "<Legal Business Name>" field "Legal Business Name"
    Then Enter the Company Website "<Website>" in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter AddressOne "<Address1>" in "Address Line 1" field after "Albania" supplier registration
    Then Enter AddressTwo "<Address2>" in "Address Line 2" field after "Albania" supplier registration
    Then Enter City "<City>" in "City" field after "Albania" supplier registration
    Then Enter Zip Code "<ZipCode>" in "Zip Code" field after "Albania" supplier registration
    Then Select State "<State>" in "State" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    When Click on I will do it later button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 15 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Logout from the system

    Examples: 
      | Supplier Company Name         | Country                  | First Name | Last Name | Email Address            | Confirm Email Address     | Legal Business Name           | Website                    | Address1       | Address2      | City     | ZipCode | State    |
      | Life Technoligies Corporation | United States of America | Virat      | Kohli     | lifetechcorp@maildrop.cc | lifetechcorp@maildrop.com | Life Technologies Corporation | http://lifeechnologies.com | 5781 Van Allen | Church Street | New York |   92008 | New York |

  @Smoke @SupplierRegistration @UKCountry
  Scenario Outline: I am able to register a supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    And Enter "<Supplier Company Name>" on Invite Supplier modal
    And Click on the enter
    And Click on the IgnoreAndProceed button
    Then Select "<Country>" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter First Name "<First Name>" on Invite Supplier window
    And Enter Last Name "<Last Name>" on Invite Supplier window
    And Enter Email Address "<Email Address>" on Invite Supplier window from maildrop
    And Enter Confirm Email Address "<Confirm Email Address>" on Invite Supplier window from maildrop
    And Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    And Click on the Skip
    And Wait for 3 seconds
    #And Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 3 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 5 seconds
    Then Logout from the system
    #Then Verify received an email "<Email Address>"in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email "<Email Address>"in supplier maildrop Inbox with subject "GSK is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter Legal Business Name "<Legal Business Name>" field "Legal Business Name"
    Then Enter the Company Website "<Website>" in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter AddressOne "<Address1>" in "Address Line 1" field after "Albania" supplier registration
    Then Enter AddressTwo "<Address2>" in "Address Line 2" field after "Albania" supplier registration
    Then Enter City "<City>" in "City" field after "Albania" supplier registration
    Then Enter Zip Code "<ZipCode>" in "Postal Code" field after "Albania" supplier registration
    Then Select State "<State>" in "County" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    When Click on I will do it later button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 15 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Logout from the system

    Examples: 
      | Supplier Company Name    | Country        | First Name | Last Name | Email Address           | Confirm Email Address   | Legal Business Name      | Website                     | Address1           | Address2 | City      | ZipCode | State      |
      | Fisher Scientific UK Ltd | United Kingdom | STA        | US        | fishersciuk@maildrop.cc | fishersciuk@maildrop.cc | Fisher Scientific UK Ltd | https://fishercientific.com | Bishop Meadow Road | Plaza Rd | Liverpool | LE1 5RG | Merseyside |

  @Smoke @SupplierRegistration @CanadaCountry
  Scenario Outline: I am able to register a supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    And Enter "<Supplier Company Name>" on Invite Supplier modal
    And Click on the enter
    And Click on the IgnoreAndProceed button
    Then Select "<Country>" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter First Name "<First Name>" on Invite Supplier window
    And Enter Last Name "<Last Name>" on Invite Supplier window
    And Enter Email Address "<Email Address>" on Invite Supplier window from maildrop
    And Enter Confirm Email Address "<Confirm Email Address>" on Invite Supplier window from maildrop
    And Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    And Click on the Skip
    And Wait for 3 seconds
    #And Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 3 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 5 seconds
    Then Logout from the system
    #Then Verify received an email "<Email Address>"in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email "<Email Address>"in supplier maildrop Inbox with subject "GSK is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter Legal Business Name "<Legal Business Name>" field "Legal Business Name"
    Then Enter the Company Website "<Website>" in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter AddressOne "<Address1>" in "Address Line 1" field after "Albania" supplier registration
    Then Enter AddressTwo "<Address2>" in "Address Line 2" field after "Albania" supplier registration
    Then Enter City "<City>" in "City" field after "Albania" supplier registration
    Then Enter Zip Code "<ZipCode>" in "Postal Code" field after "Albania" supplier registration
    Then Select State "<State>" in "Province" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    When Click on I will do it later button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 15 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Logout from the system

    Examples: 
      | Supplier Company Name     | Country | First Name | Last Name | Email Address        | Confirm Email Address | Legal Business Name       | Website             | Address1             | Address2    | City    | ZipCode | State  |
      | EMD Millipore Corporation | Canada  | Kevin      | Lee       | emdmilli@maildrop.cc | emdmilli@maildrop.cc  | EMD Millipore Corporation | https://emd.com     | 290 Concord Rd       | Zoo Rd      | Toronto | M3C 0C2 | Yukon  |
      | Patheon In Canada         | Canada  | Sam        | Kar       | psgin@maildrop.cc    | psgin@maildrop.cc     | Patheon Inc Canada        | https://patheon.com | 2100 Syntex Court ON | Park Street | Toronto | L5N 7K9 | Quebec |

  @Smoke @SupplierRegistration @GermanyCountry
  Scenario Outline: I am able to register a supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    And Enter "<Supplier Company Name>" on Invite Supplier modal
    And Click on the enter
    And Click on the IgnoreAndProceed button
    Then Select "<Country>" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter First Name "<First Name>" on Invite Supplier window
    And Enter Last Name "<Last Name>" on Invite Supplier window
    And Enter Email Address "<Email Address>" on Invite Supplier window from maildrop
    And Enter Confirm Email Address "<Confirm Email Address>" on Invite Supplier window from maildrop
    And Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    And Click on the Skip
    And Wait for 3 seconds
    #And Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 3 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 5 seconds
    Then Logout from the system
    #Then Verify received an email "<Email Address>"in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email "<Email Address>"in supplier maildrop Inbox with subject "GSK is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter Legal Business Name "<Legal Business Name>" field "Legal Business Name"
    Then Enter the Company Website "<Website>" in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter AddressOne "<Address1>" in "Address Line 1" field after "Albania" supplier registration
    #Then Enter AddressTwo "<Address2>" in "Address Line 2" field after "Albania" supplier registration
    Then Enter City "<City>" in "City" field after "Albania" supplier registration
    Then Enter Zip Code "<ZipCode>" in "Postal Code" field after "Albania" supplier registration
    #Then Select State "<State>" in "Province" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    When Click on I will do it later button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 15 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Logout from the system

    Examples: 
      | Supplier Company Name       | Country | First Name | Last Name | Email Address           | Confirm Email Address   | Legal Business Name          | Website                  | Address1                | City   | ZipCode |
      | Presspart Manufacturing,S A | Germany | STA        | US        | pretarrag@maildrop.cc   | pretarrag@maildrop.cc   | Presspart Manufacturing, S A | https://presspart.com    | Parque Empresarial      | Berlin |   43720 |
      | Nemera Neuenburg GMBH       | Germany | Virat      | Kohli     | denbhm@maildrop.cc      | denbhm@maildrop.cc      | Nemera Neuenburg GMBH        | https://nemera.com       | Rheinwaldstrasse Ave Rd | Berlin |   79351 |
      | Aspen Bad Oldesloe GMBH     | Germany | Ita        | Ilu       | aspenbad@maildrop.cc    | aspenbad@maildrop.cc    | Aspen Bad Oldesloe GMBH      | https://aspen.com        | Industriestrasse        | Berlin |   23483 |
      | Gerresheimer Horsovsky Tyn  | Germany | Ita        | Ilu       | gerrescheme@maildrop.cc | gerrescheme@maildrop.cc | Gerresheimer Horsovsky Tyn   | https://gerresheimer.com | Zahradni                | Berlin |   34601 |
