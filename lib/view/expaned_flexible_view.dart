import 'package:application_one/app/common/my_snackbar.dart';
import 'package:flutter/material.dart';

class ExpandedView extends StatefulWidget {
  const ExpandedView({super.key});

  @override
  State<ExpandedView> createState() => _ExpandedViewState();
}

class _ExpandedViewState extends State<ExpandedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //       appBar: AppBar(
      //   title: const Text('Student ListView'),
      // ),
      body: Column(
        children: [
          SizedBox(
            child: Container(
              color: Colors.red,
              height: MediaQuery.of(context).size.height * .5,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  showSnackbar(context,'message');
                },
                child: const Text("Button 1"),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              height: 200,
              width: double.infinity,
              // height: MediaQuery.of(context).size.height * .5,
              child: ElevatedButton(
                onPressed: () {
                  showSnackbar(context,'message 2',color: Colors.green);
                },
                child: const Text("Button 2"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
