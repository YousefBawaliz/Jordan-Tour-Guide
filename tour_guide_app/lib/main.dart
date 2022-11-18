import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tour_guide_app/Provider/user_provider.dart';
import 'package:tour_guide_app/Screens/login_screen.dart';
import 'package:tour_guide_app/firebase_options.dart';
import 'package:tour_guide_app/home-components/places.dart';
import 'package:tour_guide_app/home-components/places2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData.dark().copyWith(),
    //   // home: SignUpScreen(),
    //   // home: MapsLoadingScreen(siteName: 'Petra'),

    // );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Instagram clone',
        theme: ThemeData.dark().copyWith(),
        // home: ResponsiveLayout(
        //     mobileScreenLayout: MobileScreenLayout(),
        //     webScreenLayout: WebScreenLayout()),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              // Checking if the snapshot has any data or not
              if (snapshot.hasData) {
                // if snapshot has data which means user is logged in then we check the width of screen and accordingly display the screen layout
                // return const ResponsiveLayout(
                //   mobileScreenLayout: MobileScreenLayout(),
                //   webScreenLayout: WebScreenLayout(),
                return const Places2();
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('${snapshot.error}'),
                );
              }
            }

            // means connection to future hasnt been made yet
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return const LogInScreen();
          },
        ),
      ),
    );
  }
}
