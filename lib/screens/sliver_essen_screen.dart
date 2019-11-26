import 'package:flutter/material.dart';

class SliverEssenScreen extends StatefulWidget {
  @override
  _SliverEssenScreenState createState() => _SliverEssenScreenState();
}

class _SliverEssenScreenState extends State<SliverEssenScreen> {

  List<String> speisen = [
    "Nudeln mit Soße",
    "Lasagne",
    "Pizza",
    "Steak",
    "Schnitzel mit Pommes",
    "Salat",
    "Burger",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ich habe hunger"),
      ),
      body: SafeArea(
        child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: false,
           // floating: true,
            expandedHeight: 200,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Speisen"),
            background: Image.network("https://previews.123rf.com/images/tobi/tobi1212/tobi121200190/17082814-eisbecher-mit-erdbeeren-und-waffelr%C3%B6llchen.jpg",
            fit: BoxFit.cover),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  leading: Icon(Icons.local_dining),
                  title: Text("${speisen[index]}"),
                  subtitle: Text("19.90 \$"),
                  trailing:
                    RaisedButton(child: Text("order"), onPressed: (){}),
                );
              }
            ),
          ),
        ],
      ),
      ),
    );
  }
}
