import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_review/ChangeNotifierAndConsumerAndSelector/model.dart';

class multiprovider extends StatelessWidget {
  const multiprovider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) {
          return MyModel();
        }),
        ChangeNotifierProvider(create: (context) {
          return Model();
        }),
      ],
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<MyModel>(
              builder: (context, mymodel, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${mymodel.name1}"),
                    MaterialButton(
                      onPressed: () {
                        mymodel.ChangeName1();
                      },
                      color: Colors.blue,
                      child: Text("Do Something"),
                    ),
                  ],
                );
              },
            ),
            Consumer<Model>(
              builder: (context, model, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${model.name1}"),
                    MaterialButton(
                      onPressed: () {
                        model.ChangeName1();
                      },
                      color: Colors.blue,
                      child: Text("Do Something"),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
