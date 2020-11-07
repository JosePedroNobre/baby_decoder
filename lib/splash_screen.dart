import 'package:baby_decoder/features/list_screen.dart';
import 'package:baby_decoder/features/recording/recording_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              child: Image.network(
                "https://thumbs.dreamstime.com/b/cute-children-baby-background-white-clouds-rainbow-blue-wooden-background-cute-children-baby-background-159532339.jpg",
                fit: BoxFit.fitHeight,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Baby Decoder",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 70),
              ),
              MaterialButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ListScreen()),
                    );
                  },
                  child: Text("Login"))
            ],
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
