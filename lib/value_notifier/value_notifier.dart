import 'package:flutter/material.dart';
import 'package:provider_review/value_notifier/class_value_notifier.dart';

class Valuenotifier extends StatelessWidget {
  const Valuenotifier({super.key});

  @override
  Widget build(BuildContext context) {
    MyValueNotifier contollerNotifier = MyValueNotifier(0);
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: contollerNotifier,
        builder: (Context, controllerNotifier, child) {
          return Container(
            width: 1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${contollerNotifier.value}",
                  style: TextStyle(fontSize: 30),
                ),
                MaterialButton(
                  onPressed: () {
                    contollerNotifier.increment();
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
