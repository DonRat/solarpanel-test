@add-numbers
Feature:
  As a website user
   I want the ensure that the Solar panel cashback  page is calculating based on the Electricty bill amount is working as intended

  Scenario: test3 Calculate solar-panel-cashback with 1 solar panel and  electricty bill greater than 500

When I follow "Solar panel cashback"
    Then I should see "Calculate solar panel cashback" 

    When I go to "solar-panel-cashback"
    And I fill in "income" with "550000" 
    And I fill in "bill" with "600" 
And I fill in "solarPanels" with "1" 	
   And I press the "Get my cashback amount" button 
    Then I should see "Your cashback"
    And I should see "NZD 4.67"

    
  Scenario: test4 Calculate solar-panel-cashback with 1 solar panel and  electricty bill greater than 500

When I follow "Solar panel cashback"
    Then I should see "Calculate solar panel cashback" 

    When I go to "solar-panel-cashback"
    And I fill in "income" with "550000" 
    And I fill in "bill" with "800" 
And I fill in "solarPanels" with "1" 	
   And I press the "Get my cashback amount" button 
    Then I should see "Your cashback"
    And I should see "NZD 138"


  Scenario: test5 Calculate solar-panel-cashback with 1 solar panel and  electricty bill greater than 1000

When I follow "Solar panel cashback"
    Then I should see "Calculate solar panel cashback" 

    When I go to "solar-panel-cashback"
    And I fill in "income" with "550000" 
    And I fill in "bill" with "1190.50" 
And I fill in "solarPanels" with "1" 	
   And I press the "Get my cashback amount" button 
    Then I should see "Your cashback"
    And I should see "NZD 398.33"


  Scenario: test6 Calculate solar-panel-cashback with 1 solar panel and  electricty bill greater than 1000 to verify maximum cashback

When I follow "Solar panel cashback"
    Then I should see "Calculate solar panel cashback" 

    When I go to "solar-panel-cashback"
    And I fill in "income" with "550000" 
    And I fill in "bill" with "1200.50" 
And I fill in "solarPanels" with "1" 	
   And I press the "Get my cashback amount" button 
    Then I should see "Your cashback"
    And I should see "NZD 400.00"



  Scenario: test 7 Calculate solar-panel-cashback with 3 solar panel and  electricty bill greater than 500 to verify maximum cashback

	When I follow "Solar panel cashback"
    Then I should see "Calculate solar panel cashback"

    When I go to "solar-panel-cashback"
    And I fill in "income" with "59810.11" 
    And I fill in "bill" with "500.99" 
And I fill in "solarPanels" with "3" 	
   And I press the "Get my cashback amount" button 
    Then I should see "Your cashback"
    And I should see "NZD 0.33"
