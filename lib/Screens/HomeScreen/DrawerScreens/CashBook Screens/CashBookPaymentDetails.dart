// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';
import 'package:pocketindex/Screens/HomeScreen/DrawerScreens/CashBook%20Screens/CashBook.dart';

class CPaymentDetails extends StatefulWidget {
  const CPaymentDetails({Key? key}) : super(key: key);

  @override
  State<CPaymentDetails> createState() => _CPaymentDetailsState();
}

class _CPaymentDetailsState extends State<CPaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 69,
                width: double.infinity,
                color: constants.kSecondary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Payment Details', style: GoogleFonts.cabin(color: constants.kPrimary,fontSize: 30),),


                  ],
                ),
              ),

              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(

                  decoration: InputDecoration(
                      hintText: ' Amount',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10)
                  ),

                ),
              ),


              const SizedBox(height: 10,),
              Stack(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 208,left: 10),
                    child: TextFormField(

                      decoration: InputDecoration(
                          hintText: ' Note',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 10)
                      ),

                    ),
                  ),
                  const DateButton(date: '18/07/2023')
                ],
              ),
              const SizedBox(height: 30,),
              Stack(
                children: [
                  Container(
                    height: 387,
                    width: 300,
                    color: constants.TSecondary,
                  ),
                  Image.asset('assets/receipt.png')
                ],
              ),
              const SizedBox(height: 10,),
              InkWell(onTap:(){},child: DelButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: 'Reupload')),
              const SizedBox(height:100 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  InkWell(onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const CashBook()));
                  },child: DelButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: 'Cancel')),

                  InkWell(onTap:(){},child: DelButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: 'Submit')),

                ],
              )
            ],
          ),
        ) ,
      ),
    );
  }
}
