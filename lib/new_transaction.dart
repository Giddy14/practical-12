import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: titleController,
// onChanged: (val) {

// titleInput = val;
// },
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              controller: amountController,
// onChanged: (val) => amountInput = val,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.purple,
                  textStyle: const TextStyle(fontSize: 20)),
              child: const Text('Add Transaction'),
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
