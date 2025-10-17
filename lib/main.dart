 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:pathway/cores/shared/caches/cache_helper.dart';
import 'package:pathway/pathway.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await CacheHelper.initialData();
  Hive.init;
  runApp(const Pathway());
}