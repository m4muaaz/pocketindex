// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';


class AllReportScreen extends StatefulWidget {
  const AllReportScreen({Key? key}) : super(key: key);

  @override
  State<AllReportScreen> createState() => _AllReportScreenState();
}

class _AllReportScreenState extends State<AllReportScreen> {
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
            Stack(children: [
              //////Top Background////////
              Container(
                height: 290,
                width: double.infinity,
                color: constants.kSecondary,
              ),

              //////Screen Name////////
              Padding(
                padding: const EdgeInsets.only(left: 50,top: 40),
                child: Text('All Transactions',style: GoogleFonts.luckiestGuy(color: constants.kPrimary,fontSize: 35),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130,top: 70),
                child: Text('Report',style: GoogleFonts.luckiestGuy(color: constants.kPrimary,fontSize: 35),),
              ),
              //////Search////////
              Padding(
                padding: const EdgeInsets.only(top: 120, right: 50),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    style: GoogleFonts.cabin(),
                    controller: SearchController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(EvaIcons.search),
                      iconColor: constants.TSecondary,
                      hintText: 'Search',
                      hintStyle: GoogleFonts.cabin(),
                      fillColor: constants.kPrimary,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(116)),
                      contentPadding: const EdgeInsets.symmetric(vertical: 3),
                    ),
                  ),
                ),
              ),
              //////Filter icon////////
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 340),
                child: InkWell(
                    onTap: (){
                    },
                    child: const Icon(EvaIcons.funnelOutline, color: Colors.white,)),
              )
            ]),

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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        PaymentDisplay(
                            clr: constants.kSecondary,
                            HTclr: constants.kPrimary,
                            LTclr: constants.TSecondary,
                            HText: 'To Receive',
                            LText: 'Rs 900',
                            icon: const Icon(EvaIcons.diagonalArrowLeftDown),
                            iconclr: constants.ReceiveColor),

                        PaymentDisplay(
                            clr: constants.kSecondary,
                            HTclr: constants.kPrimary,
                            LTclr: constants.TSecondary,
                            HText: 'To Pay',
                            LText: 'Rs 750',
                            icon: const Icon(EvaIcons.diagonalArrowRightUp),
                            iconclr: constants.PayColor),

                      ],
                    ),

                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Select Date'),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(

                      children: [
                        DelButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: '18/07/2023'),
                        const Text('   _________ '),
                        DelButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: '18/07/2023'),


                      ],
                    ),
                  ),

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

//////////////////////FloTING BUTTON///////////
          Padding(
            padding: const EdgeInsets.only(top: 710,left: 300),
            child: FloatingActionButton(onPressed: (){}
              ,child: Image.asset('assets/pdffile.png',height: 40,),
            ),
          )

        ],
      ),),
    );
  }
}
