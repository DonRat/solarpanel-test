@add-numbers
Feature:
  As a website user
   I want the ensure that the Solar panel cashback  page is calculation for number of panels is working as intended

  
  Scenario:  test 1 Calculate solar-panel-cashback with no solar panel and minimum electricty bill

When I follow "Solar panel cashback"
    Then I should see "Calculate solar panel cashback" 

    When I go to "solar-panel-cashback"
    And I fill in "income" with "550000" 
    And I fill in "bill" with "5000" 
    And I fill in "solarPanels" with "0" 	
   And I press the "Get my cashback amount" button 
    Then I should see "Your cashback"
    And I should see "NZD 0"


  Scenario: test2 Calculate solar-panel-cashback with 1 solar panel and minimum electricty bill

 When I follow "Solar panel cashback"
    Then I should see "Calculate solar panel cashback" 

    When I go to "solar-panel-cashback"
    And I fill in "income" with "550000" 
    And I fill in "bill" with "500" 
And I fill in "solarPanels" with "1" 	
   And I press the "Get my cashback amount" button 
    Then I should see "Your cashback"
    And I should see "NZD 0"


