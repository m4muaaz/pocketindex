// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';

import 'CustomerScreen.dart';


class EditPayment extends StatefulWidget {
  const EditPayment({Key? key}) : super(key: key);

  @override
  State<EditPayment> createState() => _EditPaymentState();
}

class _EditPaymentState extends State<EditPayment> {
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
                    Text('Edit Payment Details', style: GoogleFonts.cabin(color: constants.kPrimary,fontSize: 30),),


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
              DelButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: "Reupload"),
              const SizedBox(height:80 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  InkWell(
                      onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const CustomerScreen()));},
                      child: DelButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: 'Cancel')),

                  DelButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: 'Sumbit'),

                ],
              )
            ],
          ),
        ) ,
      ),
    );
  }
}
