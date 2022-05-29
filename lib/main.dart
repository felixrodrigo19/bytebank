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
      children: [
        ItemsListTransfers(Transfer(100.0, 1000)),
        ItemsListTransfers(Transfer(500.0, 1050)),
        ItemsListTransfers(Transfer(100.0, 5000)),
        ItemsListTransfers(Transfer(700.0, 5000)),
      ],
    );
  }
}

class ItemsListTransfers extends StatelessWidget {
  final Transfer _transfer;

  // ignore: use_key_in_widget_constructors
  const ItemsListTransfers(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(_transfer.transferValue.toString()),
        subtitle: Text(_transfer.accountNumber.toString()),
      ),
    );
  }
}

class Transfer {
  final double transferValue;
  final int accountNumber;

  Transfer(this.transferValue, this.accountNumber);
}
