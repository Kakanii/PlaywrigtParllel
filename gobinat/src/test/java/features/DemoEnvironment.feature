Feature: Demo Environment

  #Home page functionalityVerify the basic functionality
  Background: Start the application
    Given Open the login page
    When Wait 5 seconds

  @Demo
  Scenario: I am able to see the title on Connected Suppliers pagesearch Exhibits Supplier on Connected Supplier page
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    Then Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    Then Show title on My Suppliers page "Connected Suppliers"
    Then Logout from the system

  @Demo
  Scenario: I am able to search Exhibits Supplier on Connected Supplier page
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see Clear All link and verify the functionality on Connected Supplier page
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    Then User can see Clear All link
    When Click on Clear All link
    And Wait for 5 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to view Supplier wider screen and see the title under Profile
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then User can see the title under Profile on Supplier Wider screen
    And Wait for 2 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to download Tax Registration document on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then User can see the title under Profile on Supplier Wider screen
    And Wait for 2 seconds
    And Scroll Down until "400" dimension on the page
    When Click on Tax Registration Document on Supplier Wider screen
    And Wait for 2 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to download Diversity document on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then User can see the title under Profile on Supplier Wider screen
    And Wait for 2 seconds
    And Scroll Down until "650" dimension on the page
    Then User can see Diversity Category on Supplier Wider screen
    When Click on Diversity Document on Supplier Wider screen
    And Wait for 2 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see BVD ID on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then User can see the title under Profile on Supplier Wider screen
    And Wait for 2 seconds
    And Scroll Down until "800" dimension on the page
    Then User can see BVI Id on Supplier Wider screen
    And Wait for 2 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see Contact Types on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then User can see the title under Profile on Supplier Wider screen
    And Wait for 2 seconds
    And Scroll Down until "1250" dimension on the page
    Then User can see Contacts label on Supplier Wider screen
    When Click on Contact Types on Supplier Wider screen
    And Switch to the active window
    And Wait for 2 seconds
    And Click on Close icon on Contact Type Modal
    And Wait for 2 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to download questionnaires on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then User can see the title under Profile on Supplier Wider screen
    And Wait for 2 seconds
    And Scroll Down until "1690" dimension on the page
    Then User can see Questionnaires label on Supplier Wider screen
    When Download AntiBribery and AntiCorruption on Supplier Wider screen
    And Wait for 10 seconds
    And Switch to the active window
    And Click on Download down arrow on Supplier Wider screen
    And Download Questionnaires on Supplier Wider screen
    And Wait for 10 seconds
    And Switch to the active window
    And Click on Download down arrow on Supplier Wider screen
    And Wait for 2 seconds
    And Download Questionnaires with Response on Supplier Wider screen
    And Wait for 2 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to download documents on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then User can see the title under Profile on Supplier Wider screen
    And Wait for 2 seconds
    And Scroll Down until "1920" dimension on the page
    Then User can see Documents label on Supplier Wider screen
    When Click elipse icon on Supplier Wider screen
    And Wait for 3 seconds
    And Download the document on Supplier Wider screen
    And Wait for 2 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to verify Banking details on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then User can see the title under Profile on Supplier Wider screen
    And Wait for 2 seconds
    And Scroll Down until "2000" dimension on the page
    Then User can see Bank Accounts label on Supplier Wider screen
    When Click View Details on Supplier Wider screen
    And Switch to the active window
    And Wait for 2 seconds
    Then User can see Bank Account Information label
    When Clic on Close button on Bank View Details window
    And Wait for 3 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see Supplier IO the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "supplier.io" in App Search field
    And Wait for 15 seconds
    And Expand "supplier.io" panel
    Then Shows the title Supplier IO
    And Scroll Down until "1620" dimension on the page
    Then Shows Contact Details title for "supplier.io"
    And Wait for 3 seconds
    Then Logout from the system

  #@Demo
  Scenario: I am able to see KYC SiteScan the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "KYC SiteScan" in App Search field
    And Wait for 15 seconds
    And Expand "KYC SiteScan" panel
    Then Shows the title for KYC SiteScan
    And Wait for 3 seconds
    Then Logout from the system

  #@Demo
  Scenario: I am able to see GDC the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "GDC International Digital Identity Verification" in App Search field
    And Wait for 15 seconds
    And Expand "GDC" panel
    Then Shows the title for GDC
    And Shows Request Data Verification button
    And Wait for 3 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see ComplyAdvantage the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "ComplyAdvantage" in App Search field
    And Wait for 15 seconds
    And Expand "ComplyAdvantage" panel
    And Wait for 8 seconds
    Then Shows the title for ComplyAdvantage
    And Shows Organization Results tab
    And Wait for 3 seconds
    Then Logout from the system

  #@Demo
  Scenario: I am able to see RapidRatings the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "RapidRatings" in App Search field
    And Wait for 15 seconds
    And Expand "RapidRatings" panel
    And Wait for 8 seconds
    Then Shows the title for RapidRatings
    And Shows Risk Level Label
    And Wait for 3 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see Consolidated Screening List the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "CBRE SOUTH ASIA PRIVATE LIMITED" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "Consolidated Screening List" in App Search field
    And Wait for 15 seconds
    And Expand "Consolidated Screening List" panel
    And Wait for 8 seconds
    Then Shows the title for Consolidated Screening List
    And Shows Business name match category
    And Wait for 3 seconds
    Then Logout from the system

  #@Demo
  Scenario: I am able to see Dun & Bradstreet Supplier Risk Assessment the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "D&B - Supplier Risk Assessment" in App Search field
    And Wait for 8 seconds
    And Expand "D&B - Supplier Risk Assessment" panel
    And Wait for 15 seconds
    Then Shows the title for Dun & Bradstreet Supplier Risk Assessment
    And Wait for 8 seconds
    And Shows Fiserv Solutions label
    And Wait for 3 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see EcoVadis Rating the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "EcoVadis Rating" in App Search field
    And Wait for 15 seconds
    And Expand "EcoVadis Rating" panel
    Then Shows the title for EcoVadis - Sustainability Badge
    And Wait for 8 seconds
    And Shows View Score Card link
    And Wait for 3 seconds
    Then Logout from the system
    
@Demo
  Scenario: I am able to see EcoVadis IQ the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "EcoVadis IQ" in App Search field
    And Wait for 15 seconds
    And Expand "EcoVadis IQ" panel
    And Wait for 8 seconds
    Then Shows the title for EcoVadis IQ Badge
    And Wait for 8 seconds
    And Shows the Country Theme Risks
    And Wait for 3 seconds
    Then Logout from the system    
    
@Demo
  Scenario: I am able to see Moodys - Key Information the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "Key Information" in App Search field
    And Wait for 15 seconds
    And Expand "Moody's - Key Information" panel
    And Wait for 8 seconds
    Then Shows the title for Moodys - Key Information
    And Wait for 8 seconds
    And Shows Supplier name in app panel under Risk Informaiton
    And Wait for 3 seconds
    Then Logout from the system
    
@Demo
  Scenario: I am able to see Moodys - ESG Risk Review the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "ESG Risk Review" in App Search field
    And Wait for 15 seconds
    And Expand "Moody's - ESG Risk Review" panel
    And Wait for 8 seconds
    Then Shows the title for Moodys - ESG Risk Review
    And Wait for 8 seconds
    And Shows ESG predicted score title in app panel
    And Wait for 3 seconds
    Then Logout from the system
    
 @Demo
  Scenario: I am able to see Moodys - Probability Of Default the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "Probability Of Default" in App Search field
    And Wait for 15 seconds
    And Expand "Moody's - Probability Of Default" panel
    And Wait for 8 seconds
    Then Shows the title for Moodys - Probability Of Default app
    And Wait for 8 seconds
    And Shows Probability of Default title in app panel
    And Wait for 3 seconds
    Then Logout from the system
    
@Demo
  Scenario: I am able to see Moodys Ownership the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "Ownership Structure" in App Search field
    And Wait for 15 seconds
    And Expand "Moody's Ownership" panel
    And Wait for 8 seconds
    Then Shows the title for Moodys Ownership app
    And Wait for 8 seconds
    And Shows Supplier name in app panel
    And Wait for 3 seconds
    Then Logout from the system
    
#@Demo
  Scenario: I am able to see Moodys Cyber risk rating by BitSight the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "SUN PHARMACEUTICAL INDUSTRIES LIMITED" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "Cyber risk rating by BitSight" in App Search field
    And Wait for 15 seconds
    And Expand "Moody's - Cyber risk rating by BitSight" panel
    And Wait for 8 seconds
    Then Shows the title for Moodys Cyber risk rating by BitSight app
    And Wait for 8 seconds
    And Shows Cyber risk rating by BitSight title in app panel
    And Wait for 3 seconds
    Then Logout from the system                    

  @Demo
  Scenario: I am able to see Action Center on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Action Center tab
    And Wait for 5 seconds
    Then Shows Approval Requests title
    When Click on first Approval under Approval Request section
    Then Shows Approval Details page of selected approval request
    And Wait for 3 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see Notification on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Notifications tab
    And Wait for 5 seconds
    Then Shows Notifications title
    And Wait for 3 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see a Supplier on Discover Suppliers page
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Verify the title on the dashboard
    And Click on Discover tab
    Then Wait for 10 seconds
    Then Show "Discoverable Suppliers" title on Dicover page "true"
    When Click on "TYS Discover" tab for "TYS Discover"
    Then Wait for 8 seconds
    When Enter "Tech Mahindra" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then Shows Onboaded label
    And Wait for 3 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see a Manage Approvals Details page by clicking on first approval record on Manage Approvals page
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Verify the title on the dashboard
    And Click on Manage Approvals tab
    And Wait for 5 seconds
    Then Shows Manage Approvals title on Manage Approvals screen
    When Click on first approval record on Manage Approvals page
    And Wait for 10 seconds
    Then Shows Approval Details page of selected approval request
    And Wait for 3 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see a Manage Contacts page
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Verify the title on the dashboard
    And Click on Manage Contacts tab
    And Wait for 5 seconds
    Then Shows Manage Contacts title on Manage Contacts screen
    And Wait for 3 seconds
    Then Logout from the system

  #@Demo
  Scenario: I am able to see a Manage Scoring page from Manage Questionnaires
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 25 seconds
    And Click "Suppliers" tab
    And Wait for 10 seconds
    And Expand Admin Actions Tab
    And Wait for 10 seconds
    And Click on Manage Questionnaires tab
    And Wait for 10 seconds
    And Click on Configure link on Manage Questionnaire page
    And Wait for 10 seconds
    Then Shows Configure Scroring title
    And Wait for 5 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see a Revalidation Configuration page
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click "Suppliers" tab
    And Expand Admin Actions Tab
    And Wait for 3 seconds
    And Click on Revalidation Configuration tab
    And Wait for 3 seconds
    Then Shows Revalidation Configuration title
    And Shows Create Periodic Revalidation button
    And Wait for 3 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see a app configuration page through marketplace
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Marketplace tab
    And Wait for 5 seconds
    Then Shows Marketplace title
    When Enter App name in search field
    And Select App from search results
    And Click on the App on Marketplace page
    And Wait for 3 seconds
    Then Shows App details page
    And Wait for 3 seconds
    When Click on Access tab on App details page
    And Wait for 3 seconds
    And Click on App Configurations button
    And Wait for 3 seconds
    Then Shows App Configurations settings page
    And Wait for 3 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see a Configure Workflows page
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Verify the title on the dashboard
    And Wait for 3 seconds
    And Click "Suppliers" tab
    And Wait for 2 seconds
    And Expand Admin Actions Tab
    And Wait for 3 seconds
    And Click on Configure Workflows tab
    And Wait for 3 seconds
    Then Shows Configure Workflows title
    And Wait for 3 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see a Approval Request from Configure Workflows page
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Verify the title on the dashboard
    And Wait for 3 seconds
    And Click "Suppliers" tab
    And Wait for 2 seconds
    And Expand Admin Actions Tab
    And Wait for 3 seconds
    And Click on Configure Workflows tab
    And Wait for 3 seconds
    Then Shows Configure Workflows title
    And Wait for 3 seconds
    When Click on Questionnaire Type All
    And Wait for 2 seconds
    When Click on Workflow down arrow
    And Wait for 3 seconds
    Then Shows Approval Requests under Workflows dropdown
    And Shows Dependednt Questionnaire under Workflows dropdown
    When Click on Approval Requests under Workflows dropdown
    And Wait for 3 seconds
    Then Shows the title on Approval Requests page
    And Wait for 3 seconds
    Then Logout from the system

  @Demo
  Scenario: I am able to see a Configure Dependent Questionnaire from Configure Workflows page
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click "Suppliers" tab
    And Expand Admin Actions Tab
    And Wait for 3 seconds
    And Click on Configure Workflows tab
    And Wait for 3 seconds
    Then Shows Configure Workflows title
    And Wait for 3 seconds
    When Click on Workflow down arrow
    And Wait for 3 seconds
    Then Shows Approval Requests under Workflows dropdown
    And Shows Dependednt Questionnaire under Workflows dropdown
    When Click on Dependednt Questionnaire under Workflows dropdown
    And Wait for 3 seconds
    Then Shows the title on Configure Dependent Questionnaire page
    And Wait for 3 seconds
    Then Logout from the system

  @Demo
  Scenario: As a Buyer, I should able to configure NAG reminders for "Pending invitation" category with remainder frequency "Every week" without  CC role
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    When Click on Collapse icon in All Suppliers block
    And Wait for 3 seconds
    And Click on "Admin Actions" button from buyer side
    And Wait for 3 seconds
    And Click on "Reminder Settings" button under admin actions
    And Wait for 3 seconds
    And Click on "Create configuration" button
    And Wait for 5 seconds
    And Scroll to the element
    And Wait for 3 seconds
    And Click Edit button in "Reminder"
    And Wait for 2 seconds
    And Enter random reminder name
    And Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    And Select "Every week" value from "frequency" label
    And Enter input value "14" in "startDay" field
    And Wait for 3 seconds
    And Enter input value "1" in "reminderCount" field
    And Select "TYS Generic - Pending Invite" value from "template" label
    #And Select "Internal Buyer" value from CC role
    And Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    And Wait for 15 seconds
    When Click reminder arrow before "Delete" button for the remainder
    And Wait for 5 seconds
    And Click on "Reminder Preview" button for "Reminder"
    And Wait for 5 seconds
    Then Verify page header "Reminder Preview" for reminder
    And Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    When Click close "Reminder Preview" for reminder
    And Click reminder up arrow
    And Wait for 10 seconds
    And Click Delete button for the remainder settings
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    And Wait for 10 seconds
    And Logout from the system

  @Demo
  Scenario: I am able to see Go to details button on Supplier Synopsis page
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    And User can see Go to details button on Supplier Synopsis view page
    And Logout from the system
    
@Demo
  Scenario: I am able to see Supplier details page by clicking on Go to details button on Supplier Synopsis page
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "EXHIBITS SOUTH CORPORATION" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    And User can see Go to details button on Supplier Synopsis view page
    When Click on Go to details button on Supplier Synopsis view page
    Then User can see View Synopsis link on Supplier details page
    And Logout from the system    
    
#@Demo
  Scenario: I am able to see D&B - Company Information the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "SUN PHARMACEUTICAL INDUSTRIES LIMITED" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "Company Information" in App Search field
    And Wait for 15 seconds
    And Expand "D&B - Company Information" panel
    And Wait for 8 seconds
    Then Shows the title for D&B - Company Information app
    And Wait for 8 seconds
    And Shows Supplier name in Company Information app panel
    And Wait for 3 seconds
    Then Logout from the system  
    
@Demo
  Scenario: I am able to see D&B Principals the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "SUN PHARMACEUTICAL INDUSTRIES LIMITED" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "Principals" in App Search field
    And Wait for 15 seconds
    And Expand "D&B Principals" panel
    And Wait for 8 seconds
    Then Shows the title for D&B Principals app
    And Wait for 8 seconds
    And Shows Principals Summary in Principals app panel
    And Wait for 3 seconds
    Then Logout from the system
    
@Demo
  Scenario: I am able to see D&B Third Party Risk Assessment the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "SUN PHARMACEUTICAL INDUSTRIES LIMITED" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "Third Party Risk Assessment" in App Search field
    And Wait for 15 seconds
    And Expand "D&B Third Party Risk Assessment" panel
    And Wait for 8 seconds
    Then Shows the title for D&B Third Party Risk Assessment app
    And Wait for 8 seconds
    And Shows Supplier Evaluation Risk Score in Third Party Risk Assessment app panel
    And Wait for 3 seconds
    Then Logout from the system 
    
@Demo
  Scenario: I am able to see D&B Hierarchies & Connections the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "SUN PHARMACEUTICAL INDUSTRIES LIMITED" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "Hierarchies & Connections" in App Search field
    And Wait for 15 seconds
    And Expand "D&B Hierarchies & Connections" panel
    And Wait for 8 seconds
    Then Shows the title for D&B Hierarchies & Connections app
    And Wait for 8 seconds
    And Shows Supplier Name in Hierarchies & Connections app panel
    And Wait for 3 seconds
    Then Logout from the system   
    
@Demo
  Scenario: I am able to see D&B Company Financials the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "SUN PHARMACEUTICAL INDUSTRIES LIMITED" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "Company Financials" in App Search field
    And Wait for 15 seconds
    And Expand "D&B Company Financials" panel
    And Wait for 3 seconds
    Then Shows the title for D&B Company Financials app
    And Wait for 8 seconds
    And Shows Financials to date in Company Financials app panel
    And Wait for 8 seconds
    Then Logout from the system
    
@Demo
  Scenario: I am able to see D&B Ownership Insight the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "SUN PHARMACEUTICAL INDUSTRIES LIMITED" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "Ownership Insight" in App Search field
    And Wait for 15 seconds
    And Expand "D&B Ownership Insight" panel
    And Wait for 8 seconds
    Then Shows the title for D&B Ownership Insight app
    And Wait for 8 seconds
    And Shows Capital Details in Ownership Insight app panel
    And Wait for 3 seconds
    Then Logout from the system    
    
@Demo
  Scenario: I am able to see D&B Payment Insights the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "SUN PHARMACEUTICAL INDUSTRIES LIMITED" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "Payment Insights" in App Search field
    And Wait for 15 seconds
    And Expand "D&B Payment Insights" panel
    And Wait for 8 seconds
    Then Shows the title for D&B Payment Insights app
    And Wait for 8 seconds
    And Shows Capital Details in Payment Insights app panel
    And Wait for 3 seconds
    Then Logout from the system 
    
@Demo
  Scenario: I am able to see D&B Financial Strength Insights the app details under Risk Insights on Supplier wider screen
    When Enter EmailAdress in Email Address field "kiran.chadalavada@itpeoplecorp.com"
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "SUN PHARMACEUTICAL INDUSTRIES LIMITED" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    And Click on Risk Insights tab
    And Wait for 8 seconds
    And Enter "Financial Strength Insights" in App Search field
    And Wait for 15 seconds
    And Expand "D&B Financial Strength Insights" panel
    And Wait for 8 seconds
    Then Shows the title for D&B Financial Strength Insights app
    And Wait for 8 seconds
    And Shows Failure Score in Financial Strength Insights app panel
    And Wait for 3 seconds
    Then Logout from the system                          
