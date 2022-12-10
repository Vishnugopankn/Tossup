import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Dice_game());
}
class Dice_game extends StatefulWidget {
  const Dice_game({Key? key}) : super(key: key);

  @override
  State<Dice_game> createState() => _Dice_gameState();
}

class _Dice_gameState extends State<Dice_game> {
  int leftimage=1;
  int rightimage=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors. green,
        appBar: AppBar(backgroundColor: Colors.orangeAccent,
          title: Text("Random Images"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextButton(
                      onPressed:(){
                        setState(() {
                          leftimage=Random().nextInt(4)+1;
                          rightimage=Random().nextInt(4)+1;
                        });
                      },
                      child: Container(
                        width:300,height:300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/ball$leftimage.png"),
                            fit:BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 100,),

                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextButton(onPressed: (){
                      setState(() {
                        rightimage=Random().nextInt(4)+1;
                        leftimage=Random().nextInt(4)+1;
                      });
                    },

                      child: Container(
                        width:300,height:300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/ball$rightimage.png"),
                            fit:BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),



      ),

    );
  }
}

