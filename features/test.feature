@editpatient
Feature: Editing patient information.
  I should be able to get into a patient's profile and edit it.

@editpatient
Scenario: I want to access a test account and test out the
 different features on the patient page.
Given my app is running
#Temp solution until update
And I touch "Update"
Then I wait for 10 seconds
Then I touch on screen 10 from the left and 10 from the top
Then I touch on screen 10 from the left and 10 from the top
Then I wait

Then I swipe right
And I touch "Patients"
#Just in case I am already on the Patients page
Then I touch on screen 500 from the left and 50 from the top
And I wait
Then I use the native keyboard to enter "test" into the "Search" input field
#TODO: Be able to select a specific patient vs touching on screen (L:14,15)
And I wait
Then I touch on screen 100 from the left and 500 from the top
#Then I touch on screen 100 from the left and 500 from the top
#Should be on profile now in this case
And I wait
Then I touch "Edit"
Then I wait
Then I clear input field number 1
#First name
Then I use the native keyboard to enter "I am" into input field number 1
And I wait
Then I touch done
And I wait
#Last name
Then I clear input field number 3
Then I use the native keyboard to enter "changing some info" into input field number 3
Then I wait
Then I touch "SAVE"
Then I wait

#I have set an ID for this button because otherwise it cannot be found.
#Then I touch the "letsgetstarted" button
#Then I wait for 3 seconds
#TODO: Be able to select certain items by ID or at least use touch.
#Then I touch the "ADD" button
#And I wait
#Then I touch the "REMOVE" button
#And I wait
#Then I touch the "CANCEL" button
#And I wait

#Now we go into Notes
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
#Then I use the native keyboard to enter "test1234" into input field number 1
Then I touch "iconFlagDefault"
Then I touch "CANCEL"
And I wait

#Now into Home Therapy Plan
Then I touch "Home Therapy Plan"
And I wait
#Now lets create a plan with 1 activity, save it, then edit it and remove it.
Then I touch "CREATE PLAN"
And I wait
Then I touch "ADD"
And I wait
Then I touch "SAVE"
And I wait
Then I touch "EDIT PLAN"
And I wait
Then I touch list item number 1
And I wait
Then I touch "REMOVE"
And I wait
Then I touch "SAVE"
And I wait
#END Plan

#Lets set name back for future testing
#Should be on profile now in this case
And I wait
Then I touch "Edit"
Then I wait
Then I clear input field number 1
#First name
Then I use the native keyboard to enter "Adam" into input field number 1
And I wait
Then I touch done
And I wait
#Last names
Then I clear input field number 3
Then I use the native keyboard to enter "Testing" into input field number 3
Then I wait
Then I touch "SAVE"
Then I wait

#Check Messages and return to Dashboard
Then I touch "Messages"
And I wait and wait
Then I touch "Back"
And I wait
Then I touch "hamburger"
And I wait

#Lets return to Dashboard for future testing
Then I touch "Dashboard"
Then I wait and wait
