@logincheck
Feature: Login check.
 Should not log you in until you have proper info filled out.

@logincheck
Scenario: I enter some random info and I should get an error
Given my app is running
#Temp solution until update
And I touch "Update"
Then I wait for 10 seconds
Then I touch on screen 10 from the left and 10 from the top
Then I touch on screen 10 from the left and 10 from the top

#Start INCORRECT login case
Then I touch "Username"
Then I wait
And I use the native keyboard to enter "test1234" into input field number 1
Then I touch done
And I use the native keyboard to enter "test1234" into input field number 2
When I touch the "Submit" button
And I wait
Then I should see "Login Error"

Scenario: I enter my correct info and it should log me in
Given my app is running
#Temp solution until update
And I touch "Update"
Then I wait for 10 seconds
Then I touch on screen 10 from the left and 10 from the top
Then I touch on screen 10 from the left and 10 from the top

#Start CORRECT login case
Then I touch "Username"
Then I wait
And I use the native keyboard to enter "tyler" into input field number 1
Then I touch done
And I use the native keyboard to enter "test1234" into input field number 2
When I touch the "Submit" button
#I should now be logged in
Then I wait for 5 seconds
