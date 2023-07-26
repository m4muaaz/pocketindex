// ignore_for_file: file_names ,non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';

class Wasooli extends StatefulWidget {
  const Wasooli({Key? key}) : super(key: key);

  @override
  State<Wasooli> createState() => _WasooliState();
}

class _WasooliState extends State<Wasooli> {
  TextEditingController SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( body: Stack(

        //// Upper portion///
        children: [ Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //--------------//////////Upper portion///////////////-------------------
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: WasooliDisplay(clr: constants.kSecondary, HTclr: constants.kPrimary, LTclr: constants.TSecondary, icon: const Icon(EvaIcons.diagonalArrowLeftDown), HText: 'To Receive', LText: 'Rs 900', iconclr: constants.ReceiveColor),
            ),

          ],
        ),
/////////////////Lower portion/List View/////////////////////////////////////////////
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(width: double.infinity,
              height: 30000,
              color: constants.kPrimary,
              child: ListView(

                children: [

                  Row(
                    children: [
                      const SizedBox(width: 40,),
                      Text('Date', style: GoogleFonts.cabin(color: constants.kSecondary, fontSize: 20,fontWeight: FontWeight.bold),),
                      const SizedBox(width: 110,),
                      Text('Given', style: GoogleFonts.cabin(color: constants.kSecondary, fontSize: 20,fontWeight: FontWeight.bold),),
                      const SizedBox(width: 50,),
                      Text('Received', style: GoogleFonts.cabin(color: constants.kSecondary, fontSize: 20,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  const Divider(),
                  const SizedBox(height: 10,),
                  RList(title: 'Muaaz', date: '18 July', Amount: 'Rs 900',AmountR: 'Rs 0', clr: constants.kPrimary,icon: const Icon(EvaIcons.diagonalArrowRightUp),iconclr: constants.PayColor,),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 710,left: 300),
            child: FloatingActionButton(onPressed: (){}
              ,child: const Icon(EvaIcons.personAdd),
            ),
          )
        ],
      ),),
    );
  }
}
