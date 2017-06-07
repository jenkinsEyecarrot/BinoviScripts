@addpatient
Feature: Adding a Patient.
  I should be able to add a patient and fill out the proper fields.

@addpatient
Scenario: I create an adult patient and try to fill out all fields.
Given my app is running
#Temp solution until update
And I touch "Update"
Then I wait for 10 seconds
Then I touch on screen 10 from the left and 10 from the top
Then I touch on screen 10 from the left and 10 from the top

#Navigate to Patients page
Then I swipe right
Then I touch "Patients"
#Just in case I am already on the page
Then I touch on screen 500 from the left and 50 from the top
And I wait
Then I touch the "Add Patient" button
And I wait
#First name
Then I use the native keyboard to enter "IamA" into input field number 1
And I wait
Then I touch done
And I wait
#Last name
Then I use the native keyboard to enter "TestAccount" into input field number 3
Then I wait
Then I touch done
Then I wait
Then I change the date picker date to "July 28 2010"
Then I wait
Then I touch the "Done" button
Then I use the native keyboard to enter "someemailexample@domain.com" into input field number 4
#Then I wait
#Then I touch the "Guardian" button
#Then I wait
#Then I use the native keyboard to enter "tweitler+10@gmail.com" into input field number 1
#We wait for prompt to pop up after looking for existing email
Then I wait
#Then I touch "OK"
#Then I wait
#Then I touch the "SAVE" button
#Then I wait
#Patient should now be created
