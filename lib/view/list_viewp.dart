// import 'package:flutter/material.dart';

// class Listv extends StatefulWidget {
//   const Listv({super.key});

//   @override
//   State<Listv> createState() => _ListvState();
// }

// List<String> entries = <String>['A', 'B', 'C'];
// List<int> colorCodes = <int>[600, 500, 100];

// class _ListvState extends State<Listv> {
//   @override
//   Widget build(BuildContext context) {
//     return
//         //   ListView.builder(
//         //   padding: const EdgeInsets.all(8),
//         //   itemCount: entries.length,
//         //   itemBuilder: (BuildContext context, int index) {
//         //     return Container(
//         //       height: 50,
//         //       color: Colors.amber[colorCodes[index]],
//         //       child: Center(child: Text('Entry ${entries[index]}')),
//         //     );
//         //   }
//         // );
//         const Scaffold(
//         );
//   }
// }

import 'package:flutter/material.dart';

class Listv extends StatefulWidget {
  const Listv({super.key});

  @override
  _ListvState createState() => _ListvState();
}

class _ListvState extends State<Listv> {
  List<String> dataList = [];
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data List'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: textFieldController,
              decoration: const InputDecoration(labelText: 'Enter Data'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              addData();
            },
            child: const Text('Add'),
          ),
          Expanded(
            child: dataList.isEmpty
                ? const Center(
                    child: Text('No data added yet'),
                  )
                : ListView.builder(
                    itemCount: dataList.length,
                    itemBuilder: (context, index) {
                      return ExpansionTile(
                        title: Text('Data ${index + 1}'),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(dataList[index]),
                          ),
                        ],
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  void addData() {
    String newData = textFieldController.text;
    if (newData.isNotEmpty) {
      setState(() {
        dataList.add(newData);
        textFieldController.clear();
      });
    }
  }
}
