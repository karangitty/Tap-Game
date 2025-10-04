import 'package:flutter/material.dart';
import 'package:tapgame/second_page.dart';
 
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,home:  MainPage()));
}

class MainPage extends StatelessWidget {
  
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              color: Colors.black,
              child: Center(
                child: MaterialButton(
                  height: 100,
                  shape: CircleBorder(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  },
                  color: Colors.white,
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              color: Colors.brown,
              child: Center(
                child: MaterialButton(
                  height: 100,
                  shape: CircleBorder(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  },
                  color: Colors.white,
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





