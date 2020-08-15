import 'package:flutter/material.dart';
import 'gejala_content.dart';
import 'tips_content.dart';

class TipsCorona extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  final height = MediaQuery.of(context).size.height;
   return SafeArea(
      child: Scaffold(
        body:
        // SingleChildScrollView(
        //   scrollDirection: Axis.vertical,
        //   child:
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 1,
                margin: const EdgeInsets.only(left:10,right:10, bottom:10),
                child: Column(
                  // direction: Axis.vertical,
                    // crossAxisCount: 1,
                    // crossAxisSpacing: 10,
                    // mainAxisSpacing: 10,
                  children: <Widget>[
                    Flexible(
                      flex: 3,
                      child: GejalaContent(height: height),
                    ),
                    Flexible(
                      flex: 4,
                      child: TipsContent(height: height),
                    ),
                  ],
                )
              )
            ]
          ),
        // )
      )
    );
  }
}