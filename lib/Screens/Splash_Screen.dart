// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';
import 'package:pocketindex/Screens/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.kSecondary,
      body: Center(

        child: Column(

          children: [
            const Padding(
              padding: EdgeInsets.only(top: 250),
              child: CircleAvatar(
                radius: 65,
                foregroundImage: AssetImage('assets/icon.png'),

              ),
            ),
            const SizedBox(height: 20,),
            Text('Pocket Index',style: GoogleFonts.luckiestGuy(color: constants.kPrimary, fontSize: 36),),
            const SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(top: 320),
              child: Text('By APEXIUS DEVS',style: GoogleFonts.luckiestGuy(color: constants.TSecondary, fontSize: 15),),
            ),

          ],
        ),
      ),
    );
  }
}
