import 'package:flutter/material.dart';
import 'package:tumor_detection/core/widgets/navigation.dart';
import 'package:tumor_detection/features/Screens/giloma.dart';
import 'package:tumor_detection/features/Screens/pituitary.dart';

import '../../core/const.dart';
import 'meningioma.dart';

class AboutTumor extends StatelessWidget {
  const AboutTumor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:  EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '-What is Tumor?',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 4,),
                const Text(
                  aboutTumor,
                  style: TextStyle(
                    fontSize: 17,
                    height: 0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4,),
                const Text(
                  '-Types of Tumor in model detection:',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 4,),
                Row(
                  children: [
                    const Text(
                      '- Glioma brain tumor.',
                      style: TextStyle(
                        fontSize: 20,
                        height: 0,
                        fontWeight:FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigation.navigatorTo(context, GilomaPage());
                      },
                      child: const Text(
                        'more...',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 10,
                          height: 0,
                          fontWeight:FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4,),
                Row(
                  children: [
                    const Text(
                      '- Pituitary brain tumor.',
                      style: TextStyle(
                        fontSize: 20,
                        height: 0,
                        fontWeight:FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigation.navigatorTo(context, PituitaryPage());
                      },
                      child: const Text(
                        'more...',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 10,
                          height: 0,
                          fontWeight:FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4,),
                Row(
                  children: [
                    Text(
                      '- Meningioma brain tumor.',
                      style: TextStyle(
                        fontSize: 20,
                        height: 0,
                        fontWeight:FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigation.navigatorTo(context, MeningiomaPage());
                      },
                      child: const Text(
                        'more...',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 10,
                          height: 0,
                          fontWeight:FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
