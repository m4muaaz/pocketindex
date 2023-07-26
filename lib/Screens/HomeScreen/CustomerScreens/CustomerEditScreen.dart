// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';

import 'CustomerScreen.dart';
class CustomerEdit extends StatefulWidget {
  const CustomerEdit({Key? key}) : super(key: key);

  @override
  State<CustomerEdit> createState() => _CustomerEditState();
}

class _CustomerEditState extends State<CustomerEdit> {
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
                    Text('Edit Customer', style: GoogleFonts.cabin(color: constants.kPrimary,fontSize: 30),),


                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(

                  decoration: InputDecoration(
                      hintText: ' Name',
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
                      hintText: ' Phone No.(optional)',
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
                      hintText: ' Email (optional)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10)
                  ),

                ),
              ),


              const SizedBox(height: 450,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const CustomerScreen()));

                      },
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
