import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rider_app/screens/loginpage.dart';
import 'package:rider_app/screens/mainpage.dart';
import 'package:rider_app/screens/registrationpage.dart';
import 'dart:io';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    name: 'db2',
    options: Platform.isIOS
        ? const FirebaseOptions(
            messagingSenderId: '263826058632',
            databaseURL:
                'https://ubertaxi-74aa9-default-rtdb.asia-southeast1.firebasedatabase.app',
            projectId: 'ubertaxi-74aa9',
            appId: '1:263826058632:android:e10b56760acd619531de3d',
            apiKey: 'AIzaSyCBOH6KGg0TBgD-LxRPAo_pQo10xLN6lnA',
          )
        : const FirebaseOptions(
            messagingSenderId: '263826058632',
            databaseURL:
                'https://ubertaxi-74aa9-default-rtdb.asia-southeast1.firebasedatabase.app',
            projectId: 'ubertaxi-74aa9',
            appId: '1:263826058632:android:e10b56760acd619531de3d',
            apiKey: 'AIzaSyCBOH6KGg0TBgD-LxRPAo_pQo10xLN6lnA',
          ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Brand-Regular',
          primarySwatch: Colors.blue,
        ),
        initialRoute:
            (currentFirebaseUser == null) ? LoginPage.id : MainPage.id,
        routes: {
          RegistrationPage.id: (context) => RegistrationPage(),
          LoginPage.id: (context) => LoginPage(),
          MainPage.id: (context) => MainPage(),
        },
      ),
    );
  }
}
