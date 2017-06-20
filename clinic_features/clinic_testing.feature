@test
Feature: For testing small aspects of the app

@test
Scenario: In this case we are testing out Dashboard
Given my app is running
Then I swipe right
Then I touch "Patients"
#Just in case I am already on the Patients page
Then I touch on screen 500 from the left and 50 from the top
And I wait
Then I use the native keyboard to enter "Adam" into the "Search" input field
#TODO: Be able to select a specific patient vs touching on screen (L:14,15)
And I wait
Then I touch "Testing, Adam"
#Then I touch on screen 100 from the left and 500 from the top
#Then I touch on screen 100 from the left and 500 from the top
#Should be on profile now in this case
Then I wait
Then I touch "Notes"
And I wait
Then I touch "Flagged"
And I wait
Then I touch "All"
And I wait
Then I touch "Add Note"
Then I use the native keyboard to enter "test1234" into input field number 1
Then I touch on screen 100 from the left and 400 from the top
#TODO: Enter text into the message field. Cannot at the moment as it has no ID.
#Then I use the native keyboard to enter "test1234"
Then I touch "iconFlagDefault"
Then I touch "CANCEL"
And I wait
