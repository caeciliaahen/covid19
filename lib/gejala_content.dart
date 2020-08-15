import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class GejalaContent extends StatelessWidget {
  final double height;
  // final data;

  GejalaContent({this.height});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return
    Padding(
      padding: const EdgeInsets.only(top:10),
      child: Card(
        color: Colors.orange[200],
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom:10),
                    child: const Text(
                      '   Gejala Klinis Penderita COVID-19   ',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        backgroundColor: Colors.red,
                        color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: GridView.count(
                childAspectRatio: height / 285,
                crossAxisCount: 1,
                // crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right:20, left:20),
                    child: FlipCard(
                      front: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('assets/images/gejala1.png', height: 100,),
                            ],
                          ),
                          color: Colors.amber[50],
                      ),
                      back: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Demam", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24, fontFamily: 'Arial'),),
                            ],
                          ),
                          color: Colors.red[300],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:20, left:20),
                    child: FlipCard(
                      front: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('assets/images/gejala2.png', height: 100,),
                            ],
                          ),
                          color: Colors.amber[50],
                      ),
                      back: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Batuk, Pilek", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24, fontFamily: 'Arial'),),
                            ],
                          ),
                          color: Colors.red[300],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:20, left:20),
                    child: FlipCard(
                      front: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('assets/images/gejala3.png', height: 100,),
                            ],
                          ),
                          color: Colors.amber[50],
                      ),
                      back: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Gangguan Pernapasan", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24, fontFamily: 'Arial'),),
                            ],
                          ),
                          color: Colors.red[300],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:20, left:20),
                    child: FlipCard(
                      front: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('assets/images/gejala4.png', height: 100,),
                            ],
                          ),
                          color: Colors.amber[50],
                      ),
                      back: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Sakit Tenggorokan", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24, fontFamily: 'Arial'),),
                            ],
                          ),
                          color: Colors.red[300],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:20, left:20),
                    child: FlipCard(
                      front: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('assets/images/gejala5.png', height: 100,),
                            ],
                          ),
                          color: Colors.amber[50],
                      ),
                      back: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Letih, Lesu", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24, fontFamily: 'Arial'),),
                            ],
                          ),
                          color: Colors.red[300],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
              ),
            ),
          ],
        ),
      ),
    );
  }
}