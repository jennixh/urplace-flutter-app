import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tcc/themes/theme.dart';
import 'pages/start_page.dart';


void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    MaterialTheme theme = MaterialTheme();
    
    return MaterialApp(
        title: 'Urplace',
        theme: brightness == Brightness.light ? theme.light() : theme.light(),
        
        home: const StartPage(),
        debugShowCheckedModeBanner: false,
      );
  }
}

class MyAppState extends ChangeNotifier {
  @override
  notifyListeners();
}
