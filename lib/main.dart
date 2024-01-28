import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:testing/widgets/grid_tile_bar.dart';
import 'package:testing/widgets/indexed_stack.dart';
import 'package:testing/widgets/off_stage.dart';
import 'package:testing/widgets/orientation_builder.dart';
import 'package:testing/widgets/radio_list_tile.dart';
import 'package:testing/widgets/rich_text.dart';
import 'package:testing/widgets/simple_dialog.dart';

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
      home: SimpleDialogWidget(),
    );
  }
}
