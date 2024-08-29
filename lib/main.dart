import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_base_test/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    debugPrint("initializ firebase");
  } catch (e) {
    debugPrint("no firebase");
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Store Data in firestore'),
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
  var db = FirebaseFirestore.instance;

  void _addNewUser() {
    final user = <String, dynamic>{
      "first": "Siham",
      "middle": "Abdullah",
      "last": "qatani",
    };

// Add a new document with a generated ID
    db.collection("users").add(user).then((DocumentReference doc) {
      debugPrint('user added with ID:: ${doc.id}');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("User added successfully!"),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.green,
        ),
      );
    }).catchError((error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Failed to add user: $error"),
          duration: const Duration(seconds: 2),
          backgroundColor: Colors.red,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text("press button to add new user")),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton(
            onPressed: _addNewUser,
            child: const Text('Add User'),
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
