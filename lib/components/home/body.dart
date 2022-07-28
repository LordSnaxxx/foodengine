import 'package:flutter/material.dart';
import 'package:foodengine/constants.dart';
import 'package:foodengine/widgets/slider.dart';
import 'package:foodengine/widgets/planButtons.dart';
import 'header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background1_flipped.png"),
            fit: BoxFit.fill,
          )
        ),
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Header(size: size),
                    )
                  ],
                ),
                const PersonCountSlider(),
                SizedBox(width: 15, height: 15),
                const PlanGenerationButtons(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(20),
                      color: cPrimaryYellow,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 90,
                                height: 90,
                                child: FloatingActionButton(
                                  backgroundColor: Colors.white,
                                  onPressed: () {},
                                  child: ConstrainedBox(
                                    constraints: new BoxConstraints.expand(),
                                    child: Image.asset("assets/icons/burgerAndCup.png")
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                'Rezeptgalerie',
                                style: TextStyle(
                                  color: Colors.black, 
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      color: cPrimaryYellow,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 90,
                                height: 90,
                                child: FloatingActionButton(
                                  backgroundColor: Colors.white,
                                  onPressed: () {},
                                  child: ConstrainedBox(
                                    constraints: new BoxConstraints.expand(),
                                    child: Image.asset("assets/icons/shoppingList.png")
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                'Einkaufsliste \nansehen',
                                style: TextStyle(
                                  color: Colors.black, 
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}



