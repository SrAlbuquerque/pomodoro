import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/timer.dart';
import 'package:pomodoro/components/input_timer.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Timer(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InputTimer(
                    title: 'Trabalho',
                    value: store.workTime,
                    inc: store.incrementWorkTime,
                    dec: store.decrementWorkTime,
                  ),
                  InputTimer(
                    title: 'Descanso',
                    value: store.restTime,
                    inc: store.incrementRestTime,
                    dec: store.decrementRestTime,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
