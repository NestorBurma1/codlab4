import 'package:codlab4/weather.dart';
import 'package:flutter/material.dart';

class WeatherContainer extends StatelessWidget {
  final Weather weather;

  WeatherContainer({Key key, @required this.weather})
      : assert(weather != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _textPortrait(context, weather),
            Image.network(weather.iconUrl),
          ],
        );
      } else {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _textLandscape(context, weather),
            Image.network(weather.iconUrl),
          ],
        );
      }
    });
  }

  Column _textLandscape(BuildContext context, Weather _weather) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          '${_weather.locationName}',
          style: Theme.of(context).textTheme.display1,
          textAlign: TextAlign.center,
        ),
        Text(
          '( ${_weather.temperature} °C)',
          style: Theme.of(context).textTheme.display1,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Text _textPortrait(BuildContext context, Weather _weather) {
    return Text(
      '${_weather.locationName}: ${_weather.temperature} °C',
      style: Theme.of(context).textTheme.display1,
      textAlign: TextAlign.center,
    );
  }
}
