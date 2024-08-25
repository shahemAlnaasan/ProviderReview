import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_review/ChangeNotifierAndConsumerAndSelector/model.dart';

class ChangeNotifierAndConsumer extends StatelessWidget {
  const ChangeNotifierAndConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: Scaffold(
        body:
            //
            Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Selector<Model, int>(
                selector: (context, modelS1) => modelS1.ShowOne,
                builder: (context, model, child) {
                  print("Text");
                  return Text("$model");
                }),
            Selector<Model, String>(
                selector: (context, modelS2) => modelS2.ShowTwo,
                builder: (context, model, child) {
                  print("Text1");
                  return Text("$model");
                }),
            Consumer<Model>(builder: (context, model, child) {
              // print("button");
              return MaterialButton(
                onPressed: () {
                  model.ChangeName();
                },
                child: const Text("Do something"),
                color: Colors.blue,
              );
            }),
            Consumer<Model>(builder: (context, model, child) {
              // print("button1");
              return MaterialButton(
                onPressed: () {
                  model.ChangeName1();
                },
                child: Text("Do something"),
                color: Colors.blue,
              );
            }),
          ],
        ),
      ),
    );
  }
}
