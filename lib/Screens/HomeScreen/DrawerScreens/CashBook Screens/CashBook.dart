// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';

import 'CashInScreen.dart';
import 'CashOutScreen.dart';




class CashBook extends StatefulWidget {
  const CashBook({Key? key}) : super(key: key);

  @override
  State<CashBook> createState() => _CashBookState();
}

class _CashBookState extends State<CashBook> {
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
                padding: const EdgeInsets.only(left: 110,top: 50),
                child: Text('CashBook',style: GoogleFonts.luckiestGuy(color: constants.kPrimary,fontSize: 35),),
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
                            HText: 'Cash in Hand',
                            LText: 'Rs 900',
                            icon: const Icon(EvaIcons.diagonalArrowLeftDown),
                            iconclr: constants.ReceiveColor),

                        PaymentDisplay(
                            clr: constants.kSecondary,
                            HTclr: constants.kPrimary,
                            LTclr: constants.TSecondary,
                            HText: 'Expense',
                            LText: 'Rs 750',
                            icon: const Icon(EvaIcons.diagonalArrowRightUp),
                            iconclr: constants.PayColor),

                      ],
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(onTap:(){},child: OldRecordButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: 'Old Record')),
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
                  CList(title: 'Muaaz', date: '18 July', Amount: 'Rs 900',AmountR: 'Rs 0', clr: constants.kPrimary,icon: const Icon(EvaIcons.diagonalArrowRightUp),iconclr: constants.PayColor,),

                ],
              ),
            ),
          ),
          ///////////////////////////Bottom buttons///////////////////////////////////////////
          Padding(
            padding: const EdgeInsets.only(top: 750),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const CashInScreen()));
                    },

                    child: PayButton(title: 'Cash in', clr: constants.ReceiveColor, Tclr: constants.kPrimary, icon: const Icon(EvaIcons.diagonalArrowLeftDown), )),
                InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const CashOutScreen()));
                    },
                    child: PayButton(title: 'Cash out', clr: constants.PayColor, Tclr: constants.kPrimary, icon: const Icon(EvaIcons.diagonalArrowRightUp), ))

              ],
            ),
          ),

        ],
      ),),
    );
  }
}
