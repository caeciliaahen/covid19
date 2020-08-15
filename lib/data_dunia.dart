import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'world.dart';
import 'corona_provider.dart';

class DataDunia extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final height = MediaQuery.of(context).size.height;
    return RefreshIndicator(
        onRefresh: () =>
            Provider.of<CoronaProvider>(context, listen: false).getData(),
        child: Container(
          margin: const EdgeInsets.all(10),
          child: FutureBuilder(
            future:
                Provider.of<CoronaProvider>(context, listen: false).getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Consumer<CoronaProvider>(
                builder: (context, data, _) {
                  return Column(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: World(height: height, data: data,),
                      ),
                      ListTile(
                        subtitle: Text('Pembaruan Terakhir'),
                        title: Text(data.updated),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
    );
  }
}