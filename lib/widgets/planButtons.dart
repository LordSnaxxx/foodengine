import 'package:flutter/material.dart';
import 'package:foodengine/constants.dart';

class PlanGenerationButtons extends StatelessWidget {
  const PlanGenerationButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  //Create individual Plan
                },  
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                child: const Text(
                  'eigenen Plan erstellen',
                  style: TextStyle(
                  color: Colors.black, 
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          )
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  //Create individual Plan
                },
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                child: const Text(
                  'Plan generieren',
                  style: TextStyle(
                  color: Colors.black, 
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                  ),
                )
              )
            ],
          )
        )
      ],
    );
  }
}