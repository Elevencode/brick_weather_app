# brick_weather_app

A simple weather app. Name is inspired by hyperion brick :)
UI was disigned on-the-go ;)

## Getting Started

An app has to acceptance criteria down below:

1. Screen #1 has a TextField for city selecting;
2. Screen #2 has to show a weather details in selected city - temperature, pressure, humidity, etc.
3. Screen #3 has a two buttons;
4. First button is for navigation to Screen #1 to select another city
5. Second button is for navigation to Screen #3 containing a forecast for 3-5 days (important: forecast has to sort from min to max temperature)


## Stack

1. Weather API: https://openweathermap.org/api/
2. BLoC as state manager
3. GetIt as DI realization
4. SharedPreferences as local storage wrapper to keep city name


