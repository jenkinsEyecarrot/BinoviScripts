@passchange
Feature: Trying out different login cases

Scenario: Case 1: Just random current password
  Given I see the text "Username"
  Then I enter "tweitler" into input field number 1
  Then I wait
  Then I enter "test1234" into input field number 2
  Then I wait
  Then I press "LOGIN"
  Then I see the text "Skip"
  Then I press "Skip"
  Then I wait
  Then I click on screen 95% from the left and 10% from the top
  Then I wait
  Then I press "MY PROFILE"
  Then I wait
  Then I press "Current Password"
  Then I wait
  Then I enter "test54321" into input field number 1
  Then I press "Save"
  Then I wait
  Then I should see "Error"
  Then I press "Ok"
  Then I wait

  Scenario: Case 2: Incorrect current password but matching new passwords
  Given I see the text "PETER MOORE"
  And I wait for 7 seconds
  Then I click on screen 95% from the left and 10% from the top
  Then I wait
  Then I press "MY PROFILE"
  Then I wait
  Then I press "Current Password"
  Then I wait
  Then I enter "test54321" into input field number 1
  Then I wait
  Then I press "New Password"
  Then I enter "newpass1" into input field number 2
  Then I scroll down
  Then I press "Confirm Password"
  Then I enter "newpass1" into input field number 3
  Then I press "Save"
  Then I wait
  Then I should see "Error"
  Then I wait
  Then I press "Ok"
  Then I wait

  Scenario: Case 3: Correct current password but non matching new passwords
  Given I see the text "PETER MOORE"
  And I wait for 7 seconds
  Then I click on screen 95% from the left and 10% from the top
  Then I wait
  Then I press "MY PROFILE"
  Then I wait
  Then I press "Current Password"
  Then I wait
  Then I enter "test1234" into input field number 1
  Then I wait
  Then I press "New Password"
  Then I enter "test1234" into input field number 2
  Then I scroll down
  Then I press "Confirm Password"
  Then I enter "newpass123" into input field number 3
  Then I press "Save"
  Then I wait
  Then I should see "Account Settings"
  Then I wait
  Then I press "Ok"
  Then I wait
  #Now we need to login again
  Given I see the text "Username"
  Then I press "Username"
  Then I wait
  And I enter "tweitler" into input field number 1
  Then I wait
  Then I press "Password"
  And I wait
  Then I enter "test1234" into input field number 2
  Then I wait
  Then I press "LOGIN"
  Then I wait

  Scenario: Case 4: Correct current password and correct matching passwords
  Given I see the text "PETER MOORE"
  And I wait for 7 seconds
  Then I click on screen 95% from the left and 10% from the top
  Then I wait
  Then I press "MY PROFILE"
  Then I wait
  Then I press "Current Password"
  Then I wait
  Then I enter "test1234" into input field number 1
  Then I wait
  Then I press "New Password"
  Then I enter "test1234" into input field number 2
  Then I scroll down
  Then I press "Confirm Password"
  Then I enter "test1234" into input field number 3
  Then I press "Save"
  Then I wait
  Then I should see "Account Settings"
  Then I wait
  Then I press "Ok"
  Then I wait
  #Now we need to login again
  Given I see the text "Username"
  Then I press "Username"
  Then I wait
  And I enter "tweitler" into input field number 1
  Then I wait
  Then I press "Password"
  And I wait
  Then I enter "test1234" into input field number 2
  Then I wait
  Then I press "LOGIN"
  Then I wait
