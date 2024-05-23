import 'package:flutter/material.dart';

class NoteTile extends StatelessWidget {
  final String text;
  final void Function()? onEditPressed;
  final void Function()? onDeletePressed;
  const NoteTile({super.key, required this.text, required this.onEditPressed ,required this.onDeletePressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: ListTile(
          title: Text(
            text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: onEditPressed,
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: onDeletePressed,
            ),
          ],)
        )
    );
  }
}
