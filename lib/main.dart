import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double r = 25;
  double g = 25;
  double b = 25;

  Color textColor(int r, int g, int b) {
    if (r >= 127 && g >= 127) {
      return Colors.black26;
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(r.toInt(), g.toInt(), b.toInt(), 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'RED: ${r.toString()}',
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor(r.toInt(), g.toInt(), b.toInt()),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'GREEN: ${g.toString()}',
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor(r.toInt(), g.toInt(), b.toInt()),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'BLUE: ${b.toString()}',
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor(r.toInt(), g.toInt(), b.toInt()),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ///red
                    Slider(
                      value: r,
                      label: r.toString(),
                      min: 0.0,
                      max: 255.0,
                      onChanged: (value) {
                        setState(() {
                          r = value.roundToDouble();
                        });
                      },
                    ),

                    ///green
                    Slider(
                      value: g,
                      label: g.toString(),
                      min: 0.0,
                      max: 255.0,
                      onChanged: (value) {
                        setState(() {
                          g = value.roundToDouble();
                        });
                      },
                    ),

                    ///blue
                    Slider(
                      value: b,
                      label: b.toString(),
                      min: 0.0,
                      max: 255.0,
                      onChanged: (value) {
                        setState(() {
                          b = value.roundToDouble();
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
