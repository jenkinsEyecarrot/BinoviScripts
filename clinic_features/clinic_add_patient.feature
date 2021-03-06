@addpatient
Feature: Adding a Patient.
  I should be able to add a patient and fill out the proper fields.

@addpatient
Scenario: I create an adult patient and try to fill out all fields.
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

#Navigate to Patients page
Then I swipe right
Then I touch "Patients"
#Just in case I am already on the page
Then I touch on screen 500 from the left and 50 from the top
And I wait
Then I touch the "Add Patient" button
And I wait
#First name
Then I use the native keyboard to enter "Tom" into input field number 1
And I wait
Then I touch done
And I wait
#Last name
Then I use the native keyboard to enter "Testing" into input field number 3
Then I wait
Then I touch done
Then I wait
Then I change the date picker date to "July 28 1998"
Then I wait
Then I touch the "Done" button
#Then I touch "patientemail"
Then I use the native keyboard to enter "tweitler+31@gmail.com" into the "patientemail" input field
Then I wait
Then I touch the "Guardian" button
Then I wait
Then I touch the "Patient" button
#Then I use the native keyboard to enter "tweitler+10@gmail.com" into input field number 1
#We wait for prompt to pop up after looking for existing email
Then I wait
#Then I touch "OK"
#Then I wait
#Patient should now be created
Then I touch the "SAVE" button
Then I wait
Then I use the native keyboard to enter "Tom" into the "Search" input field
Then I wait and wait
