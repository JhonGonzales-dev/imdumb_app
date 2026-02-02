import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:imdumb/core/config/app_config.dart';

void main() {
  test('devuelve la config inyectada', () {
    const fakeConfig = AppConfig(
      flavorMode: FlavorMode.PROD,
      apiHost: 'https://test.api',
      primaryColor: Colors.blue,
      secondaryColor: Colors.red,
      apiKey: 'fake_key',
    );

    final container = ProviderContainer(
        overrides: [appConfigProvider.overrideWithValue(fakeConfig)]);
    addTearDown(container.dispose);

    final result = container.read(appConfigProvider);

    expect(result.apiHost, 'https://test.api');
  });

  test("Lanza error si Appconfig no fue inizialisado", () {
    final container = ProviderContainer();
    expect(() => container.read(appConfigProvider),
        throwsA(isA<UnimplementedError>()));
  });

  test("Permite usar diferentes config en paralelo", () {
    const devConfig = AppConfig(
      flavorMode: FlavorMode.DEV,
      apiHost: 'https://dev.api',
      primaryColor: Colors.blue,
      secondaryColor: Colors.orange,
      apiKey: 'fake_key',
    );

    const prodConfig = AppConfig(
      flavorMode: FlavorMode.PROD,
      apiHost: 'https://prod.api',
      primaryColor: Colors.green,
      secondaryColor: Colors.red,
      apiKey: 'fake_key',
    );
    final devContainer = ProviderContainer(
      overrides: [
        appConfigProvider.overrideWithValue(devConfig),
      ],
    );

    final prodContainer = ProviderContainer(
      overrides: [
        appConfigProvider.overrideWithValue(prodConfig),
      ],
    );

    expect(devContainer.read(appConfigProvider).apiHost, contains('dev'));
    expect(prodContainer.read(appConfigProvider).apiHost, contains('prod'));
  });
}
