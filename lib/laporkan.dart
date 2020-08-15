import 'package:flutter/material.dart';

class LaporkanKasus extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 250),
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                color: Colors.red[400]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(12,0,0,0),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "Layanan Darurat COVID-19",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white
                                )
                              )
                            ]
                          )
                        ]
                      )
                    )
                  ]
                )
              )
            )
          ]
        ),
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 0),
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                color: Colors.red[100]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 8
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(6,0,0,0),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.phone,
                                color: Colors.black,
                                size: 19
                              )
                            ]
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "  08XXXXXXXXXX",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black
                                )
                              )
                            ]
                          ),
                        ]
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(6,22,0,0),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.mail,
                                color: Colors.black,
                                size: 19
                              )
                            ]
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "  laporkan@covid19.id",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black
                                )
                              )
                            ]
                          )
                        ]
                      )
                    )
                  ]
                )
              )
            )
          ]
        ),
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 40),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.yellow[100]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 10
                ),
                child: Row(
                  children: <Widget> [
                    Column(
                      children: <Widget> [
                        Row(
                          children: <Widget> [
                            Icon(
                              Icons.warning,
                              color: Colors.black,
                              size: 25
                            )
                          ]
                        ),
                        Row(
                          children: <Widget> [
                            Text(
                              "Segera hubungi Layanan Darurat COVID-19",
                              style: TextStyle(
                                fontSize: 16,
                              )
                            )
                          ]
                        ),
                        Row(
                          children: <Widget> [
                            Text(
                              "jika Anda atau orang terdekat Anda",
                              style: TextStyle(
                                fontSize: 16,
                              )
                            )
                          ]
                        ),
                        Row(
                          children: <Widget> [
                            Text(
                              "mengalami gejala COVID-19.",
                              style: TextStyle(
                                fontSize: 16,
                              )
                            )
                          ]
                        )
                      ]
                    )
                  ]
                )
              )
            )
          ]
        )
      ]
    );
  }
}