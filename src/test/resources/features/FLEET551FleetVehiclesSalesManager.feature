@FLEET-551
Feature: SalesManager edit specific car

	Background:

		Given the user is on the login page
		Given the user logs in using "sales_manager_username" and "sales_manager_password"
		When the user navigates to "Fleet" to "Vehicles"
		And the user clicks any car in the list
		And the user clicks car edit button

	@FLEET-564
	Scenario: StoreManager edit specific car licence plate FLEET-551
		Then the user should be able to edit licence plate with "SPECIALFLEETCAR"

	@FLEET-565
	Scenario: Store Manager edit specific car Transmission and Fuel type FLEET-551
		Then the user should be able to select Transmission type as "Automatic"
		And the user should be able to select Fuel type as "Diesel"
		And the information after save should be verified as "Automatic" and "Diesel"

	@FLEET-566
	Scenario: Store Manager edit car tags FLEET-551
		Then the user could be able to check all the car tags

	@FLEET-567
	Scenario: Store Manager edit car driver name FLEET-551
		Then the user should not be able to enter driver name length more than 255 characters
