import 'package:flutter/material.dart';

/*MaterialColor kPrimaryColor = MaterialColor(0xFF00E676, color);

Map<int, Color> color =
{
100:const Color.fromARGB(255, 119, 214, 117)
};*/

const MaterialColor mcprimary = MaterialColor(_mcprimaryPrimaryValue, <int, Color>{
  50: Color(0xFFEFFAEE),
  100: Color(0xFFD6F3D6),
  200: Color(0xFFBBEBBA),
  300: Color(0xFFA0E29E),
  400: Color(0xFF8BDC8A),
  500: Color(_mcprimaryPrimaryValue),
  600: Color(0xFF6FD16D),
  700: Color(0xFF64CC62),
  800: Color(0xFF5AC658),
  900: Color(0xFF47BC45),
});
const int _mcprimaryPrimaryValue = 0xFF77D675;

const MaterialColor mcprimaryAccent = MaterialColor(_mcprimaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_mcprimaryAccentValue),
  400: Color(0xFFADFFAC),
  700: Color(0xFF94FF92),
});
const int _mcprimaryAccentValue = 0xFFDFFFDF;

const kSecondaryColor = Colors.yellow;
const kTextColor = Colors.black;
const kBackgroundColor = Colors.white;

const double kDefaultPadding = 20.0;

const cPrimaryGreen = Color.fromARGB(255, 119, 214, 117);
const cPrimaryYellow = Color.fromARGB(255, 223, 212, 111);