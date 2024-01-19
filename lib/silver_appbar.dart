import 'package:flutter/material.dart';

class SilverAppBarTest extends StatelessWidget {
  const SilverAppBarTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            flexibleSpace: Text('data'),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
              itemCount: 100,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.amber,
                  height: 80,
                  margin: EdgeInsets.all(5),
                  child: Center(child: Text('item $index', textScaleFactor: 2)),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
