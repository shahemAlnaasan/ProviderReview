import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_review/provider_review/model.dart';

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
                selector: (context, modelS1) => modelS1.showOne,
                builder: (context, model, child) {
                  print("Text");
                  return Text("$model");
                }),
            Selector<Model, String>(
                selector: (context, modelS2) => modelS2.showTwo,
                builder: (context, model, child) {
                  print("Text1");
                  return Text(model);
                }),
            Consumer<Model>(builder: (context, model, child) {
              // print("button");
              return MaterialButton(
                onPressed: () {
                  model.changeName();
                },
                color: Colors.blue,
                child: const Text("Do something"),
              );
            }),
            Consumer<Model>(builder: (context, model, child) {
              // print("button1");
              return MaterialButton(
                onPressed: () {
                  model.changeName1();
                },
                color: Colors.blue,
                child: const Text("Do something"),
              );
            }),
          ],
        ),
      ),
    );
  }
}
