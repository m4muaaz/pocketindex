// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';
import 'package:pocketindex/Screens/HomeScreen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: constants.kSecondary,
        body: Column(
          children: [
            Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Text(
                    'Login',
                    style: GoogleFonts.luckiestGuy(
                        fontSize: 60, color: constants.kPrimary),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: Container(
                height: 581,
                width: 430,
                decoration: BoxDecoration(
                    color: constants.kPrimary,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(56),
                        topRight: Radius.circular(56))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 90),
                      child: Text(
                        '__________________Login With__________________',
                        style: GoogleFonts.cabin(),
                      ),
                    ),
                    const SizedBox(
                      height: 150,
                    ),

                    ///////////////Login with google button///////////

                    InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));

                      },
                      child: Container(
                          height: 57,
                          width: 315,
                          decoration: BoxDecoration(
                              color: constants.kSecondary,
                              borderRadius: BorderRadius.circular(59)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: CircleAvatar(
                                  foregroundImage: const AssetImage('assets/google.png'),
                                  backgroundColor: constants.kPrimary,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  'Login With Google',
                                  style: GoogleFonts.cabin(
                                      fontSize: 20,
                                      color: constants.kPrimary,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 190),
                      child: Text(
                        'Pocket Index',
                        style: GoogleFonts.cabin(
                            fontSize: 20,
                            color: constants.TSecondary,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Text(
                        'By Apexius devs',
                        style: GoogleFonts.luckiestGuy(
                          fontSize: 15,
                          color: constants.TPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
