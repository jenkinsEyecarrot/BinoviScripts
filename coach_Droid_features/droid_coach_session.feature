@session
Feature: Testing out the different possibilities of a patient session.

Scenario: Lets start a session and explore the different options.
  Given I see the text "Username"
  Then I enter "tweitler" into input field number 1
  Then I wait
  Then I enter "test1234" into input field number 2
  Then I wait
  Then I press "LOGIN"
  Then I see the text "Skip"
  Then I press "Skip"
  Then I press "Home"
  Then I wait
  #We can start a session through here but we won't
  Then I press "Balance - Level 1"
  And I wait
  Then I press "Cancel"
  Then I wait
  Then I press "Start"
  Then I wait
  #Need to give it a bit of time to load up
  Then I press "START SESSION"
  And I wait for 7 seconds
  Then I press "NEXT"

  #Metronome
  Then I click on screen 95% from the left and 10% from the top
  Then I wait
  Then I press "START"
  Then I wait

  #Timer
  Then I click on screen 90% from the left and 10% from the top
  Then I wait
  #Timer and metronome should be going at this point
  Then I press "START"
  Then I wait for 5 seconds
  And I wait
  Then I press "NEXT"
  And I wait

  #End
  Then I press "FINISH"
  Then I wait for 3 seconds
  Then I press "SUBMIT"
  And I wait
  Then I press "Ok"
  Then I wait
