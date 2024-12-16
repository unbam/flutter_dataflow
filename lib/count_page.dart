import 'package:dataflow/dataflow.dart';
import 'package:flutter/material.dart';

import 'count_action.dart';
import 'count_data_store.dart';

class CountPage extends StatelessWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter x dataflow Demo Page'),
      ),
      body: DataSync<CountDataStore>(
        builder: (context, store, hasData) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${store.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          );
        },
        actions: const {
          AddCountAction,
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => AddCountAction(1),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
