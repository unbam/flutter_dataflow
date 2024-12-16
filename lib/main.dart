import 'package:dataflow/dataflow.dart';
import 'package:flutter/material.dart';

import 'count_data_store.dart';
import 'count_page.dart';

void main() {
  final store = CountDataStore();
  DataFlow.init(store);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CountPage(),
    );
  }
}
