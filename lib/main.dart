import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: const TransferList(),
          appBar: AppBar(
            title: const Text('Transference'),
          ),
          floatingActionButton: const FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.add),
          ),
        ),
      ),
    );

class TransferList extends StatelessWidget {
  const TransferList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ItemsListTransfers('200.0', '1000.0'),
        ItemsListTransfers('100.0', '1000.0'),
        ItemsListTransfers('300.0', '1000.0'),
        ItemsListTransfers('800.0', '1000.0'),
      ],
    );
  }
}

class ItemsListTransfers extends StatelessWidget {
  final String transferValue;
  final String accountValue;

  // ignore: use_key_in_widget_constructors
  const ItemsListTransfers(this.transferValue, this.accountValue);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(transferValue),
        subtitle: Text(accountValue),
      ),
    );
  }
}
