import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState(); 
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 3;
  
  void rolldice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(7);      
    });
  }

  @override
  Widget build(context){
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200,
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: rolldice,
              style: TextButton.styleFrom(
                  // padding: EdgeInsets.only(
                  //   top: 30,
                  // ),
                  foregroundColor: const Color.fromARGB(255, 0, 44, 80),
                  textStyle: const TextStyle(fontSize: 30)),
              child: Text('Roll Dice'))
        ],
      );
  }
}