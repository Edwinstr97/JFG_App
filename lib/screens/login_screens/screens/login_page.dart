// import 'package:encryption/screens/name_page.dart';
// import 'package:encryption/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jfg/constants/assets.dart';
import 'package:jfg/screens/login_screens/screens/login_new_screen.dart';
import 'package:jfg/screens/login_screens/screens/name_page.dart';
import 'package:jfg/screens/login_screens/screens/sign_in_screen.dart';
import 'package:jfg/utils/custom_color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoggingIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SvgPicture.network(
                "https://images.fastcompany.net/image/upload/w_1280,f_auto,q_auto,fl_lossy/w_596,c_limit,q_auto:best,f_auto/fc/3034007-inline-i-applelogo.jpg",
                placeholderBuilder: (BuildContext context) => Container(
                    padding: const EdgeInsets.all(30.0),
                    child: const CircularProgressIndicator()),
              ),
              Text(
                'Welcome To \n to Jesus Family Gathering',
                style: TextStyle(color: Colors.red),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Container(
                  width: double.maxFinite,

// You can use the ElevatedButton Widget. The elevated button widget has a shape property which you can use as shown in the below snippet.

                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return LoginNEWScreen();
                        },
                      ));
                    },
                    child: Text(
                      'I want to Join the Family',
                      style: TextStyle(color: Colors.red),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.red, width: 2),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Container(
                  width: double.maxFinite,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'I just want to use',
                      style: TextStyle(color: Colors.red),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.red, width: 2),
                      shape: StadiumBorder(),
                    ),
                  ),
                  // child: RaisedButton(
                  //   color: CustomColors.blue,
                  //   onPressed: () async {
                  //     // setState(() {
                  //     //   _isLoggingIn = true;
                  //     // });
                  //     // await signInWithGoogle().then((result) {
                  //     //   if (result != null) {
                  //         Navigator.of(context).pushReplacement(
                  //           MaterialPageRoute(
                  //             builder: (context) => NamePage(),
                  //           ),
                  //         );
                  //     //   }
                  //     // }).catchError(
                  //     //     (e) => print('Google sign in error: $e'));
                  //     // setState(() {
                  //     //   _isLoggingIn = false;
                  //     // });
                  //   },
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   child: Padding(
                  //     padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                  //     child: Text(
                  //       'LOGIN as Admin',
                  //       style: TextStyle(
                  //         fontFamily: 'Raleway',
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.white,
                  //         letterSpacing: 2,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ),
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
