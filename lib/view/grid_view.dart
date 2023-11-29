import 'package:flutter/material.dart';

class GridViewview extends StatefulWidget {
  const GridViewview({super.key});

  @override
  State<GridViewview> createState() => _GridViewviewState();
}

class _GridViewviewState extends State<GridViewview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        crossAxisCount: 4,
        children: [
          for (int i = 1; i <= 10; i++) ...{
            Card(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                ),
                child: Text('$i', style: const TextStyle(fontSize: 50)),
              ),
            ),
            // const Card(
            //   color: Colors.blueAccent,
            // )
          }
        ],
      ),
    );
  }
}
