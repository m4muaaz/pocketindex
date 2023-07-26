// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';
class BackupScreen extends StatefulWidget {
  const BackupScreen({Key? key}) : super(key: key);

  @override
  State<BackupScreen> createState() => _BackupScreenState();
}

class _BackupScreenState extends State<BackupScreen> {
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
              child: Center(child: Text('Backup',style: GoogleFonts.luckiestGuy(color: constants.kPrimary,fontSize: 40),)),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Backup your data completely safe on our cloud through your email. When you will login again , the data will be restored automatically.',style: GoogleFonts.cabin(fontSize: 12,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 150,),
            Image.asset('assets/cloud.png',height: 107,width: 187,),
            const SizedBox(height: 30,),
            InkWell(
                onTap: (){},
                child: BackupButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: 'Backup')),

            const SizedBox(height: 180,),
            Text('Pocket Index',style: GoogleFonts.luckiestGuy(fontSize: 25,color: constants.TPrimary),),
            Text('By ApexiusDevs',style: GoogleFonts.luckiestGuy(fontSize: 15,color: constants.TSecondary),),
          ],
        ),
      ),
    );
  }
}
