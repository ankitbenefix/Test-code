import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:testing/widgets/stepper.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Material(
      child: Container(
        color: Colors.purple,
        alignment: Alignment.center,
        // also can add icon with text for a better look
        child: Text(
          kReleaseMode
              ? 'Oops... something went wrong!'
              : details.exceptionAsString(),
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Testing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: StepperWidget(),
    );
  }
}
