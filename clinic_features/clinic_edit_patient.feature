@editpatient
Feature: Editing patient information.
  I should be able to get into a patient's profile and edit it.

@editpatient
Scenario: I want to access a test account page and test out the
 different features on the patient page. I will test out the Search
 functionality as well as the ability to change patient information.
Given my app is running
Then I swipe right
And I touch "Patients"
#Just in case I am already on the Patients page
Then I touch on screen 500 from the left and 50 from the top
And I wait

#Now we will choose a test patient named Adam Testing
Then I use the native keyboard to enter "Adam" into the "Search" input field
And I wait
Then I touch "Testing, Adam"
#Should be on profile now
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

#Now lets create a plan with 1 activity, save it, edit it, and remove it.
Then I touch "CREATE PLAN"
And I wait
Then I touch "ADD"
And I wait
Then I touch "NOTES"
And I wait
Then I touch "DETAILS"
And I wait
Then I touch "SETTINGS"
Then I wait
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
