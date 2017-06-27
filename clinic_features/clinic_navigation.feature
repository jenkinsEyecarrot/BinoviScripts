@navigation
Feature: To navigate through the application

@navigation
Scenario: I will navigate through the different menu options and explore
  some of the different options. Pages that are not tested in detail are
  covered by another scenario.
  Given my app is running
  Then I wait for 5 seconds
  Then I swipe right
  Then I touch "Patients"

  #Just in case I am already on the page
  Then I touch on screen 500 from the left and 50 from the top
  And I wait
  Then I swipe up
  Then I swipe up
  Then I swipe down
  Then I swipe down
  Then I swipe right
  And I wait
  Then I touch "Explore"
  And I wait
  Then I swipe right
  And I touch "News"
  And I wait
  Then I swipe right

  #Now we wait for 10 seconds because the portal could take a while to load
  #This could cause issues later
  Then I touch "Portal"
  And I wait for 10 seconds
  Then I swipe right

  #Settings: We will ignore profile here as it is covered fully in @profilepasschange
  Then I touch "Settings"
  And I wait
  Then I touch "Tutorial"
  And I wait
  Then I swipe left
  Then I swipe left
  Then I swipe left
  Then I swipe left
  And I wait
  Then I swipe right
  Then I swipe right
  Then I swipe right
  Then I swipe right
  And I wait
  Then I touch "Language"
  Then I toggle the switch
  And I wait
  Then I touch "French"
  Then I touch "Apply"
  And I wait
  Then I toggle the switch
  Then I touch "FR-Apply"
  And I wait
  Then I swipe right
  Then I touch "Support"
  Then I wait for 7 seconds
  Then I touch on screen 10 from the left and 10 from the top
  Then I touch on screen 10 from the left and 10 from the top
  And I wait

  #Testing logout and login
  Then I swipe right
  And I wait
  Then I touch "Logout"

  #Start CORRECT login case
  Then I touch "Username"
  Then I wait
  And I use the native keyboard to enter "tyler" into input field number 1
  Then I touch done
  And I use the native keyboard to enter "test1234" into input field number 2
  Then I wait
  Then I touch the "Submit" button
  #Should be logged in again
  And I wait and wait

  #Lets check out stuff on Dashboard before stopping
  Then I swipe right
  Then I touch "Dashboard"
  Then I touch "LOWEST"
  And I wait
  Then I touch "HIGHEST"
  And I wait and wait
  Then I touch list item number 1
  And I wait
  Then I swipe right
  Then I touch "Dashboard"
  And I wait
  Then I touch list item number 3
  And I wait
  Then I swipe right
  Then I touch "Dashboard"
  Then I wait and wait
