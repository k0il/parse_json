import 'package:flutter/material.dart';
import 'itemdata.dart';

class Stringdatasiswa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Mydatasiswa extends StatefulWidget {
  List<Itemdata> items;
  Mydatasiswa({@required this.items});
  @override
  _MydatasiswaState createState() => _MydatasiswaState();
}

class _MydatasiswaState extends State<Mydatasiswa> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              '${widget.items[index].nama}',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('${widget.items[index].nik}'),
            leading: CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child:
                  Text(widget.items[index].nama.substring(0, 1).toUpperCase()),
            ),
          );
        });
  }
}
