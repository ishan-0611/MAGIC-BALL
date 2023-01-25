import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text(
            'ASK ME ANYTHING'
        ),
        backgroundColor: Colors.indigo,
      ),
      body: DicePage(),
    ),
   ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ballIndex=1;
  void ballChange()
  {
      ballIndex=Random().nextInt(5)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    ballChange();
                  });
                },
                child: Image.asset('images/ball$ballIndex.png'),
              ),
            ),
          ],
        ),
    );
  }
}



