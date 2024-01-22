import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:testing/widgets/close_button.dart';
import 'package:testing/widgets/default_text_style.dart';
import 'package:testing/widgets/draggable_scrollable_sheet.dart';
import 'package:testing/widgets/error_widget.dart';
import 'package:testing/widgets/expand_icon.dart';
import 'package:testing/widgets/expansion_panel_list.dart';

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
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  };

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Testing',
      home: ExpansionPanelListWidget(),
    );
  }
}
