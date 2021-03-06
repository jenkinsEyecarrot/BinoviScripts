@explore
Feature: Testing out features on Explore page specifically.

@explore
Scenario: I want to be able to access the Explore page and View/Add/Edit/Create
 different activities.
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

 #Start explore...
 Then I wait and wait
 And I wait for 5 seconds
 Then I touch "hamburger"
 Then I wait
 Then I touch "Explore"
 Then I wait
 #Just in case I am already on the page
 Then I touch on screen 500 from the left and 50 from the top
 And I wait

 #First we can toggle to see deleted activities
 Then I toggle the switch
 Then I wait
 Then I toggle the switch

 #Now lets check a couple activities out
 Then I touch list item number 1
 Then I wait
 Then I swipe up
 Then I swipe down
 Then I touch list item number 3
 Then I wait
 Then I swipe up
 Then I swipe down
 Then I touch list item number 5
 Then I wait
 Then I swipe up
 Then I swipe down
 Then I wait

 #Lets attempt to add an activity
 Then I touch "Add Activity"
 Then I wait
 Then I use the native keyboard to enter "Test Activity" into text field number 1
 Then I touch "Activity Summary"
 Then I use the native keyboard to enter "We will make a test activity" into input field number 1

 #No purpose for this activity
 Then I touch "Purpose"
 Then I touch "Category"
 Then I wait
 Then I touch "Select"
 Then I wait
 Then I touch "Balance"
 Then I touch "SAVE"
 Then I wait
 Then I touch "Materials"
 Then I touch "Select"
 #Then I touch "Eye patch"
 Then I touch "SAVE"
 Then I wait
 Then I touch "Short Description"
 Then I touch "Detailed Steps"
 Then I touch "Photos"
 Then I touch "Videos"
 Then I touch "Assignable"
 Then I toggle the switch
 Then I toggle the switch
 Then I touch "Preview"
 Then I wait
 Then I touch "Save Draft"
 Then I wait
 Then I touch "buttonProgressDefault"

 #Should be hidden now lets show it again
 Then I touch "buttonProgressDefault"
 Then I wait

 #Lets edit and delete our activity
 Then I touch "Edit"
 Then I wait
 Then I touch "Photos"
 Then I touch "Delete"
 Then I wait for "Delete Draft" to appear
 Then I touch "Delete"

 #Next we will check search functionality is working
 Then I touch the "Search" text field
 Then I use the native keyboard to enter "Some activity" into the "Search" text field
 Then I wait
 Then I touch "hamburger"
 Then I wait

 #Lets return to Dashboard for future testing
 Then I touch "Dashboard"
 Then I wait and wait
