import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class World extends StatelessWidget {
  final double height;
  final data;

  World({this.height, this.data});

  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Card(
        color: Colors.white70,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: Row(
                children: <Widget>[
                  const Text('  '),
                  Image.asset('assets/images/world.png', width: 20, height: 20,),
                  const Text(
                    '  Laporan Kasus Dunia',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: GridView.count(
                childAspectRatio: height / 385,
                crossAxisCount: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: FlipCard(
                      front: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('assets/images/sad.png', width: 70, height: 70,),
                              Text('Positif', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                            ],
                          ),
                          color: Colors.orange,
                      ),
                      back: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(data.world.confirmed.toString(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20, fontFamily: 'Serif'),),
                              Text("Terkonfirmasi", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18, fontFamily: 'Arial'),),
                            ],
                          ),
                          color: Colors.orange,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: FlipCard(
                      front: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('assets/images/happy.png', width: 70, height: 70),
                              Text('Sembuh', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                            ],
                          ),
                          color: Colors.green,
                      ),
                      back: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(data.world.recovered.toString(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20, fontFamily: 'Serif'),),
                              Text("Disembuhkan", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18, fontFamily: 'Arial'),),
                            ],
                          ),
                          color: Colors.green,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: FlipCard(
                      front: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('assets/images/cry.png', width: 70, height: 70,),
                              Text('Meninggal', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                            ],
                          ),
                          color: Colors.red,
                      ),
                      back: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(data.world.deaths.toString(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20, fontFamily: 'Serif'),),
                              Text("Meninggal", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18, fontFamily: 'Arial'),),
                            ],
                          ),
                          color: Colors.red,
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