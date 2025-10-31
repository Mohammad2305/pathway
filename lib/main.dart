import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pathway/cores/shared/caches/cache_helper.dart';
import 'package:pathway/cores/shared/constants/app_constants.dart';
import 'package:pathway/cores/shared/cubits/task_cubit/task_cubit.dart';
import 'package:pathway/cores/shared/cubits/user_cubit/user_cubit.dart';
import 'package:pathway/cores/utils/models/classes/task_info.dart';
import 'package:pathway/pathway.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await CacheHelper.initialData();
  await Hive.initFlutter();
  Hive.registerAdapter(TaskMainInfoAdapter());
  await Hive.openBox<TaskMainInfo>(AppConstants.taskBoxId);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=>UserCubit()),
        BlocProvider(create: (_)=>TaskCubit())
      ], 
      child: const Pathway(),
    ),
  );
}
