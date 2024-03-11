import 'package:app_haikyuu/src/layers/domain/repository/player_repository_imp.dart';
import 'package:app_haikyuu/src/layers/shared/constants/api_setting.dart';
import 'package:app_haikyuu/src/layers/shared/themes/theme.dart';
import 'package:app_haikyuu/src/layers/views/karasuno_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: ApiSettings.url,
    anonKey: ApiSettings.anonKey,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PlayerRepositoryImp()),
      ],
      child: const MyApp(),
    ),
  );
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: {
        '/': (context) => KarasumoView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
