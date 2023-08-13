import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'currency.dart';
import 'temperature.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
      ),
      home: Scaffold(
        body: Center(
          child: FirstPage(),
        ),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 60, 48),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Converter",
              style: TextStyle(
                fontSize: 70,
                color: Colors.white,
                fontFamily: 'Pacifico',
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 10.0),
                    blurRadius: 40.0,
                    color: Color.fromARGB(255, 102, 3, 3),
                  ),
                ],
              ),
            ),
            Divider(
              color: Color.fromARGB(255, 90, 7, 1),
              indent: 40,
              endIndent: 40,
            ),
            Text(
              " Pugazh Mukilan",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 15,
                color: const Color.fromARGB(255, 99, 7, 1),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      CupertinoIcons.money_dollar_circle_fill,
                      color: Colors.white,
                      size: 50,
                      shadows: [Shadow(color: Colors.black)],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 300,
                      height: 70,
                      child: ElevatedButton(
                        child: Text(
                          "Currency converter",
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Currency1()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.red,
                          shadowColor: const Color.fromARGB(255, 170, 15, 4),
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      CupertinoIcons.flame,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 300,
                      height: 70,
                      child: ElevatedButton(
                        child: Text(
                          "Temperature converter",
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Temp()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.red,
                          shadowColor: const Color.fromARGB(255, 170, 15, 4),
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

