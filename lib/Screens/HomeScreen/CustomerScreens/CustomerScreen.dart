// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';
import 'CusPayScreen.dart';
import 'CusReceiveScreen.dart';
import 'CustomerEditScreen.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
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
              //////ICons//////////
              Padding(
                padding: const EdgeInsets.only(left: 250,top: 70),
                child: Row(
                  children: [
                    InkWell(onTap:(){},child: Image.asset('assets/receipt.png',height: 35,width: 35,)),
                    const SizedBox(width: 10,),
                    InkWell(onTap:(){},child: Image.asset('assets/pdffile.png',height: 35,width: 35,)),
                    const SizedBox(width: 10,),
                    InkWell(onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const CustomerEdit()));
                    },child: Image.asset('assets/edit.png',height: 35,width: 35,)),


                  ],

                ),
              ),
              //////Customer Name////////
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 40),
                child: Text('Ashir',style: GoogleFonts.cabin(color: constants.kPrimary,fontSize: 35),),
              ),
              //////Customer Number////////
              Padding(
                padding: const EdgeInsets.only(top: 95,left: 30),
                child: Text('+92323333333',style: GoogleFonts.cabin(color: constants.TSecondary,fontSize: 20),),
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
                  UserList(title: 'Pay', date: '18 July', Amount: 'Rs 900',AmountR: 'Rs 0', clr: constants.kPrimary,icon: const Icon(EvaIcons.diagonalArrowRightUp),iconclr: constants.PayColor,),

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

                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const CusReceiveScreen()));
                    },

                    child: PayButton(title: 'Receive', clr: constants.ReceiveColor, Tclr: constants.kPrimary, icon: const Icon(EvaIcons.diagonalArrowLeftDown), )),
                InkWell(
                    onTap:(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const CusPayScreen()));
                    },

                    child: PayButton(title: 'Pay', clr: constants.PayColor, Tclr: constants.kPrimary, icon: const Icon(EvaIcons.diagonalArrowRightUp), ))

              ],
            ),
          )

        ],
      ),),
    );
  }
}
