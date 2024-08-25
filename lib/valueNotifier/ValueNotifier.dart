import 'package:flutter/material.dart';
import 'package:provider_review/valueNotifier/ClassValueNotifier.dart';

class Valuenotifier extends StatelessWidget {
  const Valuenotifier({super.key});

  @override
  Widget build(BuildContext context) {
    MyValueNotifier ContollerNotifier = MyValueNotifier(0);
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: ContollerNotifier,
        builder: (Context, controllerNotifier, child) {
          return Container(
            width: 1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${ContollerNotifier.value}",
                  style: TextStyle(fontSize: 30),
                ),
                MaterialButton(
                  onPressed: () {
                    ContollerNotifier.increment();
                  },
                  child: Text("Tap me"),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
