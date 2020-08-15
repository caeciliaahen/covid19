import 'package:flutter/material.dart';
import 'home.dart';

class Loading extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 1,
              child: Image.asset(
                'assets/images/loading.png',
                fit: BoxFit.cover
              )
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 375),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 55),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 1,
                      child: RaisedButton(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18)
                        ),
                        child: Text(
                          "Lanjutkan",
                          style: TextStyle(
                            color: Colors.white
                          )
                        ),
                        onPressed:(){
                          Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) => Home())
                          );
                        }
                      ),
                    )
                  )
                )
              ]
            )
          ]
        )
      )
    );
  }
}