import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imdumb/core/config/app_config.dart';
import 'package:imdumb/core/di/providers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await dotenv.load(fileName: ".env");
  final prefs = await SharedPreferences.getInstance();

  const config = AppConfig(
    flavorMode: FlavorMode.PROD,
    apiHost: 'https://api.themoviedb.org/3',
    apiKey: String.fromEnvironment('API_KEY'),
    primaryColor: Colors.red,
    secondaryColor: Colors.orange,
  );

  runApp(
    ProviderScope(overrides: [
      sharedPreferenceProvider.overrideWithValue(prefs),
      appConfigProvider.overrideWithValue(config),
    ], child: const MyApp()),
  );
}
