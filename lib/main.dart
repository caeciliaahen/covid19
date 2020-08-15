import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'loading.dart';
import 'corona_provider.dart';

// void main(){
//   runApp(
//     MaterialApp(
//       title: 'Pantau Data COVID-19',
//       home: Loading(),
//     )
//   );
// }

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(
          create:(_) => CoronaProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Loading(),
        title: 'Pantau Data COVID-19',
      )
    );
  }
}