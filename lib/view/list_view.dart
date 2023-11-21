import 'package:flutter/material.dart';

class Listv extends StatefulWidget {
  const Listv({super.key});

  @override
  State<Listv> createState() => _ListvState();
}
List<String> entries = <String>['A', 'B', 'C'];
List<int> colorCodes = <int>[600, 500, 100];
class _ListvState extends State<Listv> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 50,
        color: Colors.amber[colorCodes[index]],
        child: Center(child: Text('Entry ${entries[index]}')),
      );
    }
  );
}
}