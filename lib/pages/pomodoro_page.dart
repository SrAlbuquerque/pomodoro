import 'package:flutter/material.dart';
import 'package:pomodoro/components/timer.dart';
import 'package:pomodoro/components/input_timer.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Timer(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                InputTimer(
                  title: 'Trabalho',
                  value: 50,
                ),
                InputTimer(
                  title: 'Descanso',
                  value: 5,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
