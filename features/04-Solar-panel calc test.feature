@add-numbers
Feature:
  As a website user
   I want the ensure that the Solar panel cashback  page is calculating as per spreadSheet 

  
  Scenario: Calculation test 1. income, bill & solar panels are  > basic allowed income, bill & # of panels. calc should return a amount > 0 but > 400 
 
When I follow "Solar panel cashback"
    Then I should see "Calculate solar panel cashback" 
  
    When I go to "solar-panel-cashback"
    And I fill in "income" with "60000" 
    And I fill in "bill" with "1000" 
    And I fill in "solarPanels" with "2" 	
   And I press the "Get my cashback amount" button 
    Then I should see "Your cashback"
    And I should see "NZD 271.33"

    
Scenario: Calculation test 2 zero returned, income, bill are  > basic allowed income, Nunber of Panles = 2, Calc should return a amount = 0  
When I follow "Solar panel cashback"
    Then I should see "Calculate solar panel cashback" 
  
    When I go to "solar-panel-cashback"
    And I fill in "income" with "80000" 
    And I fill in "bill" with "1000" 
    And I fill in "solarPanels" with "1" 	
   And I press the "Get my cashback amount" button 
    Then I should see "Your cashback"
    And I should see "NZD 0"

     

Scenario: Calculation test 3  Field Text validation for Special Characters

When I follow "Solar panel cashback"
    Then I should see "Calculate solar panel cashback"

    When I go to "solar-panel-cashback"
    And I fill in "income" with "!@#$$%%" 
    And I fill in "bill" with "!@#$$%%" 
    And I fill in "solarPanels" with "!@#$%^^" 	
   And I press the "Get my cashback amount" button 
    Then I should see "Your cashback"
    And I should see "NZD 0"


    

Scenario: Calculation test 4  Field Text validation Maximum fill fields 

 When I follow "Solar panel cashback"
    Then I should see "Calculate solar panel cashback"

    When I go to "solar-panel-cashback"
    And I fill in "income" with "11111111111111111111111111" 
    And I fill in "bill" with "11111111111111111111111111" 
    And I fill in "solarPanels" with "11111111111111111111111111" 	
   And I press the "Get my cashback amount" button 
    Then I should see "Your cashback"
    And I should see "NZD 400"



