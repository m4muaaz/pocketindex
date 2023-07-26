// ignore_for_file: non_constant_identifier_names
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';
import 'package:pocketindex/Screens/HomeScreen/DrawerScreens/AllTransactionReportScreen.dart';
import 'package:pocketindex/Screens/HomeScreen/DrawerScreens/CashBook%20Screens/CashBook.dart';
import 'package:pocketindex/Screens/HomeScreen/DrawerScreens/DailyReportScreen.dart';
import 'package:pocketindex/Screens/HomeScreen/DrawerScreens/EditBussinessScreen.dart';
import 'package:pocketindex/Screens/HomeScreen/DrawerScreens/WasooliScreen.dart';
import 'package:pocketindex/Screens/HomeScreen/PayButtonScreen.dart';
import 'package:pocketindex/Screens/HomeScreen/ReceiveButtonScreen.dart';

import 'DrawerScreens/SettingScreens/SettingScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: constants.kSecondary,
        appBar: AppBar(
          iconTheme: IconThemeData(color: constants.kPrimary),
          backgroundColor: constants.kSecondary,
          title: Text(
            'Pocket Index',
            style: GoogleFonts.cabin(color: constants.kPrimary, fontSize: 30),
          ),
        ),
        body: Stack(

          //// Upper portion///
          children: [ Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //////////Upper portion//////
              Stack(children: [
                Container(
                  height: 243,
                  width: double.infinity,
                  color: constants.kSecondary,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160, right: 50),
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
                Padding(
                  padding: const EdgeInsets.only(
                      top: 50
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      PaymentDisplay(
                          clr: constants.kPrimary,
                          HTclr: constants.TPrimary,
                          LTclr: constants.TPrimary,
                          HText: 'To Receive',
                          LText: 'Rs 900',
                          icon: const Icon(EvaIcons.diagonalArrowLeftDown),
                          iconclr: constants.ReceiveColor),

                      PaymentDisplay(
                          clr: constants.kPrimary,
                          HTclr: constants.TPrimary,
                          LTclr: constants.TPrimary,
                          HText: 'To Pay',
                          LText: 'Rs 750',
                          icon: const Icon(EvaIcons.diagonalArrowRightUp),
                          iconclr: constants.PayColor),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 190, left: 340),
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
              padding: const EdgeInsets.only(top: 250),
              child: Container(width: double.infinity,
                height: 30000,
                color: constants.kPrimary,
                child: ListView(

                  children: [
                    Center(child: Text('Transactions', style: GoogleFonts.luckiestGuy(color: constants.kSecondary, fontSize: 25),)),

                    List(title: 'Muaaz', date: '18 July', Amount: 'RS 900', clr: constants.kPrimary),
                    const SizedBox(height: 10,),


                  ],
                ),
              ),
            ),

///////////////////////////Bottom buttons///////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(top: 700),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReceiveScreen()));
                      },
                      child: PayButton(title: 'Receive', clr: constants.ReceiveColor, Tclr: constants.kPrimary, icon: const Icon(EvaIcons.diagonalArrowLeftDown), )),
                  InkWell(
                      onTap: (){

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const PayScreen()));
                      },

                      child

                          : PayButton(title: 'Pay', clr: constants.PayColor, Tclr: constants.kPrimary, icon: const Icon(EvaIcons.diagonalArrowRightUp),))

                ],
              ),
            )

          ],
        ),

///////////////////////////Drawer///////////////////////////////////////////
        drawer: Drawer(
          backgroundColor: constants.kSecondary,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              /////drawer head////////////////////
              Stack(
                children: [
                  //////////drawer bacground///////
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: constants.kPrimary,
                  ),
                  /////////pic//////////
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: constants.TSecondary,

                    ),
                  ),
                  //////////Title///////////
                  Padding(
                    padding: const EdgeInsets.only(left: 100,top: 30),
                    child: Text('MS Fabrics',style: GoogleFonts.cabin(fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                  ////////Email//////////////
                  Padding(
                    padding: const EdgeInsets.only(left: 100,top: 65),
                    child: Text('Msfabrics@gmail,com',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.bold,color: constants.TSecondary),),
                  ),
                  //////Edit button/////////
                  Padding(
                    padding: const EdgeInsets.only(left: 120,top: 100),
                    child: InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditBussiness()));
                    },
                      child: Container(
                        height: 19,
                        width: 100,
                        decoration:
                        BoxDecoration(color: constants.kSecondary,borderRadius: BorderRadius.circular(60)),
                        child: Center(child: Text('Edit',style: GoogleFonts.cabin(color: constants.kPrimary),)),
                      ),
                    ),
                  )

                ],
              ),
              const SizedBox(height: 40,),
              ////////Drawer Buttons/////////////
              InkWell(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const DailyReportScreen()));
              },child: ButtonDrawer(title: 'Daily Report', img: Image.asset('assets/monitor.png',height: 40,), clr: constants.kPrimary)),
              const SizedBox(height: 10,),
              InkWell(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AllReportScreen()));
              },child: ButtonDrawer(title: 'All Transactions Report', img: Image.asset('assets/analytics.png',height: 45,), clr: constants.kPrimary)),
              const SizedBox(height: 10,),
              InkWell(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const CashBook()));
              },child: ButtonDrawer(title: 'CashBook', img: Image.asset('assets/banknotes.png',height: 45,), clr: constants.kPrimary)),
              const SizedBox(height: 10,),
              InkWell(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Wasooli()));
              },child: ButtonDrawer(title: 'Wasooli', img: Image.asset('assets/slip.png',height: 40,), clr: constants.kPrimary)),
              const SizedBox(height: 10,),
              InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Settings()));
                  },
                  child: ButtonDrawer(title: 'Settings', img: Image.asset('assets/setting.png',height: 40,), clr: constants.kPrimary)),
              const SizedBox(height: 10,),
              InkWell(
                  onTap:(){

                  },
                  child: ButtonDrawer(title: 'Share', img: Image.asset('assets/share.png',height: 40,), clr: constants.kPrimary)),
              const SizedBox(height: 100,),
              Center(
                child: Text(
                  'Pocket Index',
                  style: GoogleFonts.cabin(
                      fontSize: 15,
                      color: constants.kPrimary,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  'By Apexius devs',
                  style: GoogleFonts.luckiestGuy(
                    fontSize: 10,
                    color: constants.TSecondary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
