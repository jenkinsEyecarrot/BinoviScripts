@settings
Feature: Testing out the different options on the settings menu.

Scenario: Navigating through settings options. Profile will be ignored as it is covered
  in another feature.
  Given I see the text "Username"
  Then I enter "tweitler" into input field number 1
  Then I wait
  Then I enter "test1234" into input field number 2
  Then I wait
  Then I press "LOGIN"
  Then I see the text "Skip"
  Then I press "Skip"
  #Let it load
  Then I wait for 4 seconds
  Then I click on screen 95% from the left and 10% from the top
  Then I wait

#My Team
  Then I press "MY TEAM"
  Then I wait
  And I scroll up
  And I scroll down
  Then I press "Request Appointment"
  Then I wait
  And I press "Cancel"
  Then I wait
  Then I click on screen 95% from the left and 10% from the top
  Then I wait

#Walkthrough
  Then I press "WALKTHROUGH"
  Then I wait
  Then I swipe right
  Then I swipe right
  Then I swipe right
  Then I swipe right
  Then I swipe right
  Then I wait
  Then I swipe left
  Then I swipe left
  Then I swipe left
  Then I swipe left
  Then I swipe left
  Then I wait
  Then I press "Skip"
  Then I wait for 3 seconds
  Then I click on screen 95% from the left and 10% from the top
  Then I wait

#Languages
  Then I press "LANGUAGES"
  Then I wait for 3 seconds
  Then I click on screen 95% from the left and 10% from the top
  Then I wait

#Legal
  Then I press "LEGAL"
  Then I wait
  Then I press "Cancel"
  Then I wait
  #TODO: Check the privacy policy and terms of service for now I cant
  #because Im not sure how to go back from these pages. Worst case we seperate with a new scenario

#Logout and login test
  Then I press "LOGOUT"
  Then I wait
  Then I press "No"
  Then I wait
  Then I press "LOGOUT"
  Then I wait
  Then I press "Yes"
  And I wait for 3 seconds
  Given I see the text "Username"
  Then I enter "tweitler" into input field number 1
  Then I wait
  Then I enter "test1234" into input field number 2
  Then I wait
  Then I press "LOGIN"
  Then I wait for 7 seconds
  Then I click on screen 95% from the left and 10% from the top

#Help
  Then I press "HELP"
  And I wait to see "support.eyecarrot.com"
