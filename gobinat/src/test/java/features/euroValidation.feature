Feature: Euro Validation

Background: Start the applicaiton
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    
    @Smoke @EuroValidation @Supplier
    Scenario: Verify amount entered accepts 0 when currency is Euro
    Then Enter data in Email Address field "validateeuro@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
		Then Click on Financial tab
		Then Select "Euro (EUR)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
    	Then Scroll Down the page
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Brazilian Real (BRL)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Chilean Peso (CLP)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Colombian Peso (COP)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Czech Koruna (CZK)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Danish Krone (DKK)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Hungarian Forint (HUF)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Brazilian Real (BRL)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Indonesian Rupiah (IDR)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Norwegian Krone (NOK)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "South African RAND (ZAR)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Swedish Krona (SEK)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Bulgarian Lev (BGN)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Croatian kuna (HRK)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Polish złoty (PLN)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Romanian leu (RON)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Serbian dinar (RSD)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Russian Rouble (RUB)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Ukrainian hryvnia (UAH)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "Turkish lira (TRY)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Close toast message
		Then Select "West African CFA franc (XOF)" in "Select your Currency" dropdown
		Then Enter "10000000.10" in "revenue" field for "2020"
		Then Enter "10000000.10" in "revenue" field for "2019"
		Then Enter "10000000.10" in "revenue" field for "2018"
		Then Enter "1000000.10" in "assets" field for "2020"
		Then Enter "1000000.10" in "assets" field for "2019"
		Then Enter "1000000.10" in "assets" field for "2018"
		Then Enter "1000000.10" in "liability" field for "2020"
		Then Enter "1000000.10" in "liability" field for "2019"
		Then Enter "1000000.10" in "liability" field for "2018"
		Then Enter "1000000.10" in "profit" field for "2020"
		Then Enter "1000000.10" in "profit" field for "2019"
		Then Enter "1000000.10" in "profit" field for "2018"
		Then Click "Save and Continue" button 2
		Then Show Toast message "Successfully updated Financial Profile"
		Then Logout from the system