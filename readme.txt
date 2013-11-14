Daniel Garcia
gamda_yo@csu.fullerton.edu

CS 411 - Assignment 4
Mass Transit

The app behaves properly. All requirements were met.

The app has a bug where the map does not display the correct
location the first time a stop's detail view is loaded.

Added an extra view that displays the arrival times of the particular stop. This view needs more work. Currently, it displays all the stop times with a section for each service_id provided by the agency. The service_id is displayed as it is given by the agency right now, this is helpful for OCTA because they are self-explanatory (WD, SA, SU) but not for Metrolink because they use numbers. In the future, the app should either give the user the option to select a day and then display the schedule or display a more meaningful message than the service_id.