import 'package:flutter/material.dart';

class NewScaffoldPage extends StatelessWidget {
  const NewScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Scaffold'),
      ),
      body: Center(
        child: Text(
          'This is new scaffold.',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
