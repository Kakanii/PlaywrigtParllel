Feature: Remainder settings configuration

  #Remainder settings configuration
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @ReminderSettings
  Scenario: As a Buyer, Verify the remainder settings functionality and tooltips and validations
    Then Enter data in Email Address field on Login page
    ##Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 5 seconds
    #Page title and description
    Then Verify page header "Reminder Settings" under Reminder settings
    Then Verify the page title description "The reminder settings allow you to configure reminder emails to be sent to suppliers in various stages of onboarding. Configuration options are available to set the frequency, duration and templates to be used for each category, which is based on the Supplier’s status." under Remainder settings
    #Button visible
    Then Verify "Create configuration" button is visible under "Remainder settings"
    Then Verify "Create configuration" button is enabled under "Remainder settings"
    #click on config
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    #label visibility
    Then Scroll to the element
    Then Show "Reminder" label in Create configuration
    Then Show "Category" label in "Create configuration"
    Then Show "Reminder Frequency" label in "Create configuration"
    Then Show "Reminder Start Day" label in "Create configuration"
    Then Show "Number of occurrences" label in "Create configuration"
    Then Show "Template" label in "Create configuration"
    #Then Show "CC to role" label in "Create configuration"
    #button visibility
    Then Verify Edit button is visible in "Create configuration"
    Then Verify "Save" button is displayed under "Remainder"
    Then Verify "Cancel" button is displayed under "Remainder"
    Then Verify "Save & Add More" button is displayed under "Remainder"
    #button enable
    Then Verify Edit button is enable in "Create configuration"
    Then Verify "Save" button is enable under "Remainder"
    Then Verify "Cancel" button is enable under "Remainder"
    Then Verify "Save & Add More" button is enable under "Remainder"
    #tootips
    Then Show "Category" tooltip "Select the Supplier Status for which you want to set up reminder emails." in "Create configuration"
    Then Show "Reminder Frequency" tooltip "Select how often you wish reminders to be sent (Daily, Every Other Day, Weekly or Monthly)" in "Create configuration"
    Then Show "Reminder Start Day" tooltip "Select the number of days after the Pending event (Select Category) to start the Reminder emails." in "Create configuration"
    Then Show "Number of occurrences" tooltip "Select from 1-10 reminders. Maximum of 10 reminders can be sent at your selected frequency." in "Create configuration"
    Then Show "Template" tooltip "Select from the available email templates that are configured." in "Create configuration"
    #Then Show "CC to role" tooltip "This feature allows you to cc a TYS user role on the Reminders that go to the Supplier. If the role is assigned as a relationship contact on the Supplier Action Center e.g., Category Manager, that person will be cc’d on the Email reminder to the Supplier. Warning: Many emails could be received." in "Create configuration"
    #input field visibility
    Then Verify input text field is visible under "startDay"
    Then Verify "Increment number" button is visible for "startDay"
    Then Verify "Decrement number" button is visible for "startDay"
    Then Verify input text field is visible under "reminderCount"
    Then Verify "Increment number" button is visible for "reminderCount"
    Then Verify "Decrement number" button is visible for "reminderCount"
    #Then Verify CC role input filed is visible
    #dropdown value visibility
    Then Verify "Pending Invitation - Supplier has a Pending Invite/Registration" dropdown value is visible under "Category" input for "category"
    Then Verify "Pending Profile - Supplier has registered but has not published their Profile" dropdown value is visible under "Category" input for "category"
    Then Verify "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires" dropdown value is visible under "Category" input for "category"
    Then Verify "Ready to Onboard - Supplier is awaiting onboarding" dropdown value is visible under "Category" input for "category"
    Then Verify "One time" dropdown value is visible under "Reminder Frequency" input for "frequency"
    Then Verify "Every day" dropdown value is visible under "Reminder Frequency" input for "frequency"
    Then Verify "Every alternate day" dropdown value is visible under "Reminder Frequency" input for "frequency"
    Then Verify "Every week" dropdown value is visible under "Reminder Frequency" input for "frequency"
    Then Verify "Every month" dropdown value is visible under "Reminder Frequency" input for "frequency"
    #Verify Required error message
    Then Click on "Save" button for "Reminder"
    Then Wait for 3 seconds
    Then Show "Required" error message for "category"
    Then Show "Required" error message for "frequency"
    Then Show "Required" error message for input value "startDay"
    Then Show "Required" error message for input value "reminderCount"
    Then Show "Required" error message for "template"
    #dropdown visibility based on cateogory
    #Verify pending profile
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Wait for 3 seconds
    Then Verify "Pending Invite" dropdown value is visible under "Template" input for "template"
    Then Wait for 3 seconds
    Then Select "Pending Profile - Supplier has registered but has not published their Profile" value from "category" label
    Then Wait for 3 seconds
    Then Verify "Pending Profile Complete" dropdown value is visible under "Template" input for "template"
    Then Wait for 3 seconds
    Then Select "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires" value from "category" label
    Then Wait for 3 seconds
    Then Verify "Pending Questionnaire" dropdown value is visible under "Template" input for "template"
    Then Wait for 3 seconds
    Then Select "Ready to Onboard - Supplier is awaiting onboarding" value from "category" label
    Then Wait for 3 seconds
    Then Verify "Ready To Onboard" dropdown value is visible under "Template" input for "template"
    Then Wait for 3 seconds
    #input field validatios
    Then Enter input value "145" in "startDay" field
    Then Verify error message "Value must be less than 100" is displyed under "startDay"
    Then Enter input value "   " in "startDay" field
    Then Verify no data entered under "startDay" field
    Then Enter input value "ABC" in "startDay" field
    Then Verify no data entered under "startDay" field
    Then Enter input value "A2B4C" in "startDay" field
    Then Verify data entered in "startDay" field "24"
    Then Enter input value "'[*]=" in "startDay" field
    Then Verify no data entered under "startDay" field
    #number of occarances
    Then Enter input value "-2" in "reminderCount" field
    Then Verify data entered in "reminderCount" field "0"
    Then Enter input value "145" in "reminderCount" field
    Then Verify data entered in "reminderCount" field "10"
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Wait for 5 seconds
    Then Logout from the system

  @Smoke @ReminderSettings @QuickCheck @SanityCheckSuite
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending invitation" category with remainder frequency "One time" with CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "One time" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    #Then Enter input value "6" in "reminderCount" field
    Then Select "TYS Generic - Pending Invite" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending invitation" category with remainder frequency "One time" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "One time" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    #Then Enter input value "6" in "reminderCount" field
    Then Select "TYS Generic - Pending Invite" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings @SanityCheckSuite
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending invitation" category with remainder frequency "Every day" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "Every day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "TYS Generic - Pending Invite" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings @SanityCheckSuite
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending invitation" category with remainder frequency "Every day" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "Every day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "TYS Generic - Pending Invite" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending invitation" category with remainder frequency "Every alternate day" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "Every alternate day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "TYS Generic - Pending Invite" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending invitation" category with remainder frequency "Every alternate day" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "Every alternate day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "TYS Generic - Pending Invite" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings @TYSFunctionality
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending invitation" category with remainder frequency "Every week" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "Every week" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "TYS Generic - Pending Invite" value from "template" label
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending invitation" category with remainder frequency "Every week" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "Every week" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "TYS Generic - Pending Invite" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending invitation" category with remainder frequency "Every month" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "Every month" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "TYS Generic - Pending Invite" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending invitation" category with remainder frequency "Every month" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "Every month" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "TYS Generic - Pending Invite" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  #Pending Profile Remainder settings
  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Profile" category with remainder frequency "One time" with CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Profile - Supplier has registered but has not published their Profile" value from "category" label
    Then Select "One time" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    #Then Enter input value "6" in "reminderCount" field
    Then Select "Pending Profile Complete" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Profile - Supplier has registered but has not published their Profile"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Profile" category with remainder frequency "One time" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Profile - Supplier has registered but has not published their Profile" value from "category" label
    Then Select "One time" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    #Then Enter input value "6" in "reminderCount" field
    Then Select "Pending Profile Complete" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Profile - Supplier has registered but has not published their Profile"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Profile" category with remainder frequency "Every day" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Profile - Supplier has registered but has not published their Profile" value from "category" label
    Then Select "Every day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Profile Complete" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Profile - Supplier has registered but has not published their Profile"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Profile" category with remainder frequency "Every day" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Profile - Supplier has registered but has not published their Profile" value from "category" label
    Then Select "Every day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Profile Complete" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Profile - Supplier has registered but has not published their Profile"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Profile" category with remainder frequency "Every alternate day" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Profile - Supplier has registered but has not published their Profile" value from "category" label
    Then Select "Every alternate day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Profile Complete" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Profile - Supplier has registered but has not published their Profile"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Profile" category with remainder frequency "Every alternate day" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Profile - Supplier has registered but has not published their Profile" value from "category" label
    Then Select "Every alternate day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Profile Complete" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Profile - Supplier has registered but has not published their Profile"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Profile" category with remainder frequency "Every week" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Profile - Supplier has registered but has not published their Profile" value from "category" label
    Then Select "Every week" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Profile Complete" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Profile - Supplier has registered but has not published their Profile"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Profile" category with remainder frequency "Every week" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Profile - Supplier has registered but has not published their Profile" value from "category" label
    Then Select "Every week" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Profile Complete" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Profile - Supplier has registered but has not published their Profile"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Profile" category with remainder frequency "Every month" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Profile - Supplier has registered but has not published their Profile" value from "category" label
    Then Select "Every month" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Profile Complete" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Profile - Supplier has registered but has not published their Profile"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Profile" category with remainder frequency "Every month" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Profile - Supplier has registered but has not published their Profile" value from "category" label
    Then Select "Every month" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Profile Complete" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Profile - Supplier has registered but has not published their Profile"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  #Pending Questionnaire Remainder settings
  @Smoke @ReminderSettings @SanityCheckSuite
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Questionnaire" category with remainder frequency "One time" with CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires" value from "category" label
    Then Select "One time" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    #Then Enter input value "6" in "reminderCount" field
    Then Select "Pending Questionnaire" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings @SanityCheckSuite
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Questionnaires" category with remainder frequency "One time" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires" value from "category" label
    Then Select "One time" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    #Then Enter input value "6" in "reminderCount" field
    Then Select "Pending Questionnaire" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Questionnaire" category with remainder frequency "Every day" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires" value from "category" label
    Then Select "Every day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Questionnaire" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings @withoutCCRole
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Questionnaires" category with remainder frequency "Every day" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires" value from "category" label
    Then Select "Every day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Questionnaire" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Questionnaires" category with remainder frequency "Every alternate day" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires" value from "category" label
    Then Select "Every alternate day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Questionnaire" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Questionnaires" category with remainder frequency "Every alternate day" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires" value from "category" label
    Then Select "Every alternate day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Questionnaire" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Questionnaires" category with remainder frequency "Every week" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires" value from "category" label
    Then Select "Every week" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Questionnaire" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Questionnaires" category with remainder frequency "Every week" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires" value from "category" label
    Then Select "Every week" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Questionnaire" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Questionnaires" category with remainder frequency "Every month" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires" value from "category" label
    Then Select "Every month" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Questionnaire" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Questionnaires" category with remainder frequency "Every month" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires" value from "category" label
    Then Select "Every month" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Questionnaire" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  #Edit the Reminder configuration
  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to Edit NAG reminders for "Pending invitation" category with remainder frequency "One time" with CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "One time" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    #Then Enter input value "6" in "reminderCount" field
    Then Select "TYS Generic - Pending Invite" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    #Edit Reminder Settings
    Then Click "Edit" button on "Create configuration"
    Then Select "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires" value from "category" label
    Then Wait for 3 seconds
    Then Select "Pending Questionnaire" value from "template" label
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration updated successfully" successfully is shown
    Then Wait for 5 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  #Verify save&add more functionality
  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to Save&Add more NAG reminders for "Pending invitation" category with remainder frequency "One time" with CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "One time" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    #Then Enter input value "6" in "reminderCount" field
    Then Select "TYS Generic - Pending Invite" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    #Save&Add more reminder
    Then Wait for 3 seconds
    Then Click on "Save & Add More" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 3 seconds
    #delete reminder
    Then Click "Delete" button for the remainder
    Then Wait for 1 seconds
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    #add more reminder
    #Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "One time" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    #Then Enter input value "6" in "reminderCount" field
    Then Select "TYS Generic - Pending Invite" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @ReminderSettings @SanityCheckSuite
  Scenario: As a Buyer, Verify I should able to Cancel configure NAG reminders for "Pending Profile" category with remainder frequency "Every week" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Profile - Supplier has registered but has not published their Profile" value from "category" label
    Then Select "Every week" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Profile Complete" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Cancel" button for "Reminder"
    Then Wait for 5 seconds
    Then Logout from the system

  ####*********RD Pendingchecklistquestionnaire*****#######
  @Regression @ReminderSettings
  Scenario: As a Buyer, Verify the remainder settings functionality and tooltips and validations for Pendingchecklistquestionnaire
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 5 seconds
    #Page title and description
    Then Verify page header "Reminder Settings" under Reminder settings
    Then Verify the page title description "The reminder settings allow you to configure reminder emails to be sent to suppliers in various stages of onboarding. Configuration options are available to set the frequency, duration and templates to be used for each category, which is based on the Supplier’s status." under Remainder settings
    #Button visible
    Then Verify "Create configuration" button is visible under "Remainder settings"
    Then Verify "Create configuration" button is enabled under "Remainder settings"
    #click on config
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    #label visibility
    Then Scroll to the element
    Then Show "Reminder" label in Create configuration
    Then Show "Category" label in "Create configuration"
    Then Show "Reminder Frequency" label in "Create configuration"
    Then Show "Reminder Start Day" label in "Create configuration"
    Then Show "Number of occurrences" label in "Create configuration"
    Then Show "Template" label in "Create configuration"
    Then Show "CC to role" label in "Create configuration"
    #button visibility
    Then Verify Edit button is visible in "Create configuration"
    Then Verify "Save" button is displayed under "Remainder"
    Then Verify "Cancel" button is displayed under "Remainder"
    Then Verify "Save & Add More" button is displayed under "Remainder"
    #button enable
    Then Verify Edit button is enable in "Create configuration"
    Then Verify "Save" button is enable under "Remainder"
    Then Verify "Cancel" button is enable under "Remainder"
    Then Verify "Save & Add More" button is enable under "Remainder"
    #tootips
    Then Show "Category" tooltip "Select the Supplier Status for which you want to set up reminder emails." in "Create configuration"
    Then Show "Reminder Frequency" tooltip "Select how often you wish reminders to be sent (Daily, Every Other Day, Weekly or Monthly)" in "Create configuration"
    Then Show "Reminder Start Day" tooltip "Select the number of days after the Pending event (Select Category) to start the Reminder emails." in "Create configuration"
    Then Show "Number of occurrences" tooltip "Select from 1-10 reminders. Maximum of 10 reminders can be sent at your selected frequency." in "Create configuration"
    Then Show "Template" tooltip "Select from the available email templates that are configured." in "Create configuration"
    Then Show "CC to role" tooltip "This feature allows you to cc a TYS user role on the Reminders that go to the Supplier. If the role is assigned as a relationship contact on the Supplier Action Center e.g., Category Manager, that person will be cc’d on the Email reminder to the Supplier. Warning: Many emails could be received." in "Create configuration"
    #input field visibility
    Then Verify input text field is visible under "startDay"
    Then Verify "Increment number" button is visible for "startDay"
    Then Verify "Decrement number" button is visible for "startDay"
    Then Verify input text field is visible under "reminderCount"
    Then Verify "Increment number" button is visible for "reminderCount"
    Then Verify "Decrement number" button is visible for "reminderCount"
    Then Verify CC role input filed is visible
    #dropdown value visibility
    #Then Verify "Pending Invitation - Supplier has a Pending Invite/Registration" dropdown value is visible under "Category" input for "category"
    #Then Verify "Pending Profile - Supplier has registered but has not published their Profile" dropdown value is visible under "Category" input for "category"
    Then Verify "Pending Checklist Questionnaire - Checklist Questionnaire is in Pending/Not submitted status" dropdown value is visible under "Category" input for "category"
    Then Verify "One time" dropdown value is visible under "Reminder Frequency" input for "frequency"
    Then Verify "Every day" dropdown value is visible under "Reminder Frequency" input for "frequency"
    Then Verify "Every alternate day" dropdown value is visible under "Reminder Frequency" input for "frequency"
    Then Verify "Every week" dropdown value is visible under "Reminder Frequency" input for "frequency"
    Then Verify "Every month" dropdown value is visible under "Reminder Frequency" input for "frequency"
    #Verify Required error message
    Then Click on "Save" button for "Reminder"
    Then Wait for 3 seconds
    Then Show "Required" error message for "category"
    Then Show "Required" error message for "frequency"
    Then Show "Required" error message for input value "startDay"
    Then Show "Required" error message for input value "reminderCount"
    Then Show "Required" error message for "template"
    #dropdown visibility based on cateogory
    #Verify pending checklist questionnaire
    Then Select "Pending Checklist Questionnaire - Checklist Questionnaire is in Pending/Not submitted status" value from "category" label
    Then Wait for 3 seconds
    Then Verify "Pending Checklist Questionnaires" dropdown value is visible under "Template" input for "template"
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @ReminderSettings
  Scenario: As a Buyer, Verify the remainder settings tooltips for Pendingchecklistquestionnaire
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 5 seconds
    #click on config
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    #label visibility
    Then Scroll to the element
    Then Select "Pending Checklist Questionnaire - Checklist Questionnaire is in Pending/Not submitted status" value from "category" label
    Then Show "Number of days in Pending status" label in "Create configuration"
    #tootips
    Then Show "Category" tooltip "Select the category for which you want to setup reminder emails" in "Create configuration"
    Then Show "Reminder Frequency" tooltip "Select how often you wish reminders to be sent (Daily, Every Other Day, Weekly or Monthly)" in "Create configuration"
    Then Show "Number of days in Pending status" tooltip "Choose the number of days since checklist questionnaire is in pending status without action to trigger reminders." in "Create configuration"
    Then Show "Number of occurrences" tooltip "Select from 1-10 reminders. Maximum of 10 reminders can be sent at your selected frequency." in "Create configuration"
    Then Show "Template" tooltip "Select from the available email templates that are configured." in "Create configuration"
    #Verify Required error message
    Then Click on "Save" button for "Reminder"
    Then Wait for 3 seconds
    #Then Show "Required" error message for "category"
    Then Show "Required" error message for "frequency"
    Then Show "Required" error message for input value "startDay"
    Then Show "Required" error message for input value "reminderCount"
    Then Show "Required" error message for "template"
    Then Logout from the system

  @Smoke @ReminderSettings
  Scenario: As a Buyer, Verify I should able to Cancel configure NAG reminders for "Pending Checklist Questionnaire" category with remainder frequency "Every week"
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Checklist Questionnaire - Checklist Questionnaire is in Pending/Not submitted status" value from "category" label
    Then Select "Every week" value from "frequency" label
    #Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Checklist Questionnaires" value from "template" label
    Then Click on "Cancel" button for "Reminder"
    Then Wait for 5 seconds
    Then Logout from the system

  @Smoke @ReminderSettings @TYSFunctionality @SanityCheckSuite
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending Checklist Questionnaires" category with remainder frequency "Every alternate day"
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Checklist Questionnaire - Checklist Questionnaire is in Pending/Not submitted status" value from "category" label
    Then Select "Every alternate day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Checklist Questionnaires" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Checklist Questionnaire - Checklist Questionnaire is in Pending/Not submitted status"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  #Edit the Reminder configuration
  @Smoke @ReminderSettings @TYSFunctionality @SanityCheckSuite
  Scenario: As a Buyer, Verify I should able to Edit NAG reminders for "Pending Checklist Questionnaires" category with reminder frequency "One time" to " Pending Questionnaire"
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Checklist Questionnaire - Checklist Questionnaire is in Pending/Not submitted status" value from "category" label
    Then Select "One time" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    #Then Enter input value "6" in "reminderCount" field
    Then Select "Pending Checklist Questionnaires" value from "template" label
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    #Edit Reminder Settings
    Then Click "Edit" button on "Create configuration"
    Then Select "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires" value from "category" label
    Then Wait for 3 seconds
    Then Select "Pending Questionnaire" value from "template" label
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration updated successfully" successfully is shown
    Then Wait for 5 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Questionnaires - Supplier has Published their Profile but has not completed all Assigned Questionnaires"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  #******************Ready to onboard status*****************#
  @Regression @ReminderSettings
  Scenario: As a Buyer, Verify the remainder settings functionality and tooltips and validations for Ready To Onboard
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 5 seconds
    #Page title and description
    Then Verify page header "Reminder Settings" under Reminder settings
    Then Verify the page title description "The reminder settings allow you to configure reminder emails to be sent to suppliers in various stages of onboarding. Configuration options are available to set the frequency, duration and templates to be used for each category, which is based on the Supplier’s status." under Remainder settings
    #Button visible
    Then Verify "Create configuration" button is visible under "Remainder settings"
    Then Verify "Create configuration" button is enabled under "Remainder settings"
    #click on config
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    #label visibility
    Then Scroll to the element
    Then Show "Reminder" label in Create configuration
    Then Show "Category" label in "Create configuration"
    Then Show "Reminder Frequency" label in "Create configuration"
    Then Show "Reminder Start Day" label in "Create configuration"
    Then Show "Number of occurrences" label in "Create configuration"
    Then Show "Template" label in "Create configuration"
    #Then Show "CC to role" label in "Create configuration"
    #button visibility
    Then Verify Edit button is visible in "Create configuration"
    Then Verify "Save" button is displayed under "Remainder"
    Then Verify "Cancel" button is displayed under "Remainder"
    Then Verify "Save & Add More" button is displayed under "Remainder"
    #button enable
    Then Verify Edit button is enable in "Create configuration"
    Then Verify "Save" button is enable under "Remainder"
    Then Verify "Cancel" button is enable under "Remainder"
    Then Verify "Save & Add More" button is enable under "Remainder"
    #tootips
    Then Show "Category" tooltip "Select the Supplier Status for which you want to set up reminder emails." in "Create configuration"
    Then Show "Reminder Frequency" tooltip "Select how often you wish reminders to be sent (Daily, Every Other Day, Weekly or Monthly)" in "Create configuration"
    Then Show "Reminder Start Day" tooltip "Select the number of days after the Pending event (Select Category) to start the Reminder emails." in "Create configuration"
    Then Show "Number of occurrences" tooltip "Select from 1-10 reminders. Maximum of 10 reminders can be sent at your selected frequency." in "Create configuration"
    Then Show "Template" tooltip "Select from the available email templates that are configured." in "Create configuration"
    #Then Show "CC to role" tooltip "This feature allows you to cc a TYS user role on the Reminders that go to the Supplier. If the role is assigned as a relationship contact on the Supplier Action Center e.g., Category Manager, that person will be cc’d on the Email reminder to the Supplier. Warning: Many emails could be received." in "Create configuration"
    #input field visibility
    Then Verify input text field is visible under "startDay"
    Then Verify "Increment number" button is visible for "startDay"
    Then Verify "Decrement number" button is visible for "startDay"
    Then Verify input text field is visible under "reminderCount"
    Then Verify "Increment number" button is visible for "reminderCount"
    Then Verify "Decrement number" button is visible for "reminderCount"
    #Then Verify CC role input filed is visible
    #dropdown value visibility
    #Then Verify "Pending Invitation - Supplier has a Pending Invite/Registration" dropdown value is visible under "Category" input for "category"
    #Then Verify "Pending Profile - Supplier has registered but has not published their Profile" dropdown value is visible under "Category" input for "category"
    Then Verify "Ready to Onboard - Supplier is awaiting onboarding" dropdown value is visible under "Category" input for "category"
    Then Verify "One time" dropdown value is visible under "Reminder Frequency" input for "frequency"
    Then Verify "Every day" dropdown value is visible under "Reminder Frequency" input for "frequency"
    Then Verify "Every alternate day" dropdown value is visible under "Reminder Frequency" input for "frequency"
    Then Verify "Every week" dropdown value is visible under "Reminder Frequency" input for "frequency"
    Then Verify "Every month" dropdown value is visible under "Reminder Frequency" input for "frequency"
    #Verify Required error message
    Then Click on "Save" button for "Reminder"
    Then Wait for 3 seconds
    Then Show "Required" error message for "category"
    Then Show "Required" error message for "frequency"
    Then Show "Required" error message for input value "startDay"
    Then Show "Required" error message for input value "reminderCount"
    Then Show "Required" error message for "template"
    #dropdown visibility based on cateogory
    #Verify pending checklist questionnaire
    Then Select "Ready to Onboard - Supplier is awaiting onboarding" value from "category" label
    Then Wait for 3 seconds
    Then Verify "Ready To Onboard" dropdown value is visible under "Template" input for "template"
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @ReminderSettings
  Scenario: As a Buyer, Verify the remainder settings tooltips for Ready To Onboard
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 5 seconds
    #click on config
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    #label visibility
    Then Scroll to the element
    Then Select "Ready to Onboard - Supplier is awaiting onboarding" value from "category" label
    Then Show "Number of days in Ready to Onboard status" label in "Create configuration"
    #tootips
    Then Show "Category" tooltip "Select the Supplier Status for which you want to set up reminder emails." in "Create configuration"
    Then Show "Reminder Frequency" tooltip "Select how often you wish reminders to be sent (Daily, Every Other Day, Weekly or Monthly)" in "Create configuration"
    Then Show "Number of days in Ready to Onboard status" tooltip "Choose the number of days since supplier is ready to be onboarded to trigger reminders." in "Create configuration"
    Then Show "Number of occurrences" tooltip "Select from 1-10 reminders. Maximum of 10 reminders can be sent at your selected frequency." in "Create configuration"
    Then Show "Template" tooltip "Select from the available email templates that are configured." in "Create configuration"
    #Verify Required error message
    Then Click on "Save" button for "Reminder"
    Then Wait for 3 seconds
    #Then Show "Required" error message for "category"
    Then Show "Required" error message for "frequency"
    Then Show "Required" error message for input value "startDay"
    Then Show "Required" error message for input value "reminderCount"
    Then Show "Required" error message for "template"
    Then Logout from the system

  @Regression @ReminderSettings @TYSFunctionality @SanityCheckSuite
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Ready to onboard" category with remainder frequency "One time" with CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Ready to Onboard - Supplier is awaiting onboarding" value from "category" label
    Then Select "One time" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    #Then Enter input value "6" in "reminderCount" field
    Then Select "Ready To Onboard" value from "template" label
    #Then Select "Administrator" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Ready to Onboard - Supplier is awaiting onboarding"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Regression @ReminderSettings @SanityCheckSuite
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Ready To Onboard" category with remainder frequency "One time" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Ready to Onboard - Supplier is awaiting onboarding" value from "category" label
    Then Select "One time" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    #Then Enter input value "6" in "reminderCount" field
    Then Select "Ready To Onboard" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Ready to Onboard - Supplier is awaiting onboarding"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Regression @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Ready To Onboard" category with remainder frequency "Every day" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Ready to Onboard - Supplier is awaiting onboarding" value from "category" label
    Then Select "Every day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Ready To Onboard" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Ready to Onboard - Supplier is awaiting onboarding"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Regression @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Ready To Onboard" category with remainder frequency "Every day" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Ready to Onboard - Supplier is awaiting onboarding" value from "category" label
    Then Select "Every day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Ready To Onboard" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Ready to Onboard - Supplier is awaiting onboarding"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Regression @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Ready To Onboard" category with remainder frequency "Every alternate day" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Ready to Onboard - Supplier is awaiting onboarding" value from "category" label
    Then Select "Every alternate day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Ready To Onboard" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Ready to Onboard - Supplier is awaiting onboarding"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Regression @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Ready To Onboard" category with remainder frequency "Every alternate day" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Ready to Onboard - Supplier is awaiting onboarding" value from "category" label
    Then Select "Every alternate day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Ready To Onboard" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Ready to Onboard - Supplier is awaiting onboarding"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Regression @ReminderSettings @TYSFunctionality
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Ready To Onboard" category with remainder frequency "Every week" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Ready to Onboard - Supplier is awaiting onboarding" value from "category" label
    Then Select "Every week" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Ready To Onboard" value from "template" label
    #Then Select "Administrator" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Ready to Onboard - Supplier is awaiting onboarding"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Regression @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Ready To Onboard" category with remainder frequency "Every week" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Ready to Onboard - Supplier is awaiting onboarding" value from "category" label
    Then Select "Every week" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Ready To Onboard" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Ready to Onboard - Supplier is awaiting onboarding"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Regression @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Ready To Onboard" category with remainder frequency "Every month" with  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Ready to Onboard - Supplier is awaiting onboarding" value from "category" label
    Then Select "Every month" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Ready To Onboard" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Ready to Onboard - Supplier is awaiting onboarding"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @Regression @ReminderSettings
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Ready To Onboard" category with remainder frequency "Every month" without  CC role
    Then Enter data in Email Address field on Login page
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Ready to Onboard - Supplier is awaiting onboarding" value from "category" label
    Then Select "Every month" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Ready To Onboard" value from "template" label
    ##Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Ready to Onboard - Supplier is awaiting onboarding"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system
