import 'package:clock_app/playercontrollers.dart';
import 'package:flutter/material.dart';
import 'colors.dart';
import 'navbar.dart';
import 'albumart.dart';
import 'playercontrollers.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(fontFamily: 'Fleur'),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 2;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          NavigationBar(),
          Container(
            height: height / 2.5,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return AlbumArt();
              },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text(
            'PlayList',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: darkPrimaryColor,
                fontSize: 30),
          ),
          Text(
            'سورة البقرة ',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: darkPrimaryColor,
                fontSize: 28),
          ),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 5,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
            ),
            child: Slider(
              value: sliderValue,
              activeColor: darkPrimaryColor,
              inactiveColor: darkPrimaryColor.withOpacity(0.3),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              min: 0,
              max: 20,
            ),
          ),
          PlayerControllers(),
          SizedBox(
            height:2,
          ),
        ],
      ),
    );
  }
}
