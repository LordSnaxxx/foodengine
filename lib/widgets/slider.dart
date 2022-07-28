import 'package:flutter/material.dart';
import 'package:foodengine/constants.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class PersonCountSlider extends StatefulWidget {
  const PersonCountSlider({Key? key}) : super(key: key);

  @override
  State<PersonCountSlider> createState() => _PersonCountSliderState();
}

class _PersonCountSliderState extends State<PersonCountSlider> {
  double personCount = 1.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                top: 50.0,
                bottom: kDefaultPadding
              ),
              child: Text(
                'Für wie viele Personen möchtest du kochen?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SfSlider(
                  value: personCount,
                  min: 1,
                  max: 7,
                  interval: 1,
                  showLabels: true,
                  showTicks: true,
                  stepSize: 1,
                  showDividers: true,
                  onChanged: (dynamic value) {
                    setState(() {
                      personCount = value;
                    });
                  },
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}