import 'package:flutter/material.dart';
import 'package:pomodoro/components/timer_button.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hora de trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.all(10),
                child: TimerButton(
                  text: 'Iniciar',
                  icon: Icons.play_arrow_rounded,
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.all(10),
              //   child: TimerButton(
              //     text: 'Parar',
              //     icon: Icons.stop_rounded,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TimerButton(
                  text: 'Reiniciar',
                  icon: Icons.refresh_rounded,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
