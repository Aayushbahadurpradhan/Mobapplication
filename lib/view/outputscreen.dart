//

import 'package:application_one/app/common/display_student.dart';
import 'package:application_one/model/student.dart';
import 'package:flutter/material.dart';

class OutputScreen extends StatefulWidget {
  const OutputScreen({Key? key}) : super(key: key);

  @override
  State<OutputScreen> createState() => _OutputScreenState();
}

class _OutputScreenState extends State<OutputScreen> {
  List<Student> lstStudents = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    lstStudents = ModalRoute.of(context)!.settings.arguments as List<Student>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
        elevation: 0,
      ),
      body: lstStudents.isEmpty
          ? const Center(
              child: Text('No data'),
            )
          : DisplayStudent(
              lstStudents: lstStudents,
            ),
    );
  }
}
