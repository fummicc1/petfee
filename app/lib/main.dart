import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:petfee/domain/entities/pet.dart';
import '/ui/pages/pet_detail/pet_detail_page.dart';
import '/ui/pages/pet_list/pet_list_page.dart';
import '/ui/pages/root_page.dart';

import 'domain/services/push_notification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initializeDateFormatting('ja_JP', null);
  onReceivePushNotificationMessage((message) {});
  runApp(const ProviderScope(child: MyApp()));
}

const petIcon = Icon(Icons.pets);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static const pageName = "/";

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        colorScheme: const ColorScheme.dark().copyWith(
          brightness: Brightness.dark,
          secondary: const Color.fromARGB(255, 141, 92, 69),
        )
      ),
      home: const RootPage(),
      routes: {
        PetListPage.pageName: (context) => const PetListPage(),
        RootPage.pageName: (context) => const RootPage(),
        PetDetailPage.pageName: (context) {
          final pet = ModalRoute.of(context)?.settings.arguments as Pet;
          return PetDetailPage(pet: pet);
        },
      },
    );
  }
}
