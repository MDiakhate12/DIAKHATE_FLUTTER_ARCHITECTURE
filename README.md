# NEW FLUTTER ARCHITECTURE FOR PRODUCTION
This project is a starter architecture for flutter using firebase and provider. 
### Folder structure
![Image of Folder Structure](https://github.com/MDiakhate12/DIAKHATE_FLUTTER_ARCHITECTURE/blob/master/tree.jpg)
***
### Folder explanation

  ### 1. config
    Contains general purpose configuration files.
  *** 
  ### 2. constants
    Contains constant files (strings, colors, variables, routes...).
  *** 
  ### 3. models
    Contains database object models and serialization methods. 
  *** 
  ### 4. router
    Contains the app navigation logic and navigation style.
  *** 
  ### 5. services
    Contains all services that communicate with an external source (database, API...)
  *** 
  ### 6. ui
    Contains all ui code.
    *** 
   ##### common_widgets
    Contains widgets that are common to all pages.
    *** 
   ##### views
    Contains actual pages and respective logic.
   ##### Example of view structure
   ###### home
   ###### home_widgets
          Contains all widgets that are specific to the home page.
   ###### home_view
          Contains all the presentation code for the home page ui.
   ###### home_builder
          Contains helper functions to build differents parts of the ui for a cleaner code in the home_view.
   ###### home_state
          Contains ui logic and state management code.**
