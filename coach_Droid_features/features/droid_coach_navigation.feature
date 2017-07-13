@navigation
Feature: Testing navigation through the menus

Scenario: Navigating through menus. Home, History, News, and Messages.
  Given I see the text "Username"
  Then I enter "tweitler" into input field number 1
  Then I wait
  Then I enter "test1234" into input field number 2
  Then I wait
  Then I press "LOGIN"
  Then I see the text "Skip"
  Then I press "Skip"
  Then I wait
  #History
  Then I press "History"
  Then I wait for 5 seconds
  And I scroll up
  And I scroll down
  Then I wait
  Then I press "Tuesday, June 20, 2017"
  Then I wait
  #Then I click on screen 10 from the left and 50 from the top
  Then I wait
  #News
  Then I press "News"
  Then I wait
  Then I scroll up
  And I scroll down
  Then I wait
  #Messages
  Then I press "Messages"
  Then I wait
  Then I scroll down
  And I scroll up
  Then I wait
  #Home
  Then I press "Home"
  And I press "Balance - Level 1"
  Then I wait
  Then I press "Cancel"
  Then I wait
