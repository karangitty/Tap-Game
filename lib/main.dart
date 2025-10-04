import 'package:flutter/material.dart';
 
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

double screensize = 0;
double blackScreenSize = 0;
double brownScreenSize = 0;
bool initialized = false;
double screenSize = 0;

// ignore: non_constant_identifier_names
int PlayerAScore = 0;
// ignore: non_constant_identifier_names
int PlayerBScore = 0;

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    if (initialized == false) {
      blackScreenSize = MediaQuery.of(context).size.height / 2;
      brownScreenSize = MediaQuery.of(context).size.height / 2;
      screensize = MediaQuery.of(context).size.height - 60;
      initialized = true;
    }
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.black,
            child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Player A',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Text(
                    PlayerAScore.toString(),
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
          ),
             MaterialButton(
              onPressed: () {
                
                print(blackScreenSize);
                setState(() {
                  brownScreenSize = brownScreenSize - 30;
                  blackScreenSize = blackScreenSize + 30;
                  PlayerAScore = PlayerAScore + 5;
                  PlayerBScore = PlayerBScore - 5;
                  if (PlayerAScore==65&&PlayerBScore==-65) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WinningPage(PlayerAScore, "A"),
                      ),
                    );
                  }
                });
              },
              color: Colors.black,
              minWidth: double.infinity,
              height: blackScreenSize,
                         
              
                         ),
           Container(
            color: Colors.brown,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      'Player B',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
    
                  Text(
                    PlayerBScore.toString(),
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
           ),
          Flexible(
           
            child: MaterialButton(
              
              onPressed: () {
                
                print(brownScreenSize);
                setState(() { 
                 
                  brownScreenSize = brownScreenSize + 30;
                  blackScreenSize = blackScreenSize - 30;
                  
                  PlayerBScore = PlayerBScore + 5;
                  PlayerAScore = PlayerAScore - 5;
                  if (PlayerBScore==65&&PlayerAScore==-65) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WinningPage(PlayerBScore, "B"),
                      ),
                    );
                  }
                },);
              },
              color: Colors.brown,
              minWidth: double.infinity,
              height: brownScreenSize,
             
            ),
          ),
           
        ],
    ),
      
    );
  }
}

// ignore: must_be_immutable
class WinningPage extends StatelessWidget {
  int score = 0;
  String PlayerWon = "";
  WinningPage(this.score, this.PlayerWon);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PlayerWon == "A" ? Colors.black : Colors.brown,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Player $PlayerWon  reached $score First',
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold,color: PlayerWon=="A"?Colors.brown:Colors.black),
            ),
            Text(
              'Player $PlayerWon Won',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,color:PlayerWon=="A"?Colors.brown:Colors.black),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: MaterialButton(
                  onPressed: () {
                    initialized=false;
                    PlayerAScore=0;
                    PlayerBScore=0;
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  color: Colors.white60,
                  child: Text(
                    'Restart',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
