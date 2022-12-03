import 'package:admin_app/cards/hscreencard.dart';
import 'package:admin_app/constants/colors.dart';
import 'package:admin_app/screens/new_request.dart';
import 'package:admin_app/screens/neworg.dart';
import 'package:admin_app/screens/recieved.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Charity Gem Admin'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          widget.title,
        ),
        backgroundColor: bgDark,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            HomeScreenCard(title: 'New Requests', routeTo: NewRequest()),
            HomeScreenCard(
              title: 'Recieved Donations',
              routeTo: Recieved(),
            ),
            HomeScreenCard(
              title: 'New Organization Requests',
              routeTo: NewOrganisation(),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
