// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';

class CashInScreen extends StatefulWidget {
  const CashInScreen({Key? key}) : super(key: key);

  @override
  State<CashInScreen> createState() => _CashInScreenState();
}

class _CashInScreenState extends State<CashInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child:   Column(
            children: [
              Container(
                height: 69,
                width: double.infinity,
                color: constants.kSecondary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Cash In', style: GoogleFonts.cabin(color: constants.kPrimary,fontSize: 30),),
                    Stack(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white
                              ,borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        const Icon(Icons.camera_alt_outlined,color: Colors.black,size: 40,)
                      ],
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(

                  decoration: InputDecoration(
                      hintText: ' Customer Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10)
                  ),

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
              Padding(
                padding: const EdgeInsets.only(top: 490),
                child: SubmitButton(boxclr: constants.kSecondary, text: 'Submit', Tclr: constants.kPrimary, ),
              )
            ],
          ),
        ) ,
      ),
    );
  }
}
