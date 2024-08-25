import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_review/ChangeNotifierAndConsumerAndSelector/model.dart';

class provider extends StatelessWidget {
  const provider({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<MyModel>(
      create: (contex) => MyModel(),
      child: Scaffold(
        body: Consumer<MyModel>(
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
      ),
    );
  }
}
