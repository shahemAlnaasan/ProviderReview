import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_review/provider_review/model.dart';

class ProviderWatchAndRead extends StatelessWidget {
  const ProviderWatchAndRead({super.key});

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
    var model = Provider.of<Model>(context, listen: false);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(context.watch<Model>().name1),
        MaterialButton(
          onPressed: () {
            model.changeName1();
          },
          color: Colors.blue,
          child: const Text("Do Something"),
        ),
      ],
    );
  }
}


// context.read<>() = Provider.of<>(context , listen: false)


// context.watch<>() = Provider.of<>(context , listen: true)