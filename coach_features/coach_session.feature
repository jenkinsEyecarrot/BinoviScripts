@session
Feature: Testing out the different possibilities of a patient session.

Scenario: Lets start a session and explore the different options.
  Given my app is running
  Then I wait for 7 seconds
  Then I touch "Home"
  Then I wait
  #We can start a session through here but we won't
  Then I touch "Balance - Level 1"
  And I wait and wait
  Then I touch "Cancel"
  Then I wait
  Then I touch "Start"
  Then I wait and wait
  #Need to give it a bit of time to load up
  Then I touch "START SESSION"
  And I wait for 7 seconds
  Then I touch "NEXT"

  #Metronome
  Then I touch on screen 500 from the left and 50 from the top
  Then I wait
  Then I touch "START"
  Then I wait

  #Timer
  Then I touch on screen 320 from the left and 50 from the top
  Then I wait
  #Timer and metronome should be going at this point
  Then I touch "START"
  Then I wait for 5 seconds
  And I wait

  #Swipe through video/pictures
  Then I swipe left
  Then I swipe left
  Then I swipe left
  Then I swipe left
  Then I touch "NEXT"
  And I wait

  #End
  Then I touch "FINISH"
  Then I wait and wait
  Then I touch "SUBMIT"
  And I wait and wait
  Then I touch "Ok"
  And I wait and wait
