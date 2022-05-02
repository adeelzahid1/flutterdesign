import 'package:flutter/material.dart';
import 'package:flutterui/ui/pages/auth/login.dart';
import 'package:flutterui/ui/pages/auth/recover.dart';
import 'package:flutterui/ui/pages/auth/register.dart';
import 'package:flutterui/ui/pages/home.dart';
import 'package:flutterui/ui/pages/intro.dart';
import 'package:flutterui/ui/pages/payment.dart';
import 'package:flutterui/ui/widgets/slide_right_route.dart';
import 'res/colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Markee',
      color: primary,
      theme: ThemeData(primaryColor: primary, accentColor: accent),
      routes: {
        "/": (_) => IntroPage(),
        "home": (_) => HomePage(),
        "payment": (_) => Payment(),
      },
      onGenerateRoute: (RouteSettings settings) {
        switch(settings.name) {
          case "login":
            return SlideRightRoute(widget: LoginPage());
          case "recover":
            return SlideRightRoute(widget: RecoverPasswordPage());
          case "register":
            return SlideRightRoute(widget: RegisterPage());
          default:
            return null;
        }
      },
    );
  }
}



// class KhaltiApp extends StatelessWidget {
//   static const String path = 'lib/src/khalti_clone/main.dart';
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Markee',
//       color: primary,
//       theme: ThemeData(primaryColor: primary, accentColor: accent),
//       routes: {
//         "/": (_) => IntroPage(),
//         "home": (_) => HomePage(),
//         "payment": (_) => Payment(),
//       },
//       onGenerateRoute: (RouteSettings settings) {
//         switch(settings.name) {
//           case "login":
//             return SlideRightRoute(widget: LoginPage());
//           case "recover":
//             return SlideRightRoute(widget: RecoverPasswordPage());
//           case "register":
//             return SlideRightRoute(widget: RegisterPage());
//           default:
//             return null;
//         }
//       },
//     );
//   }
// }
