import 'package:flutter/material.dart';
import 'package:widget/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget'),
        // centerTitle: true,
        leading: Icon(Icons.home),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              Icon(Icons.directions),
              Icon(Icons.directions),
              Icon(Icons.directions),
              Icon(Icons.directions),
            ],
          ),

          ///Button
          RaisedButton(
            onPressed: () {},
            child: Text(
              'tombol raised',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.green,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: FlatButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.access_alarm),
                    Text('tombol flat'),
                  ],
                )),
          ),

          FlatButton.icon(
              color: Colors.red,
              onPressed: () {
                /// pindah page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              title: 'OKE',
                            )));
              },
              icon: Icon(Icons.access_alarm),
              label: Text('data'))
        ],
      ),
    );
  }
}
