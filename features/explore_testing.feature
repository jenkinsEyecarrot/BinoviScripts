@exploretest
Feature: Testing out features on Explore page.

@exploretest
Scenario: I want to be able to access the Explore page and View/Add/Edit/Create
  a variety of activities.
 Given my app is running
 #Temp solution until I update app
 And I touch "Update"
 Then I wait for 10 seconds
 Then I touch on screen 10 from the left and 10 from the top
 Then I touch on screen 10 from the left and 10 from the top
 Then I wait
 Then I swipe right
 Then I wait
 Then I touch "Explore"
 Then I wait
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
 Then I touch "Attribute blocks"
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
 Then I use the native keyboard to enter "Angel" into the "Search" text field
 Then I wait
 Then I swipe right
 Then I wait
 #Lets return to Dashboard for future testing
 Then I touch "Dashboard"
 Then I wait and wait