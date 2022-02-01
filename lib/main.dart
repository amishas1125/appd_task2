import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

String heads = "Heads";
String tails = "Tails";
bool a = true;
String coinHead = "images/coinhead.jpg";
String coinTail = "images/tails.jpg";
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: "Flip the coin",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Flip the Coin"),
          ),
          body: Column(
            children: [
              Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 160),
                      Text(a? heads : tails, style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 30),
                      Image.asset(
                        a ? coinHead: coinTail,
                        width: 250,
                        height: 250,
                      ),
                      const SizedBox(height: 60),
                      ElevatedButton(
                          onPressed: () {
                            a = !a;
                             setState(() {});
                          },
                          child: const Text("Flip", style: TextStyle(fontSize: 25)))
                    ],
                  )),
            ],
          ),
        ));
  }
}


