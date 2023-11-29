// import 'package:application_one/model/student.dart';
// import 'package:flutter/material.dart';
// class ListPage extends StatefulWidget {
//   const ListPage({Key? key}) : super(key: key);
//   @override
//   State<ListPage> createState() => _ListPageState();
// }
// class _ListPageState extends State<ListPage> {
//   final firstController = TextEditingController();
//   final lastController = TextEditingController();
//   String? city;
//   final items = [
//     const DropdownMenuItem(
//       value: 'Kathmandu',
//       child: Text('Kathmandu'),
//     ),
//     const DropdownMenuItem(
//       value: 'Pokhara',
//       child: Text('Pokhara'),
//     ),
//     const DropdownMenuItem(
//       value: 'Chitwan',
//       child: Text('Chitwan'),
//     ),
//   ];
//   List<Student> lstStuudents = []; // List to store items
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("List View"),
//       ),
//       body: Form(
//         key: _formKey,
//         child: Column(
//           children: [
//             TextFormField(
//               controller: firstController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'First Name',
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             TextFormField(
//               controller: lastController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Last Name',
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             DropdownButtonFormField(
//               icon: const Icon(Icons.arrow_downward),
//               items: items,
//               onChanged: (value) {
//                 setState(() {
//                   city = value;
//                 });
//               },
//               hint: const Text('Select City'),
//               decoration: const InputDecoration(
//                 labelText: 'Select City',
//                 border: OutlineInputBorder(),
//               ),
//               validator: (value) {
//                 if (value == null) {
//                   return 'Please select city';
//                 }
//                 return null;
//               },
//             ),
//             SizedBox(
//               width: 150,
//               height: 40,
//               child: ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate() && city != null) {
//                     Student student = Student(
//                       fname: firstController.text,
//                       lname: lastController.text,
//                       city: city!,
//                     );
//                     setState(() {
//                       lstStuudents.add(student);
//                     });
//                   }
//                 },
//                 child: const Text('Add Student'),
//               ),
//             ),
//             Expanded(
//               child: lstStuudents.isNotEmpty
//               ? ListView.builder(
//                 itemCount: lstStuudents.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     leading: const Icon(Icons.person),
//                     title: Text(
//                       '${lstStuudents[index].fname} ${lstStuudents[index].lname}',
//                     ),
//                     subtitle: Text(lstStuudents[index].city),
//                     trailing: IconButton(
//                       icon: const Icon(Icons.delete),
//                       onPressed: () {
//                         setState(() {
//                           lstStuudents.removeAt(index);
//                         });
//                       },
//                     ),
//                   );
//                 },
//               )
//               : const Text('no data'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:application_one/app/common/display_student.dart';
import 'package:application_one/model/student.dart';
import 'package:flutter/material.dart';

class StudentListView extends StatefulWidget {
  const StudentListView({super.key});

  @override
  State<StudentListView> createState() => _StudentListViewState();
}

class _StudentListViewState extends State<StudentListView> {
  final _formKey = GlobalKey<FormState>();
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();

  String? city;

  final items = [
    const DropdownMenuItem(
      value: 'Kathmandu',
      child: Text('Kathmandu'),
    ),
    const DropdownMenuItem(
      value: 'Pokhara',
      child: Text('Pokhara'),
    ),
    const DropdownMenuItem(
      value: 'Chitwan',
      child: Text('Chitwan'),
    ),
  ];

  final _gap = const SizedBox(height: 8);
  List<Student> lstStudents = [];

  @override
  void initState() {
    super.initState();
  }
    @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student ListView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: fnameController,
                decoration: const InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter first name';
                  }
                  return null;
                },
              ),
              _gap,
              TextFormField(
                controller: lnameController,
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter last name';
                  }
                  return null;
                },
              ),
              _gap,
              DropdownButtonFormField(
                icon: const Icon(Icons.arrow_downward),
                items: items,
                onChanged: (value) {
                  setState(() {
                    city = value;
                  });
                },
                hint: const Text('Select City'),
                decoration: const InputDecoration(
                  labelText: 'Select City',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Please select city';
                  }
                  return null;
                },
              ),
              _gap,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate() && city != null) {
                      Student student = Student(
                        fname: fnameController.text,
                        lname: lnameController.text,
                        city: city!,
                      );

                      setState(() {
                        lstStudents.add(student);
                      });
                    }
                  },
                  child: const Text('Add Student'),
                ),
              ),
              _gap,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/output',
                      arguments: lstStudents,
                    );
                  },
                  child: const Text('View Students'),
                ),
              ),
              Expanded(
                child:lstStudents.isEmpty
          ? const Center(
              child: Text('No data'),
            )
          : DisplayStudent(
              lstStudents: lstStudents,
            ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
