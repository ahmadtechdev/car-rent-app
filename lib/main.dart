import 'package:car_rent_app/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
              onTap: () {
                final user = {
                  "firstName": "Ahmad",
                  "lastName": "Raza",
                  "born": 0
                };
                db.collection("users").add(user).then((DocumentReference doc) =>
                    print("User add with ID: ${doc.id}"));
              },
              child: const Text('Hello World!')),
        ),
      ),
    );
  }
}
