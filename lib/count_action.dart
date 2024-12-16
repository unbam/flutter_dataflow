import 'package:dataflow/dataflow.dart';

import 'count_data_store.dart';

class AddCountAction extends DataAction<CountDataStore> {
  final int count;

  AddCountAction(this.count);

  @override
  Future<void> execute() async {
    store.count += count;
  }
}
