@login
Feature: Testing login cases

Scenario: Incorrect login case. Random username and password.
  Given I see the text "Username"
  Then I enter "test1234" into input field number 1
  Then I wait
  Then I enter "test1234" into input field number 2
  Then I wait
  Then I press "LOGIN"
  Then I wait
  Then I press "Ok"
  And I wait

Scenario: Incorrect login case 2. Correct username but incorrect password.
  Given I see the text "Username"
  Then I enter "tweitler" into input field number 1
  Then I wait
  Then I enter "gssgf54645" into input field number 2
  Then I wait
  Then I press "LOGIN"
  Then I wait
  Then I press "Ok"
  And I wait

@logincorrect
Scenario: Correct login case. Correct username and correct password.
  #Given I see the text "Username"
  Then I wait for 20 seonds
  Then I enter "tweitler" into input field number 1
  Then I wait
  Then I enter "test1234" into input field number 2
  Then I wait
  Then I press "LOGIN"
  Then I wait
  Then I see the text "Skip"
  Then I press "Skip"
  Then I wait
