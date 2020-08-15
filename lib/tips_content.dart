import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class TipsContent extends StatelessWidget {
  final double height;

  TipsContent({this.height});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return
    Padding(
      padding: const EdgeInsets.only(top:10),
      child: Card(
        color: Colors.lightGreen[200],
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom:10),
                    child: const Text(
                      '   Tips Mencegah Penularan COVID-19   ',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        backgroundColor: Colors.blue,
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
                              Image.asset('assets/images/tips1.png', height: 100,),
                            ],
                          ),
                          color: Colors.lightGreen[50],
                      ),
                      back: Card(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Cucilah tangan menggunakan sabun di air mengalir selama minimal 20 detik.", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16, fontFamily: 'Arial'),),
                              ],
                            ),
                          ),
                          color: Colors.blue[300],
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
                              Image.asset('assets/images/tips2.png', height: 100,),
                            ],
                          ),
                          color: Colors.lightGreen[50],
                      ),
                      back: Card(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Gunakanlah masker baik sedang dalam kondisi sehat maupun sakit.", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16, fontFamily: 'Arial'),),
                              ],
                            ),
                          ),
                          color: Colors.blue[300],
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
                              Image.asset('assets/images/tips3.png', height: 100),
                            ],
                          ),
                          color: Colors.lightGreen[50],
                      ),
                      back: Card(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Jagalah pola makan dengan makan yang teratur dan gizi yang seimbang.", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16, fontFamily: 'Arial'),),
                              ],
                            ),
                          ),
                          color: Colors.blue[300],
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
                              Image.asset('assets/images/tips4.png', height: 100),
                            ],
                          ),
                          color: Colors.lightGreen[50],
                      ),
                      back: Card(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Minumlah air mineral 8 gelas/hari.", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16, fontFamily: 'Arial'),),
                              ],
                            ),
                          ),
                          color: Colors.blue[300],
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
                              Image.asset('assets/images/tips5.png', height: 100),
                            ],
                          ),
                          color: Colors.lightGreen[50],
                      ),
                      back: Card(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Makanlah makanan yang dimasak dengan sempurna. Hindarilah daging hewan yang berpotensi menularkan.", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16, fontFamily: 'Arial'),),
                              ],
                            ),
                          ),
                          color: Colors.blue[300],
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
                              Image.asset('assets/images/tips6.png', height: 100),
                            ],
                          ),
                          color: Colors.lightGreen[50],
                      ),
                      back: Card(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Jagalah kebugaran tubuh dengan rajin olahraga dan istirahat yang cukup", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16, fontFamily: 'Arial'),),
                              ],
                            ),
                          ),
                          color: Colors.blue[300],
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
                              Image.asset('assets/images/tips7.png', height: 100),
                            ],
                          ),
                          color: Colors.lightGreen[50],
                      ),
                      back: Card(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Jagalah kebersihan lingkungan di sekitar kita.", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16, fontFamily: 'Arial'),),
                              ],
                            ),
                          ),
                          color: Colors.blue[300],
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
                              Image.asset('assets/images/tips8.png', height: 100),
                            ],
                          ),
                          color: Colors.lightGreen[50],
                      ),
                      back: Card(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Jangan merokok karena berbahaya bagi kesehatan, terutama pernapasan.", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16, fontFamily: 'Arial'),),
                              ],
                            ),
                          ),
                          color: Colors.blue[300],
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
                              Image.asset('assets/images/tips9.png', height: 100),
                            ],
                          ),
                          color: Colors.lightGreen[50],
                      ),
                      back: Card(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Segeralah memeriksakan diri ke fasilitas kesehatan jika merasa demam dan sesak napas.", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16, fontFamily: 'Arial'),),
                              ],
                            ),
                          ),
                          color: Colors.blue[300],
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
                              Image.asset('assets/images/tips10.png', height: 100),
                            ],
                          ),
                          color: Colors.lightGreen[50],
                      ),
                      back: Card(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Jangan pulang kampung dan jangan berpegian. Cukup di rumah saja.", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16, fontFamily: 'Arial'),),
                              ],
                            ),
                          ),
                          color: Colors.blue[300],
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
                              Image.asset('assets/images/tips11.png', height: 100),
                            ],
                          ),
                          color: Colors.lightGreen[50],
                      ),
                      back: Card(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Jangan lupa berdoa kepada Tuhan Yang Maha Esa agar senantiasa dilindungi dari virus corona.", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16, fontFamily: 'Arial'),),
                              ],
                            ),
                          ),
                          color: Colors.blue[300],
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
                              Image.asset('assets/images/tips12.png', height: 100,),
                            ],
                          ),
                          color: Colors.lightGreen[50],
                      ),
                      back: Card(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Berhati-hatilah dengan berita hoax yang beredar seputar COVID-19.", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16, fontFamily: 'Arial'),),
                              ],
                            ),
                          ),
                          color: Colors.blue[300],
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