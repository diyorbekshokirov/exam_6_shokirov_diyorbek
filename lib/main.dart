import 'package:easy_localization/easy_localization.dart';
import 'package:exam_6_shokirov_diyorbek/app.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';


void main() async{


  await Hive.initFlutter();
   await Hive.openBox("mode");
  runApp(const MyApp());
}
