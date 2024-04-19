**Assignment Project Information**

### Weather App Overview

The Weather App is a simple yet effective tool for checking the weather forecast for various cities. It provides users with current weather information, a 7-day forecast, and the ability to browse different cities for weather updates.

### Main Page:

Upon opening the app, users are greeted with the main page displaying the current weather conditions for a default location (e.g., New York).
The main page also offers two options: "See 7-Day Forecast" and "Browse Cities."

When users select the "See 7-Day Forecast" option, they are directed to a page displaying the weather forecast for the next 7 days.
Each day's forecast includes the day of the week and the expected temperature.

Choosing "Browse Cities" leads users to a page listing multiple cities.
Users can select any city from the list to view detailed weather information for that specific location.

### Widgets Used:

- Container
- Column
- Row
- Stack
- Image
- Text
- ListView
- Key Features:

Display current weather conditions (temperature, description, icon).
Show hourly forecast for the next 24 hours.
Present a 7-day weather forecast.
Allow users to switch between different locations.
Responsive design for various screen sizes.

### Adaptation for Screen Resolutions:

- **Text and Icon Sizes**: Text and icon sizes are calculated based on the screen width using `MediaQuery`, ensuring more proportional display across various devices.
- **Element Placement**: Flexible spacing and alignment are used to adapt the placement of elements depending on the available space on the screen.
- **Animation**: Animation duration and other parameters can be adjusted based on the screen resolution or user preferences.
