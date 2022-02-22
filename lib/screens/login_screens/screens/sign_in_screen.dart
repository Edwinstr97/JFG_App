import 'package:flutter/material.dart';
// import 'package:flutter_auth/Screens/Login/components/background.dart';
// import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
// import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
// import 'package:flutter_auth/components/rounded_button.dart';
// import 'package:flutter_auth/components/rounded_input_field.dart';
// import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jfg/screens/login_screens/screens/background.dart';

class Body extends StatelessWidget {
  // const Body({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            
            SizedBox(
              width: 300,
              height: 200,
              child: TextFormField(
              
                
  decoration: InputDecoration(
      // decoration: InputDecoration(
        prefixIcon: Icon(Icons.done),
      // ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
),

            ),
         
            SizedBox(
              width: 300,
              height: 200,
              child: TextFormField(
              
                
  decoration: InputDecoration(
      // decoration: InputDecoration(
        prefixIcon: Icon(Icons.done),
      // ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
),

            ),
            // RoundedButton(
            //   text: "LOGIN",
            //   press: () {},
            // ),
            // SizedBox(height: size.height * 0.03),
             ElevatedButton(
      child: Text(
        "Sign In",
        style: TextStyle(fontSize: 14)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: Colors.red)
          )
        )
      ),
      onPressed: () => null
    )
            // AlreadyHaveAnAccountCheck(
            //   press: () {
               
            //     );
              // },
            // ),
          ],
        ),
      ),
    );
  }
}

