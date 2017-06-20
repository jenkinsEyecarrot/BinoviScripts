#NOT WORKING AT THE MOMENT. Cannot enter text into username or
#password field because it cannot find the fields.
@portal
Feature: Testing the Portal page. Including logging in and browsing options.

@portal
Scenario: I navigate to the Portal page, try some different login cases
  then explore options once I log in.
  Given my app is running
  And I touch "Update"
  Then I wait for 10 seconds
  Then I touch on screen 10 from the left and 10 from the top
  Then I touch on screen 10 from the left and 10 from the top
  Then I wait
  Then I swipe right
  And I touch "Portal"
  Then I wait
  Then I touch on screen 100 from the left and 500 from the top
  #Then I touch on screen 100 from the left and 500 from the top
  #Then I use the native keyboard to enter "tyler" into the "User Name" text field
  #Then I wait
