import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String title;

  const DetailScreen({Key key, this.title}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(widget.title ?? 'kosong'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //Custom Widget dari Container
              Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 100,
                width: 50,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.orange, boxShadow: [
                  BoxShadow(
                      color: Colors.green[300], blurRadius: 10, spreadRadius: 2)
                ]),
                height: 100,
                width: 50,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.blue,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.blue, blurRadius: 1, spreadRadius: 1),
                ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [Text('NAMA'), Text('UMUR')],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
