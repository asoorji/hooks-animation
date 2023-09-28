import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'fade_animation.dart'; // Import the custom animation widget

import 'state.dart';

class ArrowButtonWidget extends HookConsumerWidget {
  final String text;

  const ArrowButtonWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isButtonsVisible = ref.watch(isButtonsVisibleProvider);

    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
            IconButton(
              icon: Icon(
                  isButtonsVisible ? Icons.arrow_upward : Icons.arrow_downward),
              onPressed: () {
                ref.read(isButtonsVisibleProvider.notifier).state =
                    !isButtonsVisible;
              },
            ),
          ],
        ),
        FadeAnimation(
          visible: isButtonsVisible,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Button 1'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Button 2'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Button 3'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Button 4'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
