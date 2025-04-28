import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jobify/models/job_model.dart';
import 'package:jobify/models/recently_viewed_hive.dart';
import 'package:jobify/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(RecentlyViewedHiveAdapter().typeId)) {
    Hive.registerAdapter(RecentlyViewedHiveAdapter());
  }
  if (!Hive.isAdapterRegistered(JobModelAdapter().typeId)) {
    Hive.registerAdapter(JobModelAdapter());
  }
  runApp(ProviderScope(child: const MyApp()));
}
