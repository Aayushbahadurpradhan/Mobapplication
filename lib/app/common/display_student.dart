import 'package:application_one/app/common/my_snackbar.dart';
import 'package:application_one/model/student.dart';
import 'package:flutter/material.dart';

class DisplayStudent extends StatelessWidget {
  const DisplayStudent({super.key, required this.lstStudents});

  final List<Student> lstStudents;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: lstStudents.length,
      itemBuilder: (context, index) {
        return
            // ListTile(
            //   leading: const Icon(Icons.person),
            //   title: Text(
            //     '${lstStudents[index].fname} ${lstStudents[index].lname}',
            //   ),
            //   subtitle: Text(lstStudents[index].city),
            //   trailing: Wrap(
            //     spacing: 12,
            //     children: [
            //       IconButton(
            //         onPressed: () {},
            //         icon: const Icon(Icons.edit),
            //       ),
            //       IconButton(
            //         onPressed: () {},
            //         icon: const Icon(Icons.delete),
            //       ),
            //     ],
            //   ),
            //   onTap: () {
            //     // Handle tap logic if needed
            //   },
            // );
            SizedBox(
          height: 150,
          width: double.infinity,
          child: GestureDetector(
            onTap: () {
              showSnackbar(context, 'One Tap');
            },
            onDoubleTap: () {
              showSnackbar(context, 'DoubleTap',color: Colors.blue);

            },
            child: Card(
              color: Colors.amber,
              shadowColor: Colors.blue,
              surfaceTintColor: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  '${lstStudents[index].fname} ${lstStudents[index].lname} \n ${lstStudents[index].city}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
