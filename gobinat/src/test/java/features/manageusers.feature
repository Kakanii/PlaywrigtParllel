Feature: Manage Users and Search

  #manageusers
  #@manageusersearch
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    When Enter Redhat buyer in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    When Wait 5 seconds
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab

  #Filter By
  @Regression @Buyer @manageuserfilterby
  Scenario: Verify Filter By Labels and Input field values
    #Filter By visible
    And Verify "Filter by" button is visible under "Manage Users"
    #Filter By enable
    And Verify "Filter by" button is enabled under "Manage Users"
    When Click on "Filter by" button
    Then Wait for 3 seconds
    #Apply filter lables
    Then Show "Apply Filters" label at "Filter By"
    And Verify input text field is visible for "searchUserName"
    And Verify "Role" field label visible under "Filter By"
    And Verify "Status" field label visible under "Filter By"
    And Verify "Invited Date" field label visible under "Filter By"
    And Verify "Last Logged In" field label visible under "Filter By"
    #button Visible
    And Verify "Search" button is visible under "Filter By"
    And Verify "Reset Filters" button is visible under "Filter By"
    #Buttons enable
    And Verify "Search" button is enabled under "Filter By"
    And Verify "Reset Filters" button is enabled under "Filter By"
    And Show Close Icon on Invite a New User Modal "true"
    And Close Icon clickable on Invite a New User Modal "true"
    When Click Close icon on Invite a New User Modal
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify labels and input values on role filter
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    Then Show button label "Select All" is visible at "Role"
    Then Show button label "Clear All" is visible at "Role"
    And Verify input text field is visible for "searchUserName"
    When Click Close icon on Invite a New User Modal
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify search filter by using Role "Administrator"
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    When Select "Administrator" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    Then Show filtered role is "Administrator"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify search filter by using Role "Internal Buyer"
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    When Select "Internal Buyer" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    Then Show filtered role is "Internal Buyer"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify search filter by using Role "Read Only Admin"
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    When Select "Read Only Admin" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    Then Show filtered role is "Read Only Admin"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify search filter by using Role "Supplier Relationship Manager"
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    When Select "Supplier Relationship Manager" as "Role" from input dropdown
    Then Wait for 3 seconds
    When Click on "Search" button
    Then Wait for 5 seconds
    Then Show filtered role is "Supplier Relationship Manager"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify search filter by using Role "Sourcing Buyer"
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    When Select "Sourcing Buyer" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    Then Show filtered role is "Sourcing Buyer"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify search filter by using Role "Procurement Manager"
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    When Select "Procurement Manager" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    Then Show filtered role is "Procurement Manager"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify search filter by using Role "Ombudsman"
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    When Select "Ombudsman" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    Then Show filtered role is "Ombudsman"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify search filter by using Role "Export Regulations"
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    When Select "Export Regulations" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    Then Show filtered role is "Export Regulations"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify search filter by using Role "EDI Manager"
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    When Select "EDI Manager" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    Then Show filtered role is "EDI Manager"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify search filter by using Role "Sourcing Manager"
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    When Select "Sourcing Manager" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    Then Show filtered role is "Sourcing Manager"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify search filter by using Role "Trust & Compliance"
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    When Select "Trust & Compliance" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    Then Show filtered role is "Trust & Compliance"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify search filter by using Role "Viewer"
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    When Select "Viewer" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    Then Show filtered role is "Viewer"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify search filter by using Role "Select All"
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    When Click button label "Select All" at "Role"
    When Click on "Search" button
    Then Wait for 5 seconds
    Then Show filtered role is
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify search filter by using Role "Clear All"
    When Click on "Filter by" button
    When Click on button "Role" under "Filter By"
    When Click button label "Select All" at "Role"
    When Click button label "Clear All" at "Role"
    When Click on "Search" button
    Then Wait for 5 seconds
    Then Show filtered role is
    Then Wait for 3 seconds
    #When Click "Clear All" label button
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify labels and buttons for filter by "Status"
    When Click on "Filter by" button
    When Click on button "Status" under "Filter By"
    Then Show button "Select All" label is visible at "Status"
    Then Show button "Clear All" label is visible at "Status"
    Then Show "Active" button label visible under "Status"
    Then Show "Pending" button label visible under "Status"
    Then Show "Access Removed" button label visible under "Status"
    When Click on close icon on filter by
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify filter by with status "Active"
    When Click on "Filter by" button
    When Click on button "Status" under "Filter By"
    Then Wait for 3 seconds
    #Then Show button "Select All" label is visible at "Status"
    #Then Show button "Clear All" label is visible at "Status"
    When Click "Active" button label under "Status"
    When Click on "Search" button
    Then Wait for 3 seconds
    Then Verify status "Active" for invited user in manage users
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify filter by with status "Pending"
    When Click on "Filter by" button
    When Click on button "Status" under "Filter By"
    Then Wait for 3 seconds
    #Then Show button "Select All" label is visible at "Status"
    #Then Show button "Clear All" label is visible at "Status"
    When Click "Pending" button label under "Status"
    When Click on "Search" button
    Then Wait for 3 seconds
    Then Verify status "Pending" for invited user in manage users
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify filter by with status "Access Removed"
    When Click on "Filter by" button
    When Click on button "Status" under "Filter By"
    Then Wait for 3 seconds
    #Then Show button "Select All" label is visible at "Status"
    #Then Show button "Clear All" label is visible at "Status"
    When Click "Access Removed" button label under "Status"
    When Click on "Search" button
    Then Wait for 3 seconds
    Then Verify status "Access Removed" for invited user in manage users
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify filter by selecting all status
    When Click on "Filter by" button
    When Click on button "Status" under "Filter By"
    Then Wait for 3 seconds
    Then Click button label "Select All" for "Status"
    When Click on "Search" button
    Then Wait for 3 seconds
    Then Show filtered role is
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify filter by Clearing all status
    When Click on "Filter by" button
    When Click on button "Status" under "Filter By"
    Then Wait for 3 seconds
    Then Click button label "Select All" for "Status"
    Then Wait for 3 seconds
    Then Click button label "Clear All" for "Status"
    When Click on "Search" button
    Then Wait for 3 seconds
    Then Show filtered role is
    #When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify filter by with Invited date
    When Click on "Filter by" button
    When Click on button "Invited Date" under "Filter By"
    Then Wait for 3 seconds
    When Select from date as "April" month "7" date "2023" year
    Then Wait for 3 seconds
    When Select to date as "April" month "28" date "2023" year
    Then Wait for 2 seconds
    When Click on "Search" button
    Then Wait for 3 seconds
    When Click on manage users down arrow
    Then Wait for 3 seconds
    Then Show button label "Created Date:" is visible at "Manage users"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify filter by with Last logged in date
    When Click on "Filter by" button
    When Click on button "Last Logged In" under "Filter By"
    Then Wait for 3 seconds
    When Select from date as "April" month "7" date "2023" year for last logged in
    Then Wait for 3 seconds
    When Select to date as "May" month "4" date "2023" year for last logged in
    Then Wait for 2 seconds
    When Click on "Search" button
    Then Wait for 3 seconds
    When Click on manage users down arrow
    Then Wait for 3 seconds
    Then Show button label "First Invitation Sent:" is visible at "Manage users"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify message using filter by firstname and invalid data combinations search
    When Click on "Filter by" button
    When Enter input data "EDI first8757675657765656" under "searchUserName"
    When Click on button "Role" under "Filter By"
    Then Wait for 2 seconds
    When Select "EDI Manager" as "Role" from input dropdown
    Then Wait for 2 seconds
    When Click on button "Status" under "Filter By"
    Then Wait for 3 seconds
    When Click "Pending" button label under "Status"
    Then Wait for 2 seconds
    When Click on button "Invited Date" under "Filter By"
    Then Wait for 3 seconds
    When Select from date as "April" month "7" date "2023" year
    Then Wait for 3 seconds
    When Select to date as "April" month "28" date "2023" year
    Then Wait for 2 seconds
    When Click on button "Last Logged In" under "Filter By"
    Then Wait for 3 seconds
    When Select from date as "April" month "7" date "2023" year for last logged in
    Then Wait for 3 seconds
    When Select to date as "April" month "7" date "2023" year for last logged in
    Then Wait for 2 seconds
    When Click on "Search" button
    Then Wait for 3 seconds
    Then Show message "You have no users matching this status"
    #When Click on manage users down arrow
    Then Wait for 3 seconds
    #Then Show button label "First Invitation Sent:" is visible at "Manage users"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify message using filter by lastname and invalid data combinations search
    When Click on "Filter by" button
    When Enter input data "EDI last" under "searchUserName"
    When Click on button "Role" under "Filter By"
    Then Wait for 2 seconds
    When Select "EDI Manager" as "Role" from input dropdown
    Then Wait for 2 seconds
    When Click on button "Status" under "Filter By"
    Then Wait for 3 seconds
    When Click "Pending" button label under "Status"
    Then Wait for 2 seconds
    When Click on button "Invited Date" under "Filter By"
    Then Wait for 3 seconds
    When Select from date as "April" month "7" date "2023" year
    Then Wait for 3 seconds
    When Select to date as "May" month "4" date "2023" year
    Then Wait for 2 seconds
    When Click on button "Last Logged In" under "Filter By"
    Then Wait for 3 seconds
    When Select from date as "April" month "7" date "2023" year for last logged in
    Then Wait for 3 seconds
    When Select to date as "May" month "4" date "2023" year for last logged in
    Then Wait for 2 seconds
    When Click on "Search" button
    Then Wait for 3 seconds
    Then Show message "You have no users matching this status"
    #When Click on manage users down arrow
    Then Wait for 3 seconds
    #Then Show button label "First Invitation Sent:" is visible at "Manage users"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @manageuserfilterby
  Scenario: Verify filter by using all combinations search
    When Click on "Filter by" button
    When Enter input data "EDI" under "searchUserName"
    When Click on button "Role" under "Filter By"
    Then Wait for 2 seconds
    When Select "EDI Manager" as "Role" from input dropdown
    Then Wait for 2 seconds
    When Click on button "Status" under "Filter By"
    Then Wait for 3 seconds
    When Click "Pending" button label under "Status"
    Then Wait for 2 seconds
    When Click on "Search" button
    Then Wait for 3 seconds
    When Click on manage users down arrow
    Then Wait for 3 seconds
    Then Show button label "First Invitation Sent:" is visible at "Manage users"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @manageusers @Buyer
  Scenario: Verify the visibility and status of Invite a New User button on Manage Users page
    Then Show Invite a New User button on Manage Users page "true"
    Then Invite a New User button clickable on Manage Users page "true"
    Then Showing Users tab on Manage Users page "true"
    Then Showing All Users tab on Manage Users page "true"
    Then All Users tab clickable on Manage Users page "true"
    Then Showing Active Users tab on Manage Users page "true"
    Then Active Users tab clickable on Manage Users page "true"
    Then Logout from the system

  @Regression @manageusers @Buyer
  Scenario: Verify Active Users tab Last logged message on Manage Users page
    Then Click on Active Users tab on Manage Users page
    Then Showing Active Users with status "Last Logged In"
    Then Logout from the system

  @Regression @manageusers @Buyer
  Scenario: Verify Deleted Users tab visibility on Manage Users page
    Then Showing Deleted Users tab on Manage Users page "true"
    Then Deleted Users tab clickable on Manage Users page "true"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Users search using First Name, Last Name, Email, Role, Invalid data
    # Then Enter User First Name in Search field "kak"
    # Then Click on Enter Key on Manage User Search
    # #//div[contains(text(),'ak ak')]
    # Then Show User in search results "kak"
    # Then Enter User Last Name in Search field "AGARWAL"
    # Then Click on Enter Key on Manage User Search
    # # //div[contains(text(),'AGARWAL')]
    # Then Show User in search results "AGARWAL"
    # Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    # Then Click on Enter Key on Manage User Search
    # Then Show User with Email containing "kiran.chadalavada@itpeoplecorp.com"
    # Then Enter role in Search field "Read Only Admin"
    # Then Click on Enter Key on Manage User Search
    # Then Show User admin role in Search results "Read Only Admin"
    # Then Enter invalid data in Search field "asassaas"
    # Then Click on Enter Key on Manage User Search
    # Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Users search by First Name using First Name, Last Name, Email, Role, Invalid data
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Kiran"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Kiran"
    Then Enter User Last Name in Search field "Chadalavada"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Administrator"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Users search by Last Name using First Name, Last Name, Email, Role, Invalid data
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Trendy"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Last Name in Search field "Chavva"
    Then Click on Enter Key on Manage User Search
    Then Show User Chandra Chavva in Search results "Email: chandra.chavva@itpeoplecorp.com"
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User Administrator as last name in Search results "Administrator"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  ###@Smoke @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Users search by Email Address using First Name, Last Name, Email, Role, Invalid data
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Kiran"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "kiran"
    Then Enter User Last Name in Search field "Chadalavada"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "chadalavada"
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "kiran.chadalavada@itpeoplecorp.com"
    Then Enter role in Search field "Trust & Compliance"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Users search by User Role using First Name, Last Name, Email, Role, Invalid data
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Kiran"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Last Name in Search field "Chadalavada"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User admin role in Search results "Role: Administrator"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  ###@Smoke @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Active Users search by Fist Name, Last Name, Email, Role, Invalid data, pending user, deleted user
    Then Click Active Users on Manage Users
    Then Enter User First Name in Search field "John"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "John"
    Then Enter User Last Name in Search field "Solomon"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "Solomon"
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "kiran.chadalavada@itpeoplecorp.com"
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    #Jira: SLYN-15637 Then Show User admin role in Search results "Role: Administrator"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter pending users data in Search field "ajay1910@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    #Then Show User with Email containing "ajay1910@mailinator.com"
    Then Enter deleted users data in Search field "removeuserur@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Active Users search by First Name using First Name, Last Name, Email, Role, Invalid data
    Then Click Active Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "John"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "John"
    Then Enter User Last Name in Search field "Solomon"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter role in Search field "Internal Buyer"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Active Users search by Last Name using First Name, Last Name, Email, Role, Invalid data
    Then Click Active Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Trendy"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Last Name in Search field "Solomon"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "Solomon"
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    #Jira: SLYN-15637 Then Show User with Last name as "Administrator"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Active Users search by Email Address using First Name, Last Name, Email, Role, Invalid data
    Then Click Active Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Kiran"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "kiran"
    Then Enter User Last Name in Search field "Chadalavada"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "chadalavada"
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "kiran.chadalavada@itpeoplecorp.com"
    Then Enter role in Search field "Internal Buyer"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Active Users search by User Role using First Name, Last Name, Email, Role, Invalid data
    Then Click Active Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Kiran"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Last Name in Search field "Chadalavada"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Email Address in Search field "kiran.chadalavada@itpeoplecorp.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User Kiran Chadalavada in Search results "Role: Administrator"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Pending Users search by First Name, Last Name, Email, Role, Invalid data, pending user, deleted user
    Then Click Pending Users on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    # No ajay
    #Then Show User with First name as "Ajay"
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    #Then Show User with Last name as "Mudunuri"
    Then Enter User Email Address in Search field "ajayibmbuyeradmin@mailinator.com"
    Then Click on Enter Key on Manage User Search
    #Then Show User with Email containing "ajayibmbuyeradmin@mailinator.com"
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    #Jira: SLYN-15637 Then Show user "Role: Administrator"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter pending users data in Search field "ajayibmbuyer@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    #Then Show User with Email containing "ajayibmbuyeradmin@mailinator.com"
    Then Enter deleted users data in Search field "removeuserur@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Pending Users search by First Name using First Name, Last Name, Email, Role, Invalid data
    Then Click Pending Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Ajay"
    #Then Show No User message "You have no users matching this status"
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Email Address in Search field "ajayadminbuyer@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    #Jira: SLYN-15637 Then Show User with First name as "Administrator"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Pending Users search by Last Name using First Name, Last Name, Email, Role, Invalid data
    Then Click Pending Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    #Then Show User with Last name as "Mudunuri"
    Then Enter User Email Address in Search field "ajayadminbuyer@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    #Jira: SLYN-15637 Then Show User with Last name as "Administrator"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  ###@Smoke @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Pending Users search by Email Address using First Name, Last Name, Email, Role, Invalid data
    Then Click Pending Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    #Then Show User with Email containing "ajay"
    Then Enter User Last Name in Search field "PendingUser"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "pendinguser"
    Then Enter User Email Address in Search field "Automationpendinguser@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "automationpendinguser@mailinator.com"
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    #Jira: SLYN-15637 Then Show User with Email containing "administrator"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Pending Users search by User Role using First Name, Last Name, Email, Role, Invalid data
    Then Click Pending Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Email Address in Search field "ajayadminbuyer@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    #Jira: SLYN-15637
    Then Show User admin role in Search results "Role: Administrator"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Deleted Users search by Fist Name, Last Name, Email, Role, Invalid data, pending
    Then Click Deleted Users on Manage Users
    Then Enter User First Name in Search field "Automation"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Automation"
    Then Enter User Last Name in Search field "DeletedUser"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "DeletedUser"
    Then Enter User Email Address in Search field "automationdeleteduser@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "automationdeleteduser@mailinator.com"
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User admin role in Search results "Role: Administrator"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter pending users data in Search field "automationpendinguser@chainyard.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter deleted users data in Search field "automationdeleteduser@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show Remove User in Search Results Page "Email: automationdeleteduser@mailinator.com"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Deleted Users search by First Name using First Name, Last Name, Email, Role, Invalid data
    Then Click Deleted Users on Manage Users
    Then Select First Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Automation"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Automation"
    Then Enter User Last Name in Search field "DeletedUser"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Email Address in Search field "automationdeleteduser@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User with First name as "Administrator"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Deleted Users search by Last Name using First Name, Last Name, Email, Role, Invalid data
    Then Click Deleted Users on Manage Users
    Then Select Last Name from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Last Name in Search field "DeletedUser"
    Then Click on Enter Key on Manage User Search
    Then Show User with Last name as "DeletedUser"
    Then Enter User Email Address in Search field "ajayadminbuyer@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter role in Search field "Read only Admin"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  ###@Smoke @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Deleted Users search by Email Address using First Name, Last Name, Email, Role, Invalid data
    Then Click Deleted Users on Manage Users
    Then Select Email Address from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Automation"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "automation"
    Then Enter User Last Name in Search field "DeletedUser"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "deleteduser"
    Then Enter User Email Address in Search field "automationdeleteduser@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show User with Email containing "automationdeleteduser@mailinator.com"
    Then Enter role in Search field "Read Only Admin"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  @Regression @manageusersearch @manageusers @Buyer
  Scenario: Verify Manage Deleted Users search by User Role using First Name, Last Name, Email, Role, Invalid data
    Then Click Deleted Users on Manage Users
    Then Select User Role from Search By Dropdown on Manage Users
    Then Enter User First Name in Search field "Ajay"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Last Name in Search field "Mudunuri"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter User Email Address in Search field "ajayadminbuyer@mailinator.com"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Enter role in Search field "Administrator"
    Then Click on Enter Key on Manage User Search
    Then Show User admin role in Search results "Role: Administrator"
    Then Enter invalid data in Search field "asassaas"
    Then Click on Enter Key on Manage User Search
    Then Show No User message "You have no users matching this status"
    Then Logout from the system

  # pagination
  @Smoke @manageusersPagination @Buyer @manageusers @CDCI
  Scenario: Verify Prev button functionality on Discover Supplier page
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Prev button visibility and status on Discover Supplier page if row per page is 20
    Then Change row per page to twenty in manage user page
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 20
    Then Change row per page to twenty in manage user page
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  # pagination
  @Smoke @manageusersPagination @Buyer @manageusers @CDCI
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 20
    Then Change row per page to twenty in manage user page
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Prev button visibility on Discover Supplier page if row per page is 50
    Then Scroll Down the page
    Then Change row per page to fifty in manage users
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 50
    Then Scroll Down the page
    Then Change row per page to fifty in manage users
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  # pagination
  @Smoke @manageusersPagination @Buyer @manageusers @CDCI
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 50
    Then Scroll Down the page
    Then Change row per page to fifty in manage users
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  #Active Users tab on Manage Users page
  # pagination
  @Smoke @manageusersPagination @Buyer @manageusers
  Scenario: Verify Prev button functionality on Active users Discover Supplier page
    Then Click on Active Users tab on Manage Users page
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Prev button visibility and status on Discover Supplier page if row per page is 20
    Then Click on Active Users tab on Manage Users page
    Then Change row per page to twenty in manage user page
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 20
    Then Click on Active Users tab on Manage Users page
    Then Change row per page to twenty in manage user page
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  # pagination
  @Smoke @manageusersPagination @Buyer @manageusers @CDCI
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 20
    Then Click on Active Users tab on Manage Users page
    Then Change row per page to twenty in manage user page
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Prev button visibility on Discover Supplier page if row per page is 50
    Then Click on Active Users tab on Manage Users page
    Then Scroll Down the page
    Then Change row per page to fifty in manage users
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Next button visibility and status on Active Users Discover Supplier page if row per page is 50
    Then Click on Active Users tab on Manage Users page
    Then Scroll Down the page
    Then Change row per page to fifty in manage users
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  # pagination
  @Smoke @manageusersPagination @Buyer @manageusers @CDCI
  Scenario: Verify Next button and Prev button functionality on Active Users Discover Supplier page if row per page is 50
    Then Click on Active Users tab on Manage Users page
    Then Scroll Down the page
    Then Change row per page to fifty in manage users
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  #Click on Pending Users tab on Manage Users page
  # pagination
  #@Smoke @manageusersPagination @Buyer @manageusers
  Scenario: Verify Prev button functionality on Discover Supplier page
    Then Click on Pending Users tab on Manage Users page
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  #@Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Prev button visibility and status on Discover Supplier page if row per page is 20
    Then Click on Pending Users tab on Manage Users page
    Then Change row per page to twenty in manage user page
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  #@Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 20
    Then Click on Pending Users tab on Manage Users page
    Then Change row per page to twenty in manage user page
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  # pagination
  #@Smoke @manageusersPagination @Buyer @manageusers
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 20
    Then Click on Pending Users tab on Manage Users page
    Then Change row per page to twenty in manage user page
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  #@Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Prev button visibility on Discover Supplier page if row per page is 50
    Then Click on Pending Users tab on Manage Users page
    Then Scroll Down the page
    Then Change row per page to fifty in manage users
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  #@Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 50
    Then Click on Pending Users tab on Manage Users page
    Then Scroll Down the page
    Then Change row per page to fifty in manage users
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  # pagination
  #@Smoke @manageusersPagination @Buyer @manageusers
  Scenario: Verify Next button and Prev button functionality on Discover Supplier page if row per page is 50
    Then Click on Pending Users tab on Manage Users page
    Then Scroll Down the page
    Then Change row per page to fifty in manage users
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  #Click on Deleted Users tab on Manage Users page
  # pagination
  @Smoke @manageusersPagination @Buyer @manageusers @CDCI
  Scenario: Verify Prev button functionality on Deleted Users Discover Supplier page
    Then Click on Deleted Users tab on Manage Users page
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Prev button visibility and status on Deleted Users Discover Supplier page if row per page is 20
    Then Click on Deleted Users tab on Manage Users page
    Then Change row per page to twenty in manage user page
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  #@Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Next button visibility and status on Discover Supplier page if row per page is 20
    Then Click on Pending Users tab on Manage Users page
    Then Change row per page to twenty in manage user page
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  # pagination
  @Smoke @manageusersPagination @Buyer @manageusers @CDCI
  Scenario: Verify Next button and Prev button functionality on Deleted Users Discover Supplier page if row per page is 20
    Then Click on Deleted Users tab on Manage Users page
    Then Change row per page to twenty in manage user page
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Prev button visibility on Deleted users Discover Supplier page if row per page is 50
    Then Click on Deleted Users tab on Manage Users page
    Then Scroll Down the page
    Then Change row per page to fifty in manage users
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  # pagination
  @Regression @manageusersPagination @Buyer @manageusers
  Scenario: Verify Next button visibility and status on Deleted users Discover Supplier page if row per page is 50
    Then Click on Deleted Users tab on Manage Users page
    Then Scroll Down the page
    Then Change row per page to fifty in manage users
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  # pagination
  @Smoke @manageusersPagination @Buyer @manageusers @CDCI
  Scenario: Verify Next button and Prev button functionality on Deleted users Discover Supplier page if row per page is 50
    Then Click on Deleted Users tab on Manage Users page
    Then Scroll Down the page
    Then Change row per page to fifty in manage users
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Smoke @manageusers @Buyer @manageusers @CDCI
  Scenario: As a buyer user, I want to see the list of users in the tabular form.
    And Show "Name" in the table header in manage users
    And Show "Email" in the table header in manage users
    And Show "Role" in the table header in manage users
    And Show "Status" in the table header in manage users
    And Show "Last Logged In" in the table header in manage users
    Then Show the list of users in tabluar form is "true"
    Then Logout from the system

  @Smoke @manageusers @Buyer @manageusers @CDCI
  Scenario: Verify if the Buyer be able to sort the list by Name, Role, Last Logged In, Status
    And Verify "Name" button is enabled to sort the list in manage users
    And Verify "Role" button is enabled to sort the list in manage users
    And Verify "Status" button is enabled to sort the list in manage users
    And Verify "Last Logged In" button is enabled to sort the list in manage users
    Then Logout from the system

  @Smoke @manageusers @Buyer @manageusers @CDCI
  Scenario: Verify if the status ‘Removed' be renamed to 'Access Removed’
    Then Click "Filter by" button
    Then Expand "Status" in Filter
    Then Click on Access Removed checkbox under Filter By
    Then Click "Search" button
    #Then Search for the new user using email address
    Then Verify the status renamed to "Access Removed"
    Then Logout from the system

  @Smoke @manageusers @Buyer @manageusers @CDCI @reinvite
  Scenario: As a buyer user, I should be able to reinvite the user with the status 'Access Removed' to TYS by clicking on the icon ‘Re-invite User’
    Then Click "Filter by" button
    Then Expand "Status" in Filter
    Then Click on Access Removed checkbox under Filter By
    Then Wait for 5 seconds
    Then Enter User First Name in Search field "@gmail"
    Then Click "Search" button
    And Click Reinvite user button on manage users page
    Then Click "Resend" button
    Then Show Toast message "User has been re-invited successfully"
    Then Logout from the system

  @Smoke @manageusers @Buyer @manageusers @CDCI
  Scenario: As a buyer user when providing an email ID during inviting a new user, if a domain name is not listed then the application should show an error.
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User Modal "nodomain"
    Then Enter Confirmation Email on Invite a New User Modal "nodomain"
    Then Show Error message under EmailID as "Invalid email address"
    Then Logout from the system

  @Smoke @manageusers @Buyer @manageusers @CDCI
  Scenario: As a buyer user I should validate all the required fields on invite user in manage users Page
    Then Click on Invite a New User button on Manage Users page
    Then Click on Send Invite button on Invite a New User Modal
    And Show error message as "Required" under "First Name" under invite new User
    And Show error message as "Required" under "Last Name" under invite new User
    And Show error message as "Required" under "Email ID" under invite new User
    And Show error message as "Required" under "Confirm Email ID" under invite new User
    And Show error message as "Required" under "Role" under invite new User
    Then Logout from the system

  @Smoke @manageusers @Buyer @manageusers @CDCI @filterby
  Scenario: Verify as a buyer user should  apply filter and able to search with first ,last name ,email
    Then Click "Filter by" button
    Then Enter User First Name in Search field "Sai Kiran"
    Then Click "Search" button
    Then Show User with First name as "Buyer"
    Then Click Clearall link in manage users
    Then Click "Filter by" button
    Then Enter User Last Name in Search field "Sandapeta"
    Then Click "Search" button
    Then Show User with Last name as "Sandapeta"
    Then Click Clearall link in manage users
    Then Click "Filter by" button
    Then Enter User Email Address in Search field "testsandapeta@mailinator.com"
    Then Click "Search" button
    Then Show User with Email containing "testsandapeta@mailinator.com"
    Then Click Clearall link in manage users
    Then Logout from the system

  @Smoke @manageusers @Buyer @manageusers @CDCI @filterby
  Scenario: Verify Manage Users, Filterby search using First Name, Last Name, Email, Role, Invalid data
    Then Click "Filter by" button
    Then Enter User First Name in Search field "Buuuuuuuuuuuu"
    Then Click "Search" button
    Then Show No User message "You have no users matching this status"
    Then Click Clearall link in manage users
    Then Click "Filter by" button
    Then Enter User Last Name in Search field "Pghynbjut"
    Then Click "Search" button
    Then Show No User message "You have no users matching this status"
    Then Click Clearall link in manage users
    Then Click "Filter by" button
    Then Enter User Email Address in Search field "testmyfilter@mailinator.com"
    Then Click "Search" button
    Then Show No User message "You have no users matching this status"
    Then Click Clearall link in manage users
    Then Logout from the system

  @Smoke @manageusers @Buyer @manageusers @CDCI @filterby
  Scenario: Verify as a buyer apply filter upon click on filter role then it should  filter list using search rile and multi check options
    Then Click "Filter by" button
    Then Expand Role in Filter
    And Click "Administrator" checkbox under Filter By Role
    And Verify "Administrator" added under Search rile
    And Click "Internal Buyer" checkbox under Filter By Role
    And Verify "Internal Buyer" added under Search rile
    And Click "Read Only Admin" checkbox under Filter By Role
    And Verify "Read Only Admin" added under Search rile
    Then Click "Search" button
    And Verify the filter "Role" is applied
    Then Logout from the system

  @Smoke @manageusers @Buyer @manageusers @CDCI @filterby
  Scenario: Verify as a buyer apply filter upon click on filter status then it should filter list using search status and multi check status options
    Then Click "Filter by" button
    Then Expand "Status" in Filter
    Then Click on Active Users checkbox under Filter By
    Then Click on Access Removed checkbox under Filter By
    Then Click "Search" button
    And Verify the filter "Status" is applied
    Then Logout from the system

  @Smoke @manageusers @Buyer @manageusers @CDCI @filterby
  Scenario: Verify as a buyer apply filter upon click on filter tab reset filter then user should able to reset  applier filters
    Then Click "Filter by" button
    Then Expand "Status" in Filter
    Then Click on Active Users checkbox under Filter By
    Then Click on Access Removed checkbox under Filter By
    Then Expand Role in Filter
    And Click "Administrator" checkbox under Filter By Role
    Then Click "Search" button
    Then Click "Filter by" button
    Then Click "Reset Filter" button
    And Click Close icon in apply filters
    Then Logout from the system

  @Smoke @manageusers @Buyer @manageusers @CDCI @expandedview
  Scenario: Verify if a user can see the user’s access information in the expanded view for a pending user
    Then Click "Filter by" button
    Then Expand "Status" in Filter
    Then Click on Pending Users checkbox under Filter By
    Then Click "Search" button
    And Click on Expand arrow of user in manage users
    And Show "First Invitation Sent:" label under user expanded view
    And Show "Last Reminder Sent" label under user expanded view
    And Show "Reminder Invites Left:" label under user expanded view
    And Show "Mail Status: " label under user expanded view
    Then Click Clearall link in manage users
    Then Logout from the system

  @Smoke @manageusers @Buyer @manageusers @CDCI @expandedview
  Scenario: Verify if a user can see the user’s access information in the expanded view for a Active user
    Then Click "Filter by" button
    Then Expand "Status" in Filter
    Then Click on Active Users checkbox under Filter By
    Then Click "Search" button
    And Click on Expand arrow of user in manage users
    And Show "Created Date" label under user expanded view
    Then Click Clearall link in manage users
    Then Logout from the system

  @Smoke @manageusers @Buyer @manageusers @CDCI @expandedview
  Scenario: Verify if a user can see the user’s access information in the expanded view for a Access Removed user
    Then Click "Filter by" button
    Then Expand "Status" in Filter
    Then Click on Access Removed checkbox under Filter By
    Then Click "Search" button
    And Click on Expand arrow of user in manage users
    And Show "Created Date" label under user expanded view
    And Show "Access Removed Date" label under user expanded view
    Then Click Clearall link in manage users
    Then Logout from the system

  @Smoke @manageusers @Buyer @CDCI @reinviteuser @SanitySuiteCheck @SanityCheck
  Scenario: As a user, I should be able to send the re-invite for the users, whose access are removed and verify the status changed to Active
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    #Then Select "Administrator" in Role dropdown
    Then Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Select a Language from the dropdown on Invite a New User Modal "English"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to "
    Then Logout from the system
    #maildrop registration
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier" from maildrop
    Then Click on "REGISTER NOW" link from maildrop
    Then Switch to "new TYS" tab
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    #Then Click TYS Terms & Conditions checkbox
    Then Click "Continue" button
    Then Switch to "Maildrop" tab
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 5 seconds
    Then Logout from the system
    When Enter EmailAdress in Email Address field "automation@maildrop.cc"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Wait for 5 seconds
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Click "Filter by" button
    And Enter Email in the search box under filterby
    Then Click "Search" button
    And Click on Remove Access button in manage users Page
    Then Switch to the active window
    Then Click "Delete" button
    Then Wait for 15 seconds
    And Verify the Status as "Access Removed"
    Then Wait for 15 seconds
    And Click Reinvite user button on manage users page
    Then Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    Then Click "Resend" button
    Then Show Toast message "User has been re-invited successfully"
    Then Logout from the system
    #maildrop registration
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier" from maildrop
    Then Click on "Create Password" button from maildrop
    Then Switch to "new TYS" tab
    Then Enter reinvite password in Password field
    Then Enter reinvite password in Confirm Password field
    #Then Click TYS Terms & Conditions checkbox
    Then Click "Continue" button
    Then Switch to "Maildrop" tab
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Save New Password" button
    Then Wait for 5 seconds
    #Then Logout from the system
    When Enter EmailAdress in Email Address field "automation@maildrop.cc"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Wait for 5 seconds
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Click "Filter by" button
    And Enter Email in the search box under filterby
    Then Click "Search" button
    And Verify status "Active" for invited user in manage users
    Then Logout from the system
