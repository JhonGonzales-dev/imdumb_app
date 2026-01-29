import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imdumb/core/di/providers.dart';
import 'package:imdumb/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform); 
  final prefs = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
        overrides: [sharedPreferenceProvider.overrideWithValue(prefs)],
        child: const MyApp()),
  );
}
