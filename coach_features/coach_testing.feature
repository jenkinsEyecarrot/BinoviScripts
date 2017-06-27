@sessiontest
Feature: Testing out the different possibilities of a patient session.

Scenario: Lets start a session and explore the different options.
  Given my app is running
  Then I wait for 7 seconds
  Then I touch "Home"
  Then I wait
  #Need to give it a bit of time to load up
  Then I touch "Start"
  Then I wait and wait
  Then I touch "START SESSION"
  And I wait for 7 seconds
  Then I touch "NEXT"
  And I wait
  Then I touch "NEXT"
  And I wait
  Then I touch "FINISH"
  And I wait
  Then I touch on screen 300 from the left and 150 from the top
  And I use the native keyboard to enter "Hi this is a note" into input field number 1
  Then I wait and wait
  #Then I touch "SUBMIT"
  #And I wait and wait
  #Then I touch "Ok"
  #And I wait and wait
