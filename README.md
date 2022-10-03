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


## Screenshots

Screen #1:

![Simulator Screen Shot - iPhone 14 Pro Max - 2022-10-03 at 22 50 12](https://user-images.githubusercontent.com/14857315/193645394-d4de74ec-c036-48ed-a56d-21dc2f578918.png)

Screen #2

![Simulator Screen Shot - iPhone 14 Pro Max - 2022-10-03 at 22 50 22](https://user-images.githubusercontent.com/14857315/193645500-a33bea34-00a9-4766-8b3a-7127ec0a6bc8.png)

Screen #3

![Simulator Screen Shot - iPhone 14 Pro Max - 2022-10-03 at 22 50 27](https://user-images.githubusercontent.com/14857315/193645558-2cdabf3c-cb3f-4f81-99c8-80aa8b15b8ab.png)

