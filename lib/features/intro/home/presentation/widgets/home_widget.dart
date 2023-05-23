import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tumor_detection/core/widgets/my_asset_image.dart';

import '../../cubit/home_cubit.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(HomeCubit.get(context).title[HomeCubit.get(context).index]),
            shadowColor: Colors.grey,
          ),
          body: HomeCubit.get(context).appScreen[HomeCubit.get(context).index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: HomeCubit.get(context).index,
            onTap: (index) {
              HomeCubit.get(context).homeChangeScreen(idx: index);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_box_outlined), label: 'About'),
            ],
            backgroundColor: Colors.teal.shade300,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
          ),
        );
      },
    );
  }
}
