@login
Feature: Testing login cases

#This first case is going to check for the notifications pop up. It will fail if its not there.
Scenario: Incorrect login case. Random username and password.
  Given my app is running
  Then I wait for 3 seconds
  Then I wait and wait
  Then I touch "Username"
  Then I wait
  #Incorrect username
  And I use the native keyboard to enter "test1234" into input field number 1
  Then I wait
  Then I touch "Password"
  And I wait
  #Incorrect password
  Then I use the native keyboard to enter "test1234" into input field number 2
  Then I wait
  Then I touch "LOGIN"
  Then I wait and wait
  Then I touch "Ok"
  And I wait and wait

Scenario: Incorrect login case 2. Correct username but incorrect password.
  Given my app is running
  Then I wait for 3 seconds
  Then I touch "Username"
  Then I wait
  #Correct username
  And I use the native keyboard to enter "tweitler" into input field number 1
  Then I wait
  Then I touch "Password"
  And I wait
  #Incorrect password
  Then I use the native keyboard to enter "wrong1234" into input field number 2
  Then I wait
  Then I touch "LOGIN"
  Then I wait and wait
  Then I touch "Ok"
  And I wait and wait

@logincorrect
Scenario: Correct login case. Correct username and correct password.
  Given my app is running
  Then I wait for 3 seconds
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
