import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:navigator_1_and_2/extensions.dart';
import 'package:navigator_1_and_2/pages/components/new_scaffold.dart';
import 'package:navigator_1_and_2/routes.dart';

class Navigator2PushPage extends StatelessWidget {
  const Navigator2PushPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator 2 (push)'),
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
            child: const Text('New Scaffold (Navigator push)'),
          ),
          const Gap(16),
          FilledButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NewScaffoldPage(),
                ),
              );
            },
            child: const Text('New Scaffold (GoRouter push)'),
          ),
          const Gap(16),
          FilledButton.tonal(
            onPressed: () {
              const Navigator2PushNewRoute().go(context);
            },
            child: const Text('New Scaffold (GoRouter go)'),
          ),
        ],
      ),
    );
  }
}
