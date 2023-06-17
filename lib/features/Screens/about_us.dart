import 'package:flutter/material.dart';
import 'package:tumor_detection/core/widgets/my_asset_image.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            aboutUs(),
            const SizedBox(height: 20,),
            const Text(
              '-Outlast team',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold
              ),
            ),
            infoTeam(),
            const SizedBox(height: 20,),
            doctorInfo()

          ],

        ),
      ),
    );
  }
}
Widget aboutUs(){
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      //who we are
      Text(
        '-Who We Are?',
        style: TextStyle(
            fontSize: 25,
            color: Colors.teal,
            fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 4,),
      Text(
        'We are Outlast team. We want to solve the biggest problems with simple solutions that everyone can use with ease. We are a team of passionate software engineers who are eager to learn more and more over time.We acquire expertise in artificial intelligence, software development, and user experience design.',
        style: TextStyle(
          fontSize: 17,
          height: 0,
          color: Colors.grey,
        ),
      ),
      //Our Mission
      SizedBox(height: 15,),
      Text(
        '-Our Mission',
        style: TextStyle(
            fontSize: 25,
            color: Colors.teal,
            fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 4,),
      Text(
        'We aim to make the life of doctors: neurologists easier by reducing the time doctor and patients have to go through to examine an MRI image by automating the process within seconds with the help of the artificial intelligence algorithms',
        style: TextStyle(
          fontSize: 17,
          height: 0,
          color: Colors.grey,
        ),
      ),
      //Our Vision
      SizedBox(height: 15,),
      Text(
        '-Our Vision',
        style: TextStyle(
            fontSize: 25,
            color: Colors.teal,
            fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 4,),
      Text(
        'Our vision is to make use of artificial intelligence and mobile devices that are in everyone\'s hand to make people\'s lives easier and save their precious time with less effort',
        style: TextStyle(
          fontSize: 17,
          height: 0,
          color: Colors.grey,
        ),
      ),
    ],
  );
}
Widget infoTeam()
{
  return const Column(
    children: [
      SizedBox(height: 20,),
      Row(
        children: [
          Expanded(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  child: CircleAvatar(
                    radius: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: MyAssetImage(
                        image: 'memo.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  'Mohamed Alaa',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    height: 0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 25,),
          Expanded(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  child: CircleAvatar(
                    radius: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: MyAssetImage(
                        image: 'maged.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  'Mohamed Maged',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'Artificial Intelligence',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    height: 0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 20,),
      Row(
        children: [
          Expanded(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  child: CircleAvatar(
                    radius: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: MyAssetImage(
                        image: 'alaa.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  'Alaa Mohamed',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  '.Net Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    height: 0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 25,),
          Expanded(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  child: CircleAvatar(
                    radius: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: MyAssetImage(
                        image: 'asma.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  'Asmaa Zain',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'UI/UX Team',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    height: 0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
      SizedBox(height: 20,),
      Row(
        children: [
          Expanded(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  child: CircleAvatar(
                    radius: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: MyAssetImage(
                        image: 'aalaa.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  'Alaa Abd el Rahim',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    height: 0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 25,),
          Expanded(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  child: CircleAvatar(
                    radius: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: MyAssetImage(
                        image: 'mostafa.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  'Mostafa Omer',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'Backend Team',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    height: 0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
      SizedBox(height: 20,),
      Row(
        children: [
          Expanded(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  child: CircleAvatar(
                    radius: 75,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: MyAssetImage(
                        image: 'abdallh.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  'Abdallh Albakry',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'PHP Developer',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    height: 0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
Widget doctorInfo()
{
  return Column(
    children: [
      Container(
        height: 3,
        color: Colors.black,
      ),
      const Center(
        child: Text(
          'All thanks and appreciation',
          style: TextStyle(
              fontSize: 18,
              color: Colors.teal,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      const Center(
        child: Text(
          'Dr.Marwa Mamdouh',
          style: TextStyle(
              fontSize: 18,
              color: Colors.teal,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      const Center(
        child: Text(
          'Never forget her',
          style: TextStyle(
              fontSize: 18,
              color: Colors.teal,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    ],
  );
}