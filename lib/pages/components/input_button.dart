import 'package:flutter/material.dart';

class InputButton extends StatelessWidget {
  const InputButton({
    super.key,
    required this.onNewWord,
  });

  final Function(String) onNewWord;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final newWord = await showDialog<String>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('駅名を入力してください'),
            content: TextField(
              autofocus: true,
              onSubmitted: (value) {
                Navigator.of(context).pop(value);
              },
            ),
          ),
        );

        if (newWord == null) {
          return;
        }

        onNewWord(newWord);
      },
      child: const Text('ワードを入力'),
    );
  }
}
