import 'package:flutter/material.dart';
import 'package:tumor_detection/core/widgets/my_asset_image.dart';

import '../../core/const.dart';

class GilomaPage extends StatelessWidget {
  const GilomaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giloma Tumor'),
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '-What is glioma brain tumor?',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 4,),
              Text(
                aboutGiloma,
                style: TextStyle(
                  fontSize: 17,
                  height: 0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4,),
              Text(
                '-What are the causes of giloma tumor?',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 4,),
              Text(
                gilomaCauses,
                style: TextStyle(
                  fontSize: 17,
                  height: 0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4,),
              MyAssetImage(image: 'giloma2.png'),
              MyAssetImage(image: 'giloma1.png'),
            ],
          ),
        ),
      ),
    );
  }
}
