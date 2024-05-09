import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class PetRoller extends StatefulWidget {
  const PetRoller({super.key});
  // Do not add a build method, add a createState method
  @override 
  State<PetRoller> createState() {
    return _PetRollerState();
  }

}

// private class
class _PetRollerState extends State<PetRoller> {
  var activePetImage = 'assets/pets/pets-3.jpg';
  var currentPetRoll = 3;

  void rollPet() {
    setState(() {
      currentPetRoll = randomizer.nextInt(6) + 1; // Value between 1 and 6
    });
    // print('Changing image...');
  }
  
  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/pets/pets-$currentPetRoll.jpg',
              width: 500,
            ),
            const SizedBox(height: 40),
            TextButton(
                // onPressed: () {}),
                onPressed: rollPet,
                style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 20,),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 40,
                  ),
                ),
                child: const Text(
                  'Pets generator',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        );
  }
}
