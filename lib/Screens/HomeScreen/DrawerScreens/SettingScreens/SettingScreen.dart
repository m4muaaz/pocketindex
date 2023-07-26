// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';
import 'package:pocketindex/Screens/HomeScreen/DrawerScreens/SettingScreens/BackupScreen.dart';
import 'package:pocketindex/Screens/HomeScreen/DrawerScreens/SettingScreens/PasswordScreen.dart';
import 'package:pocketindex/Screens/LoginScreen.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 169,
              width: double.infinity,
              color: constants.kSecondary,
              child: Center(child: Text('SETTINGS',style: GoogleFonts.luckiestGuy(color: constants.kPrimary,fontSize: 40),)),
            ),
            const SizedBox(height: 100,),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const PasswordScreen()));
                },
                child: BackupButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: 'Enable Password')),
            const SizedBox(height: 30,),

            InkWell(onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BackupScreen()));
            },
                child: BackupButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: 'Backup')),
            const SizedBox(height: 60,),

            InkWell(
                onTap: (){

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                },
                child: LogoutButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: 'LogOut')),
            const SizedBox(height: 180,),
            Text('Pocket Index',style: GoogleFonts.luckiestGuy(fontSize: 25,color: constants.TPrimary),),
            Text('By ApexiusDevs',style: GoogleFonts.luckiestGuy(fontSize: 15,color: constants.TSecondary),),
          ],
        ),
      ),
    );
  }
}
