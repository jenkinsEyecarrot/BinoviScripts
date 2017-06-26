@passchange
#NEED TO BE LOGGED IN FIRST
Feature: Trying out different login cases

Scenario: Case 1: Just random current password
  Given my app is running
  Then I wait for 7 seconds
  Then I touch on screen 500 from the left and 50 from the top
  Then I wait
  Then I touch "MY PROFILE"
  Then I wait
  Then I touch "Current Password"
  Then I wait
  Then I use the native keyboard to enter "test54321" into input field number 1
  Then I touch "Save"
  Then I wait
  Then I should see "Error"
  Then I touch "Ok"
  Then I wait

  Scenario: Case 2: Incorrect current password but matching new passwords
  Given my app is running
  Then I wait for 7 seconds
  Then I touch on screen 500 from the left and 50 from the top
  Then I wait
  Then I touch "MY PROFILE"
  Then I wait
  Then I touch "Current Password"
  Then I wait
  Then I use the native keyboard to enter "test54321" into input field number 1
  Then I wait
  Then I touch "New Password"
  Then I use the native keyboard to enter "newpass1" into input field number 2
  Then I touch "Confirm Password"
  Then I use the native keyboard to enter "newpass1" into input field number 3
  Then I touch "Save"
  Then I wait
  Then I should see "Error"
  Then I wait
  Then I touch "Ok"
  Then I wait

  Scenario: Case 3: Correct current password but non matching new passwords
  Given my app is running
  Then I wait for 7 seconds
  Then I touch on screen 500 from the left and 50 from the top
  Then I wait
  Then I touch "MY PROFILE"
  Then I wait
  Then I touch "Current Password"
  Then I wait
  Then I use the native keyboard to enter "test1234" into input field number 1
  Then I wait
  Then I touch "New Password"
  Then I use the native keyboard to enter "test1234" into input field number 2
  Then I touch "Confirm Password"
  Then I use the native keyboard to enter "newpass123" into input field number 3
  Then I touch "Save"
  Then I wait
  #This should be changed to "Error" after fix has been made. It shouldnt let you change
  #password in this case.
  Then I should see "Account Settings"
  Then I wait
  Then I touch "Ok"
  Then I wait
  #Now we need to login again
  Then I touch "Username"
  Then I wait
  And I use the native keyboard to enter "tweitler" into input field number 1
  Then I wait
  Then I touch "Password"
  And I wait
  Then I use the native keyboard to enter "test1234" into input field number 2
  Then I wait
  Then I touch "LOGIN"
  Then I wait and wait

  Scenario: Case 4: Correct current password and correct matching passwords
  Given my app is running
  Then I wait for 7 seconds
  Then I touch on screen 500 from the left and 50 from the top
  Then I wait
  Then I touch "MY PROFILE"
  Then I wait
  Then I touch "Current Password"
  Then I wait
  Then I use the native keyboard to enter "test1234" into input field number 1
  Then I wait
  Then I touch "New Password"
  Then I use the native keyboard to enter "test1234" into input field number 2
  Then I touch "Confirm Password"
  Then I use the native keyboard to enter "test1234" into input field number 3
  Then I touch "Save"
  Then I wait
  Then I should see "Account Settings"
  Then I wait
  Then I touch "Ok"
  Then I wait
  #Now we need to login again
  Then I touch "Username"
  Then I wait
  And I use the native keyboard to enter "tweitler" into input field number 1
  Then I wait
  Then I touch "Password"
  And I wait
  Then I use the native keyboard to enter "test1234" into input field number 2
  Then I wait
  Then I touch "LOGIN"
  Then I wait and wait
