part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class ImageChangeState extends UserState {}

class NameChangeState extends UserState {}

class NavigateToProfile extends UserState{}