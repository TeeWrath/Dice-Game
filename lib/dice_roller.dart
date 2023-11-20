import 'package:flutter/material.dart';
import 'dart:math';

// we declare the object here only so that object is not redundantly created again and again
final randomiser = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  
  var diceNum = 1;

  void rollDice() {
    setState(() {
      diceNum = randomiser.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-$diceNum.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              // padding: const EdgeInsets.only(top: 20),
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('Roll the dice'),
        )
      ],
    );
  }
}
