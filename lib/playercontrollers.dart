import 'package:flutter/material.dart';

import 'colors.dart';

class PlayerControllers extends StatelessWidget {
  const PlayerControllers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Controllers(
            icon: Icons.shuffle,
          ),
          Controllers(icon: Icons.skip_previous),
          PlayController(),
          Controllers(icon: Icons.skip_next),
          Controllers(icon: Icons.repeat),
        ],
      ),
    );
  }
}

class PlayController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: darkPrimaryColor.withOpacity(0.5),
              offset: Offset(5, 10),
              spreadRadius: 3,
              blurRadius: 10),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -4),
              spreadRadius: -2,
              blurRadius: 20),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: darkPrimaryColor, shape: BoxShape.circle),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(13),
              decoration:
                  BoxDecoration(color: primaryColor, shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: darkPrimaryColor.withOpacity(0.5),
                        offset: Offset(5, 10),
                        spreadRadius: 3,
                        blurRadius: 10),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-3, -4),
                        spreadRadius: -2,
                        blurRadius: 20),
                  ]),
              child: Center(
                child: Icon(
                  Icons.play_arrow,
                  size: 50,
                  color: darkPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Controllers extends StatelessWidget {
  final IconData icon;

  Controllers({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 60,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: darkPrimaryColor.withOpacity(0.5),
              offset: Offset(5, 10),
              spreadRadius: 3,
              blurRadius: 10),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -4),
              spreadRadius: -2,
              blurRadius: 20),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.all(6),

              decoration: BoxDecoration(
                  color: Colors.grey, shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: darkPrimaryColor.withOpacity(0.5),
                    offset: Offset(5, 10),
                    spreadRadius: 3,
                    blurRadius: 10),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-3, -4),
                    spreadRadius: -2,
                    blurRadius: 20),

              ],),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: primaryColor, shape: BoxShape.circle),
              child: Center(
                  child: Icon(
                icon,
                size: 30,
                color: darkPrimaryColor,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
