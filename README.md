# server_driven_ui_app

A new Flutter project.

- The Server Driven UI App is a Flutter-based mobile application that displays UI components dynamically fetched from a server.
- The Login Screen should have 2 fields 
- Username field with Label Username where the User can enter a Unique username 
- Password Field which has the label Password on it and when the user enters the password should be hidden with *
- The app fetches a JSON file from the server and converts the data into Flutter widgets

---

# Why server Driven UI

---

- Server driven UI gives the Flexibility the Change the UI for the App, without releasing a new version of the app.

---

# Code Documentation

The UI components are created using a Widget Mapping class, which maps the JSON data to the corresponding Flutter widget.

The app's home screen displays the UI components fetched from the server using a SingleChildScrollView widget. The app has three Dart files:

1. **widget_mapping.dart:** This file contains a MapDataToWidget class that maps JSON data to Flutter widgets. The class has a mapWidget function that takes in a JSON string and converts it into Flutter widgets. It also contains a toWidget function that maps JSON data to a specific Flutter widget.
2. **fire_base_remote_config.dart:** This file contains a FireBaseRemoteConfigClass class that fetches the JSON data from the server using Firebase Remote Config. The class has an intializeConfig function that sets the fetch and cache parameters and fetches the JSON data from the server.
3. **signin_screen.dart:** This file contains a SigninScreen class that displays the UI components fetched from the server. It contains the Username Text Form Field and the password TextFormField where the User can enter the details. The class has a fetchJsonData function that fetches the JSON data from the server and passes it to the MapDataToWidget class. The resulting widgets are stored in a List variable, which is displayed using a SingleChildScrollView widget.
4. The backend for the project is hosted on Firebase. We use the Remote Config feature in Firebase to provide the JSON data that drives our app. The JSON is not hard coded into the App but is present in the Firebase remote config.

**Overall, the Server Driven UI App is a simple yet powerful tool that allows developers to create dynamic UI components without having to modify the app's source code.**
