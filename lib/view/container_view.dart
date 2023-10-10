import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      // body: SafeArea(
      //   child: Center(

      //     child: Container(
      //       height: 200,
      //       width: 200,
      //       alignment: Alignment.center,
      //       decoration: BoxDecoration(
      //         shape: BoxShape.circle,
      //           color: Colors.amberAccent,
      //           border: Border.all(
      //             color: Colors.black,
      //             width: 2,
      //           )),
      //       child: const Text('hello world',),
      //     ),
      //   ),
      // ),

      body: SafeArea(
        child: Container(
          alignment: Alignment.centerRight,
          height: double.infinity,
          width: double.infinity,
          child: const Text('Hello',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),),
        ),
      ),
    );
  }
}
