import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBoxDd();
  }
}

class ConstrainedBoxDd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0,
            ),
            child: Container(
              color: Color.fromRGBO(123, 54, 255, 0.7),
            ),
          ),
        ],
      ),
    );
  }
}

class AspectRatioaaa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16.0 / 9.0,
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}

class SizeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                width: 200.0,
                height: 360.0,
                child: Container(
                  // alignment: Alignment(0.0, -0.8),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    // borderRadius: BorderRadius.circular(16.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0),
                      ],
                    ),
                  ),
                  child: Icon(
                    Icons.brightness_2,
                    color: Colors.white,
                    size: 32.0,
                  ),
                ),
              ),
              Positioned(
                right: 20.0,
                top: 20.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 20.0,
                  color: Colors.white,
                ),
              ),
              Positioned(
                right: 20.0,
                top: 120.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 20.0,
                  color: Colors.white,
                ),
              ),
              Positioned(
                right: 40.0,
                top: 100.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 16.0,
                  color: Colors.white,
                ),
              ),
              Positioned(
                right: 80.0,
                top: 200.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 20.0,
                  color: Colors.white,
                ),
              ),
              Positioned(
                right: 40.0,
                top: 260.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 18.0,
                  color: Colors.white,
                ),
              ),
              Positioned(
                right: 60.0,
                top: 344.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 18.0,
                  color: Colors.white,
                ),
              ),
              Positioned(
                right: 50.0,
                top: 290.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 18.0,
                  color: Colors.white,
                ),
              ),
              Positioned(
                right: 20.0,
                top: 346.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 18.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IconRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(
            Icons.beach_access,
            size: 68.0,
          ),
          IconBadge(Icons.airplanemode_active),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60.0,
      height: size + 60.0,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
