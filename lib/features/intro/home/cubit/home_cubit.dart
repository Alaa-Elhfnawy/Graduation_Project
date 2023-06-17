
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:tumor_detection/features/Screens/about_tumor.dart';
import 'package:tumor_detection/features/Screens/about_us.dart';
import 'package:tumor_detection/features/Screens/test_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  List<String>title=[
    'Home',
    'About Tumor',
    'About Us',
  ];
  List<Widget>appScreen=[
    const TestModel(),
    const AboutTumor(),
    const AboutPage()
  ];
  int index=0;
  void homeChangeScreen({
  required int idx
}){
    index=idx;
    emit(HomeChangeScreen());
  }

}
