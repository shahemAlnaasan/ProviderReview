import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_review/provider_review/model.dart';

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
            model.changeName1();
          },
          color: Colors.blue,
          child: Text("Do Something"),
        ),
      ],
    );
  }
}
