import 'package:aimeechat_front/screens/splash/spalsh_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  WidgetsFlutterBinding.ensureInitialized();


  runApp(
    // Riverpodでデータを受け渡しが可能な状態にするために必要
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aimee Chat',
      home: SplashScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFF8B7C7),
          toolbarHeight: 35,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent, // <-- SEE HERE
            statusBarIconBrightness: Brightness.light, //<-- For Android SEE HERE (dark icons)
            statusBarBrightness: Brightness.dark, //<-- For iOS SEE HERE (dark icons)
          ),
        ),
        brightness: Brightness.light,
        useMaterial3: true,

        //Theme.of(context).colorScheme.primary
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFf8b7c7),
          primary: Color(0xFFf8b7c7),
        ).copyWith(
            primary: Color(0xFFF8B7C7), //Candy
            secondary: Color(0xFFBAE2FC) //Shiori
        ),
        //Theme.of(context).textTheme.headline1,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontFamily: "Noto_Sans_JP",
          ),
          displayLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.brown,
            fontFamily: "Noto_Sans_JP",
          ),
          displayMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Noto_Sans_JP",
          ),
          displaySmall:  TextStyle(
            fontSize: 14,
            color: Color(0xFF794A4A),
            fontFamily: "Noto_Sans_JP",
          ),
          bodyLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.brown,
            fontFamily: "Noto_Sans_JP",
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF794A4A),
            fontFamily: "Noto_Sans_JP",
          ),
          bodySmall: TextStyle(
            fontSize: 14,
            color: Color(0xFFCCA4A4),
            fontFamily: "Noto_Sans_JP",
          ),

        ),
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale("en"),
        const Locale("ja"),
      ],
    );
  }
}
