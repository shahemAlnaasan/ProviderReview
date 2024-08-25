import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_review/AddToCart/Class_Cart.dart';
import 'package:provider_review/AddToCart/Home.dart';
import 'package:provider_review/ChangeNotifierAndConsumerAndSelector/ChangeNotifierProvider_and_Consumer.dart';
import 'package:provider_review/ChangeNotifierAndConsumerAndSelector/MultiProvider.dart';
import 'package:provider_review/ChangeNotifierAndConsumerAndSelector/ProviderReadAndWatch.dart';
import 'package:provider_review/ChangeNotifierAndConsumerAndSelector/Provider_Dot_OfContext.dart';
import 'package:provider_review/ChangeNotifierAndConsumerAndSelector/provider.dart';
import 'package:provider_review/valueNotifier/ValueNotifier.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Cart(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Valuenotifier(),
    );
  }
}
