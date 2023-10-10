import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            // child: Column(
            //   children: [
            //     SizedBox(
            //       child: Image.asset('assets/images/flower.jpg'),

            //       ),
            //     const SizedBox(
            //       height: 20,
            //     ),
            //     Image.asset('assets/images/parrot.jpg'),
            //   ],
            // ),
            child: Column(
              children: [
                SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(300),
                    child: Image.asset('assets/images/flower.jpg'),
                    ),
                ),
                SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(300),
                    child: Image.asset('assets/images/parrot.jpg'),
                    ),
                ),
                  SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(300),
                    child: Image.network('https://editor.analyticsvidhya.com/uploads/53166Intro.jfif'),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
