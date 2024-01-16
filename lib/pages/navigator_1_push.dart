import 'package:flutter/material.dart';
import 'package:navigator_1_and_2/extensions.dart';
import 'package:navigator_1_and_2/pages/components/new_scaffold.dart';

class Navigator1PushPage extends StatelessWidget {
  const Navigator1PushPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator 1 (push)'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: context.contentSpacing,
          vertical: 16,
        ),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NewScaffoldPage(),
                ),
              );
            },
            child: const Text('New Scaffold'),
          ),
        ],
      ),
    );
  }
}
