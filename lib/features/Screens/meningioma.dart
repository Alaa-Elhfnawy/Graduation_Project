import 'package:flutter/material.dart';

import '../../core/const.dart';
import '../../core/widgets/my_asset_image.dart';

class MeningiomaPage extends StatelessWidget {
  const MeningiomaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meningioma Tumor'),
      ),
      body:    const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '-What Is Meningioma?',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 4,),
              Text(
                aboutMeningioma,
                style: TextStyle(
                  fontSize: 17,
                  height: 0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4,),
              Text(
                '-What Is the Treatment for Meningioma',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 4,),
              Text(
                treatmentMeningioma,
                style: TextStyle(
                  fontSize: 17,
                  height: 0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4,),
              MyAssetImage(image: 'm1.png'),
              MyAssetImage(image: 'm2.png'),
            ],
          ),
        ),
      ),
    );
  }
}
