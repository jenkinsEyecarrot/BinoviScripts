@profilepasschange
Feature: Testing out different password change cases on Profile page.

@profilepasschange
Scenario: I should be able to navigate to the profile page and change my
  password. It should not let me change unless the proper conditions are met.
  Given my app is running
  #Temp solution until update
  And I touch "Update"
  Then I wait for 10 seconds
  Then I touch on screen 10 from the left and 10 from the top
  Then I touch on screen 10 from the left and 10 from the top
  And I wait
  #START Change password attempts
  Then I swipe right
  Then I touch "Settings"
  And I wait
  #Just in case I am already on the page
  Then I touch on screen 500 from the left and 50 from the top
  And I wait
  Then I touch "Profile"

  #Case 1: User attempting to ignore CURRENT Password
  Then I touch "Current Password"
  Then I touch done
  Then I use the native keyboard to enter "test12345" into input field number 2
  Then I touch done
  And I wait and wait
  Then I wait for "Change Password" to appear
  Then I touch "OK"
  And I wait
  #END Case 1

  #Case 2: Incorrect CURRENT but valid NEW and RE-ENTER
  Then I touch "Current Password"
  Then I use the native keyboard to enter "test54321" into input field number 1
  Then I touch done
  Then I use the native keyboard to enter "test12345" into input field number 2
  Then I touch done
  Then I use the native keyboard to enter "test12345" into input field number 3
  And I touch "Apply"
  And I wait
  Then I wait for "Change Password" to appear
  Then I touch "OK"
  And I wait
  #END Case 2

  #Case 3: Correct CURRENT but NEW does not match criteria check
  Then I touch "Current Password"
  Then I use the native keyboard to enter "test1234" into input field number 1
  Then I touch done
  Then I use the native keyboard to enter "testr" into input field number 2
  And I touch done
  And I wait
  Then I wait for "Change Password" to appear
  Then I touch "OK"
  And I wait
  #END Case 3

  #Case 4: Correct Password Change Case
  Then I touch "Current Password"
  Then I use the native keyboard to enter "test1234" into input field number 1
  Then I touch done
  Then I use the native keyboard to enter "test12345" into input field number 2
  Then I touch done
  Then I use the native keyboard to enter "test12345" into input field number 3
  And I touch "Apply"
  And I wait
  Then I wait for "Change Password" to appear
  Then I touch "OK"
  And I wait
  #END Case 4

  #Change password back for future testing
  Then I touch "Current Password"
  Then I use the native keyboard to enter "test12345" into input field number 1
  Then I touch done
  Then I use the native keyboard to enter "test1234" into input field number 2
  Then I touch done
  Then I use the native keyboard to enter "test1234" into input field number 3
  And I touch "Apply"
  And I wait
  Then I wait for "Change Password" to appear
  Then I touch "OK"
  And I wait

  #Lets return to Dashboard for future testing
  Then I swipe right
  Then I touch "Dashboard"
  #And I wait and wait
