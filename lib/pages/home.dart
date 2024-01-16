import 'package:flutter/material.dart';
import 'package:navigator_1_and_2/extensions.dart';
import 'package:navigator_1_and_2/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: context.contentSpacing,
          vertical: 16,
        ),
        children: [
          Card(
            child: ListTile(
              title: const Text('Navigator 1 (word)'),
              onTap: () {
                const Navigator1WordRoute().go(context);
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Navigator 2 (word)'),
              onTap: () {
                const Navigator2WordRoute().go(context);
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Navigator 1 (push)'),
              onTap: () {
                const Navigator1PushRoute().go(context);
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Navigator 2 (push)'),
              onTap: () {
                const Navigator2PushRoute().go(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
