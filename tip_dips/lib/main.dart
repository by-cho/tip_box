import 'package:flutter/material.dart';
import 'package:tip_dips/screen/tip_screen.dart';
import 'const/tabs.dart';
import 'screen/home_screen.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: TABS.length,
      vsync: this,
    );
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: controller.index == 0 ? HomeScreen() : TipScreen(),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              controller.index == 0 ? Color(0xFF035C48) : Colors.yellow[700],
          unselectedItemColor: Colors.grey[400],
          currentIndex: controller.index,
          onTap: (index) {
            controller.animateTo(index);
          },
          items: TABS
              .map(
                (e) => BottomNavigationBarItem(
                  icon: Icon(
                    e.icon,
                  ),
                  label: e.label,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
