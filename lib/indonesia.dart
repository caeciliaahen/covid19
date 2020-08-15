import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Indonesia extends StatelessWidget {
  final double height;
  final data;

  Indonesia({this.height, this.data});

  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding: const EdgeInsets.only(top:30),
      child: Card(
        color: Colors.white70,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: <Widget>[
                  const Text('  '),
                  Image.asset('assets/images/indonesia.jpg', width: 20, height: 20,),
                  const Text(
                    '  Laporan Jumlah Kasus Indonesia',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
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
                              Image.asset('assets/images/sad.png', width: 50, height: 50,),
                              Text('Positif', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                            ],
                          ),
                          color: Colors.orange,
                      ),
                      back: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(data.summary.confirmed.toString(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20, fontFamily: 'Serif'),),
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
                              Image.asset('assets/images/sick.png', width: 50, height: 50,),
                              Text('Perawatan', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                            ],
                          ),
                          color: Colors.purple,
                      ),
                      back: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(data.summary.activeCare.toString(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20, fontFamily: 'Serif'),),
                              Text("Dalam Perawatan", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18, fontFamily: 'Arial'),),
                            ],
                          ),
                          color: Colors.purple,
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
                              Image.asset('assets/images/happy.png', width: 50, height: 50,),
                              Text('Sembuh', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                            ],
                          ),
                          color: Colors.green,
                      ),
                      back: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(data.summary.recovered.toString(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20, fontFamily: 'Serif'),),
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
                              Image.asset('assets/images/cry.png', width: 50, height: 50,),
                              Text('Meninggal', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                            ],
                          ),
                          color: Colors.red,
                      ),
                      back: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(data.summary.deaths.toString(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20, fontFamily: 'Serif'),),
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