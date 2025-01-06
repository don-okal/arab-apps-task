Libraries/Packages Used
fl_chart: For rendering the line chart and graphs.
get: For state management and dependency injection.
get_it: For service locator pattern and managing the app's dependencies.
Assumptions Made During Development
The app is designed to be run on both Android and iOS platforms, assuming the user has the necessary environment set up for Flutter development on both platforms.
The data used in the app comes from a local JSON file named orders.json. The app loads and processes this file to display chart data.
The app assumes an internet connection for certain functionalities, such as fetching data from remote servers or APIs (if applicable).
The chart data being rendered is assumed to be fetched dynamically from the local orders.json file, and it comes in a specific format (e.g., a map of dates and their associated values).
