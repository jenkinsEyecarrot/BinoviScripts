@testing
Feature: Testing out features on Explore page specifically.

@testing
Scenario: I want to be able to access the Explore page and View/Add/Edit/Create
 different activities.
 Given my app is running
 Then I wait for the "hamburger" button to appear
 Then I touch "hamburger"
 Then I touch "Explore"
 Then I wait
 #Just in case I am already on the page
 Then I touch on screen 500 from the left and 50 from the top
 And I wait

 #Lets attempt to add an activity
 Then I touch "Add Activity"
 Then I wait
 Then I touch "Short Description"
 Then I touch "description"
 Then I wait
 #Then I use the native keyboard to enter "Description goes here" into the "description" text field
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
 Then I touch the "OK" button
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
 Then I use the native keyboard to enter "Angels in" into the "Search" text field
 Then I wait
 Then I touch "hamburger"
 Then I wait

 #Lets return to Dashboard for future testing
 Then I touch "Dashboard"
 Then I wait and wait
