import 'package:flutter/material.dart';
import 'package:foodengine/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: kDefaultPadding
            ),
            height: size.height * 0.2,
            decoration: BoxDecoration(
              color: cPrimaryGreen,
              borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ]
            ),
            child: Column(
              children: [
                Row(
                  children: const <Widget>[
                    Text(
                      'Hi Rika!',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black, 
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ]
                ),
                const SizedBox(width: 25, height: 25,),
                Row(
                  children: const <Widget>[
                    Text(
                      'Was möchtest du diese \nWoche essen?',
                      style: TextStyle(
                        color: Colors.black, 
                        fontSize: 27,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //const Spacer(),
        ],
      )
    );
  }
}