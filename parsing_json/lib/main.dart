import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:parsing_json/stringdatasiswa.dart';
import 'itemdata.dart';

void main() => runApp(MyApp());

String datasiswa =
    '{"data_siswa":[{"nama":"wahyu","nik":"123456"},{"nama":"doni","nik":"112233"},{"nama":"ilham","nik":"3456123"}]}';

List<Itemdata> items = new List();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(children: <Widget>[
        Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: new Mydatasiswa(items: items),
              ),
            ])
      ]),
    );
  }

  void parsingData() {
    Map decoded = json.decode(datasiswa);
    for (var siswa in decoded['data_siswa']) {
      print("NAMA " + siswa['nama']);
      items.add(new Itemdata(
          nama: siswa['nama'].toString(), nik: siswa['nik'].toString()));
    }
  }

  @override
  void initState() {
    super.initState();
    parsingData();
  }
}
