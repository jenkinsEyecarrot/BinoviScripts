@navigation
#NEED TO BE LOGGED IN FIRST
Feature: Testing navigation through the menus

Scenario: Navigating through menus. Home, History, News, and Messages.
  Given my app is running
  Then I wait for 7 seconds

  Then I touch "History"
  Then I wait
  Then I touch "Tuesday, June 20, 2017"
  Then I wait
  Then I touch on screen 10 from the left and 50 from the top
  Then I wait
  Then I touch "Thursday, May 25, 2017"
  Then I wait
  Then I touch on screen 10 from the left and 50 from the top
  Then I wait and wait

  Then I touch "News"
  Then I wait
  Then I swipe up
  And I swipe down
  Then I wait

  Then I touch "Messages"
  Then I wait
  Then I swipe up
  And I swipe down
  Then I wait

  Then I touch "Home"
  And I touch "Balance - Level 3"
  Then I wait
  Then I touch "Cancel"