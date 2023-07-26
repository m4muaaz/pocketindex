// ignore_for_file: file_names

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';
import 'package:pocketindex/Screens/HomeScreen/home_screen.dart';

class EditBussiness extends StatefulWidget {
  const EditBussiness({Key? key}) : super(key: key);

  @override
  State<EditBussiness> createState() => _EditBussinessState();
}

class _EditBussinessState extends State<EditBussiness> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(

            children: [
              /////////////Purple Container with Text/////////////
              Container(
                height: 162,
                width: double.infinity,
                color: constants.kSecondary,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Business Details',style: GoogleFonts.luckiestGuy(color: constants.kPrimary,fontSize: 30),),
                ),
              ),
              ////////////Lower White Portion////////////////
              Padding(
                padding: const EdgeInsets.only(top: 160),
                child: Container(
                  height: 666,
                  width: double.infinity,
                  color: constants.kPrimary,
                ),
              ),
              ////////////Business Card////////////////
              Padding(
                padding: const EdgeInsets.only(top: 80,left: 15),
                child: Container(
                  height: 187,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100,left: 40),
                child: Text('MS FABRICS',style: GoogleFonts.luckiestGuy(fontSize: 30,color: constants.kPrimary),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140,left: 40),
                child: Text('msfabrics@gmail.com',style: GoogleFonts.cabin(fontSize: 15,color: constants.TSecondary),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170,left: 40),
                child: Text('+92336767677',style: GoogleFonts.cabin(fontSize: 20,color: constants.kPrimary),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250,top: 90),
                child: InkWell(
                  onTap: (){},
                  child: CircleAvatar(

                    backgroundColor: constants.TSecondary,
                    radius: 40,
                    child: Image.asset('google.png'),
                  ),
                ),
              ),
              ////////////Share Button////////////////
              Padding(
                padding: const EdgeInsets.only(left: 288,top: 225),
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: constants.ReceiveColor,
                  child: const Icon(EvaIcons.share,size: 38,color: Colors.black,),
                ),
              ),
              ////Lower Portion /Text form fields////////////////

              Padding(
                padding: const EdgeInsets.only(top: 270,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Business Name',style: GoogleFonts.cabin(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    TextFormField(
                      style: GoogleFonts.cabin(),
                      decoration: InputDecoration(
                        hintText: ' Name',
                        hintStyle: GoogleFonts.cabin(),
                        fillColor: constants.kPrimary,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(116)),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Phone No.',style: GoogleFonts.cabin(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    TextFormField(
                      style: GoogleFonts.cabin(),
                      decoration: InputDecoration(
                        hintText: ' (optional)',
                        hintStyle: GoogleFonts.cabin(),
                        fillColor: constants.kPrimary,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(116)),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Email.',style: GoogleFonts.cabin(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    TextFormField(
                      style: GoogleFonts.cabin(),
                      decoration: InputDecoration(
                        hintText: ' (optional)',
                        hintStyle: GoogleFonts.cabin(),
                        fillColor: constants.kPrimary,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(116)),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Address.',style: GoogleFonts.cabin(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    TextFormField(

                      style: GoogleFonts.cabin(),
                      decoration: InputDecoration(
                          hintText: ' (optional)',
                          hintStyle: GoogleFonts.cabin(),
                          fillColor: constants.kPrimary,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          contentPadding: const EdgeInsets.only(top: 100)
                      ),
                    ),
                  ],
                ),
              ),
              ////bottom Buttons////////////////

              Padding(
                padding: const EdgeInsets.only(top: 775),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    InkWell(
                        onTap:(){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                        },
                        child: DelButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: 'Cancel')),

                    DelButton(boxclr: constants.kSecondary, Tclr: constants.kPrimary, text: 'Sumbit'),

                  ],
                ),
              ),

            ],
          ),
        ),

      ),
    );
  }
}
