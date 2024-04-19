import 'package:flutter/material.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Forecast'),
      ),
      body: WeatherBody(),
    );
  }
}

class WeatherBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CurrentWeather(),
          SizedBox(height: 20.0),
          HourlyForecast(),
          SizedBox(height: 20.0),
          DailyForecast(),
        ],
      ),
    );
  }
}

class CurrentWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Placeholder data
    String temperature = '25°C';
    String description = 'Sunny';
    String location = 'New York';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Current Weather',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        Text(
          '$temperature, $description',
          style: TextStyle(fontSize: 18.0),
        ),
        Text(
          'Location: $location',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 20.0),
        // Add custom weather icon here
        // Replace Image.asset(...) with actual weather icon
        Image.asset(
          'assets/weather_icons/sunny.png',
          height: 100.0,
          width: 100.0,
        ),
      ],
    );
  }
}

class HourlyForecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Placeholder data
    List<String> hours = ['1 PM', '2 PM', '3 PM', '4 PM', '5 PM'];
    List<String> temperatures = ['27°C', '28°C', '29°C', '30°C', '29°C'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hourly Forecast',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: hours.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(hours[index]),
              trailing: Text(temperatures[index]),
            );
          },
        ),
      ],
    );
  }
}

class DailyForecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Placeholder data
    List<String> days = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday'
    ];
    List<String> temperatures = ['25°C', '26°C', '27°C', '28°C', '27°C'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '7-Day Forecast',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: days.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(days[index]),
              trailing: Text(temperatures[index]),
            );
          },
        ),
      ],
    );
  }
}
