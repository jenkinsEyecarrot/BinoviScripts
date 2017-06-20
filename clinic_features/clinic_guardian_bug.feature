#THIS DOES NOT WORK AT THE MOMENT!!!!!!
@guardianbug
Feature: Editing patient information.
  I should be able to get into a patient's profile and edit it.

@guardianbug
Scenario: I want to access a test account page and test out the
 different features on the patient page. I will test out the Search
 functionality as well as the ability to change patient information.
Given my app is running
Then I swipe right
Then I wait to see "Patients"
And I touch "Patients"
#Just in case I am already on the Patients page
Then I touch on screen 500 from the left and 50 from the top
And I wait
Then I use the native keyboard to enter "Jeff" into the "Search" input field
And I wait
Then I touch "Test, Jeff"
#Should be on profile now in this case
And I wait
Then I touch "Edit"
Then I wait
Then I touch the "Guardian" button
Then I wait
Then I clear input field number 1
Then I use the native keyboard to enter "tweitler+10@gmail.com" into input field number 1
#We wait for prompt to pop up after looking for existing email
Then I wait and wait
Then I touch "OK"
Then I wait
Then I touch "SAVE"
Then I wait
Then I touch "Back"
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
#Now we should see the correct Guardian name under Jeffs name
Then I wait and wait
Then I use the native keyboard to enter "Jeff" into the "Search" input field
And I wait
Then I touch "Test, Jeff"
Then I wait
Then I touch "Edit"
Then I wait
Then I touch the "Guardian" button
Then I wait
Then I clear input field number 1
Then I use the native keyboard to enter "tweitler+12@gmail.com" into input field number 1
#We wait for prompt to pop up after looking for existing email
#PROMPT DOES NOT SHOW UP A SECOND TIME. This only seems to happen on emulator. I can do it fine
#on the application using a physical device.
Then I wait and wait
Then I touch "OK"
Then I wait
Then I touch "SAVE"
Then I wait
Then I touch "Back"
Then I wait and wait
#Then I touch the "SAVE" button
#Then I wait
