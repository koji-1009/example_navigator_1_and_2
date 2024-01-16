import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:navigator_1_and_2/extensions.dart';
import 'package:navigator_1_and_2/pages/components/input_button.dart';

class Navigator1WordPage extends StatefulWidget {
  const Navigator1WordPage({super.key});

  @override
  State<Navigator1WordPage> createState() => _Navigator1WordPageState();
}

class _Navigator1WordPageState extends State<Navigator1WordPage> {
  String word = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator 1 (word)'),
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
              setState(() {
                word = newWord;
              });
            },
          ),
        ],
      ),
    );
  }
}
