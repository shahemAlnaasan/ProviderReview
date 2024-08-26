import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_review/add_to_cart/class_cart.dart';
import 'package:provider_review/add_to_cart/home.dart';
import 'package:provider_review/provider_review/changeNotifierProvider_consumer_selector.dart';
import 'package:provider_review/provider_review/multi_provider.dart';
import 'package:provider_review/provider_review/context_read_and_watch.dart';
import 'package:provider_review/provider_review/provider_dot_ofContext.dart';
import 'package:provider_review/provider_review/provider.dart';
import 'package:provider_review/value_notifier/value_notifier.dart';

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
