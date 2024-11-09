Feature: Notification Assessment Cancellation

  Background: Login as Buyer
    Given Open the login page
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login

@SLYN-32742
Scenario: As a Buyer, I should be able to re-send  an invite after supplier declined Invitation

  When Wait 10 seconds
  And  Click "Supplier Requests" tab
  When Wait 10 seconds
  And  Click on the "Initiate Supplier Request" button
  When Click on the Supplier Company Name text box
  Then Enter Supplier Company Name on Invite Supplier modal
  When Wait 10 seconds
  And  Select "Algeria" Country from Dropdown value
  And  Click on "Search" button
  And  Click on "Request a New Supplier" button
  When Wait 10 seconds
  And  Enter "inviteeCompanyLegalName" name as "TestLegalname"
  And  Enter "addressLine1" name as "Test"
  And  Enter "postalCode" name as "12345"
  And  Click on "Next" button
  When Wait 15 seconds
  And  Enter "firstName" name as "FirstTest"
  And  Enter "lastName" name as "LastTest"
  And  Enter "title" name as "TitleTest"
  And  Enter "email" name as "testAuto@mailinator.com"
  And  Click on "Next" button
  When Wait 15 seconds
  And  Click on "Next" button
  When Wait 15 seconds
  And  Click on "Yes" radio button on Request Assessment page
  And  Click on "Next" button
  When Wait 15 seconds
  And  Click on "Submit Request" button
    #maildrop
  Then Enter Contact Email Address on Invite Supplier window from maildrop
  And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
  And Enter Contact First Name on Invite Supplier window
  And Enter Contact Last Name on Invite Supplier window
  When Click on Next button on Invite Supplier window
  And Click on the Skip
  Then Wait for 3 seconds
  When Click on the Skip
  Then Wait for 3 seconds
  When Click on the Skip
    #Without questionnaire
  And Click on the Click here on Questionnaire page
  And Click on the Clear All Link on Assign Questionnaires window
  And Click on Assign button on Assign Questionnaires window
  And Click on the Confirm on Confirmation Needed
  And Click on Next button on Assign Questionnaires window
  Then Wait 2 seconds
  When Click on Send Invite button on Invite a New User Modal
  Then Wait for 3 seconds
  And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
  And Wait for 5 seconds
    #verify inviter supplier with status
  When Click on the same supplier name and press Enter
  Then verify the status as "Pending Invites"
  And Wait for 3 seconds
  And Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
  Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
  And Wait for 5 seconds
    #maildrop
  When Click on the email with subject "Trust Your Supplier" from maildrop
  And Click on "here" link Email from maildrop
  And Wait for 25 seconds
  Then Switch to the active window
  And Wait for 15 seconds
  Then Enter "Decline" as reason for decline in "declineSupplierDescription"
  When Click "Submit" button
