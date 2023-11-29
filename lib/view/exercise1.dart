import 'package:flutter/material.dart';

class Exercise extends StatefulWidget {
  const Exercise({super.key});

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Row and Column',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 40,
                  alignment: Alignment.center,
                  child: const Text(
                    "Container 1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: 40,
                  alignment: Alignment.center,
                  child: const Text(
                    "Container 2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 40,
                  alignment: Alignment.center,
                  child: const Text(
                    "Container 3",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 11, 89, 128),
              // width: double.infinity,
              // height: MediaQuery.of(context).size.height * .5,
              alignment: Alignment.center,
              child: const Text(
                "Container 1",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 88, 150, 255),
              // width: double.infinity,
              // height: MediaQuery.of(context).size.height * .5,
              alignment: Alignment.center,
              child: const Text(
                "Container 2",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 11, 89, 128),
              // width: double.infinity,
              // height: MediaQuery.of(context).size.height * .5,
              alignment: Alignment.center,
              child: const Text(
                "Container 3",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
