@add-numbers
Feature:
  As a website user
   I want the ensure that the Solar panel cashback  page is accessible from navigation and functions as intended

  Scenario: Solar panel cashback 
    When I go to "home"
    Then I should see "Solar panel cashback" in the ".header " element
    When I follow "Solar panel cashback"
    Then I should see "Calculate solar panel cashback" 

  Scenario: Calculate solar-panel-cashback
    When I go to "solar-panel-cashback"
    And I fill in "income" with "50000" 
    And I fill in "bill" with "1100" 
    And I fill in "solarPanels" with "1" 	
   And I press the "Get my cashback amount" button 
    Then I should see "Your cashback"
    And I should see "NZD 400"
