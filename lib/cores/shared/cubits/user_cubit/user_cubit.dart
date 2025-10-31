import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import '../../../../features/profile_screen/presentation/profile_screen.dart';
import '../../caches/cache_helper.dart';
import '../../constants/app_constants.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  // change image
  void changeImage(String? imgPath){
    CacheHelper.setData(AppConstants.appUserImage, imgPath);
    emit(ImageChangeState());
  }

  // change name
  TextEditingController setNameController = TextEditingController();
  void changeName(String name){
    CacheHelper.setData(AppConstants.appUserName, name);
    emit(NameChangeState());
  }

  void navigateToProfile(BuildContext context) async{
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ProfileScreen(),
      ),
    );
    emit(NavigateToProfile());
  }
}
