import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:navigator_1_and_2/extensions.dart';
import 'package:navigator_1_and_2/pages/components/input_button.dart';
import 'package:navigator_1_and_2/routes.dart';

class Navigator2WordPage extends StatelessWidget {
  const Navigator2WordPage({
    super.key,
    required this.word,
  });

  final String word;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator 2 (word)'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: context.contentSpacing,
          vertical: 16,
        ),
        children: [
          Center(
            child: word.isNotEmpty
                ? Text(
                    '$wordは豪雨。',
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                : Text(
                    '豪雨にしたい駅名を入れてください。',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
          ),
          const Gap(16),
          InputButton(
            onNewWord: (newWord) {
              Navigator2WordRoute(
                word: newWord,
              ).go(context);
            },
          ),
        ],
      ),
    );
  }
}
