#NEED TO BE LOGGED IN FIRST
Feature: Testing out the different options on the settings menu.

@settings
Scenario: Navigating through settings options. Profile will be ignored as it is covered
  in another feature.
  Given my app is running
  Then I wait for 7 seconds
  #This is how we access settings menu for now
  Then I touch on screen 500 from the left and 50 from the top
  Then I wait

#My Team
  Then I touch "MY TEAM"
  Then I wait
  And I swipe up
  And I swipe down
  Then I touch "Request Appointment"
  Then I wait
  And I touch "Cancel"
  Then I wait
  Then I touch on screen 500 from the left and 50 from the top
  Then I wait

#Walkthrough
  Then I touch "WALKTHROUGH"
  Then I wait
  Then I swipe left
  Then I swipe left
  Then I swipe left
  Then I swipe left
  Then I swipe left
  Then I wait
  Then I swipe right
  Then I swipe right
  Then I swipe right
  Then I swipe right
  Then I swipe right
  Then I wait
  Then I touch "Skip"
  Then I wait and wait
  Then I touch on screen 500 from the left and 50 from the top
  Then I wait

#Languages
  Then I touch "LANGUAGES"
  Then I toggle the switch
  Then I touch "French"
  Then I wait
  Then I touch "Save"
  Then I wait and wait
  Then I touch on screen 500 from the left and 50 from the top
  Then I touch "FR-LANGUAGES"
  Then I wait
  Then I toggle the switch
  Then I wait
  Then I touch "FR-Save"
  Then I wait and wait
  Then I touch on screen 500 from the left and 50 from the top
  Then I wait

#Legal
  Then I touch "LEGAL"
  Then I wait
  Then I touch "Cancel"
  Then I wait
  #TODO: Check the privacy policy and terms of service for now I cant
  #because Im not sure how to go back from these pages. Worst case we seperate
  #with a new scenario
  #Then I touch on screen 500 from the left and 50 from the top

#Logout and login test
  Then I touch "LOGOUT"
  Then I wait
  Then I touch "No"
  Then I touch "LOGOUT"
  Then I wait
  Then I touch "Yes"
  And I wait and wait
  Then I touch "Username"
  Then I wait
  #Correct username
  And I use the native keyboard to enter "tweitler" into input field number 1
  Then I wait
  Then I touch "Password"
  And I wait
  #Correct password
  Then I use the native keyboard to enter "test1234" into input field number 2
  Then I wait
  #I should now be logged in
  Then I touch "LOGIN"
  Then I wait for 7 seconds
  Then I touch on screen 500 from the left and 50 from the top

#Help
  Then I touch "HELP"
  And I wait to see "support.eyecarrot.com"
  Then I wait and wait
