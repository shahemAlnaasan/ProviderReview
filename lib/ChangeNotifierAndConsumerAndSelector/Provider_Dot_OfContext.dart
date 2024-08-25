import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_review/ChangeNotifierAndConsumerAndSelector/model.dart';

class ProviderDotOfContext extends StatelessWidget {
  const ProviderDotOfContext({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: const Scaffold(
        body: WidgetChild(),
        //
      ),
    );
  }
}

class WidgetChild extends StatelessWidget {
  const WidgetChild({super.key});

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<Model>(context);
    print("context=========================");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(model.name1),
        MaterialButton(
          onPressed: () {
            model.ChangeName1();
          },
          color: Colors.blue,
          child: Text("Do Something"),
        ),
      ],
    );
  }
}
