# codlab4

One more thing. Device rotations!
Let me introduce a widget that can handle it - OrientationBuilder

OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Text('portrait');
        } else {
          return Text('lanscape');
        }
      },
    );
And your homework will extend WeatherContainer widget and render it in landscape orientation:
homework
