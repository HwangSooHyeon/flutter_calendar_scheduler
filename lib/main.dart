import 'package:flutter/material.dart';
import 'package:flutter_calendar_scheduler/database/drift_database.dart';
import 'package:flutter_calendar_scheduler/firebase_options.dart';
import 'package:flutter_calendar_scheduler/provider/schedule_provider.dart';
import 'package:flutter_calendar_scheduler/repository/schedule_repository.dart';
import 'package:flutter_calendar_scheduler/screen/home_screen.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await initializeDateFormatting();

  final database = LocalDatabase();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}
