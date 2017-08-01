#This will not work unless you are logged out
@login
Feature: Login check.
 Should not log you in until you have proper info filled out.

@login
Scenario: I enter some random info and I should get an error
Given my app is running
Then I wait to see "Username"
And I wait for 2 seconds

#Start INCORRECT login case
Then I touch "Username"
And I use the native keyboard to enter "test1234" into input field number 1
Then I touch done
And I use the native keyboard to enter "test1234" into input field number 2
When I touch the "Submit" button
And I wait
Then I should see "Login Error"

@logincorrect
Scenario: I enter my correct info and it should log me in
Given my app is running
Then I wait to see "Username"
And I wait for 2 seconds

#Start CORRECT login case
Then I touch "Username"
Then I wait
And I use the native keyboard to enter "meaganlemke" into input field number 1
Then I touch done
And I use the native keyboard to enter "Hilaobvo4?" into input field number 2
When I touch the "Submit" button
#I should now be logged in
Then I wait for 5 seconds
Then I swipe left
Then I swipe left
Then I swipe left
Then I swipe left
Then I swipe left
Then I touch "Get Started"
Then I wait and wait
