import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Testing App Performance Tests', () {
    FlutterDriver driver;

//connects the app to the driver extension that you enabled in app.dart
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

//closes the connection after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });
  });
}
