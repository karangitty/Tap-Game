import  'package:flutter/material.dart';
import  'second_page.dart';


// ignore: must_be_immutable
class WinningPage extends StatelessWidget {
  int score = 0;
  String PlayerWon = "";
  WinningPage(this.score, this.PlayerWon, {super.key});
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