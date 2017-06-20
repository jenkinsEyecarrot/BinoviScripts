@profilepasschange
Feature: Testing out different password change cases on Profile page.

@profilepasschange
Scenario: I should be able to navigate to the profile page and change my
  password. It should not let me change unless the proper conditions are met.
  We will attempt 4 different cases for this scenario.
  Given my app is running
  And I wait
  Then I swipe right
  Then I wait to see "Settings"
  And I touch "Settings"
  Then I wait
  #Just in case I am already on the page
  Then I touch on screen 500 from the left and 50 from the top
  And I wait
  Then I touch "Profile"

  #Case 1: User attempting to ignore CURRENT Password
  Then I wait
  Then I touch "Current Password"
  And I touch done
  Then I use the native keyboard to enter "test12345" into input field number 2
  And I touch done
  Then I wait and wait
  Then I wait for "Change Password" to appear
  And I touch "OK"
  Then I wait
  #END Case 1

  #Case 2: Incorrect CURRENT but valid NEW and RE-ENTER
  When I touch "Current Password"
  Then I use the native keyboard to enter "test54321" into input field number 1
  And I touch done
  Then I use the native keyboard to enter "test12345" into input field number 2
  And I touch done
  Then I use the native keyboard to enter "test12345" into input field number 3
  When I touch "Apply"
  And I wait
  Then I wait for "Change Password" to appear
  And I touch "OK"
  Then I wait
  #END Case 2

  #Case 3: Correct CURRENT but NEW does not match criteria check
  Then I touch "Current Password"
  Then I use the native keyboard to enter "test1234" into input field number 1
  And I touch done
  Then I use the native keyboard to enter "testr" into input field number 2
  And I touch done
  Then I wait
  Then I wait for "Change Password" to appear
  And I touch "OK"
  Then I wait
  #END Case 3

  #Case 4: Correct Password Change Case
  Then I touch "Current Password"
  And I use the native keyboard to enter "test1234" into input field number 1
  Then I touch done
  Then I use the native keyboard to enter "test12345" into input field number 2
  And I touch done
  Then I use the native keyboard to enter "test12345" into input field number 3
  And I touch "Apply"
  Then I wait
  Then I wait for "Change Password" to appear
  Then I touch "OK"
  And I wait
  #END Case 4

  #Lets try logging in with our new password
  Then I swipe right
  Then I wait
  Then I touch "Logout"
  #Start CORRECT login case
  Then I touch "Username"
  Then I wait
  And I use the native keyboard to enter "tyler" into input field number 1
  Then I touch done
  And I use the native keyboard to enter "test12345" into input field number 2
  Then I wait
  Then I touch the "Submit" button
  #Should be logged in again
  And I wait and wait
  Then I swipe right
  Then I touch "Settings"
  And I wait
  Then I touch "Profile"

  #Change password back for future testing
  Then I touch "Current Password"
  And I use the native keyboard to enter "test12345" into input field number 1
  Then I touch done
  And I use the native keyboard to enter "test1234" into input field number 2
  Then I touch done
  Then I use the native keyboard to enter "test1234" into input field number 3
  When I touch "Apply"
  And I wait
  Then I wait for "Change Password" to appear
  When I touch "OK"
  Then I wait

  #Lets return to Dashboard for future testing
  Then I swipe right
  Then I touch "Dashboard"
