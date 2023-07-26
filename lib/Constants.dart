// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/HomeScreen/CustomerScreens/CustomerScreen.dart';
import 'Screens/HomeScreen/CustomerScreens/PaymentDetailsScreen.dart';
import 'Screens/HomeScreen/DrawerScreens/CashBook Screens/CashBookPaymentDetails.dart';


/////////////////////////////// ALl Colours///////////////////////////////
class constants {
  static Color kSecondary = const Color(0xff2E0F2F);
  static Color kPrimary=const Color(0xffFFFFFF);
  static Color ReceiveColor=const Color(0xff8AC77B);
  static Color PayColor=const Color(0xffEB7878);
  static Color TSecondary=const Color(0xffD9D9D9);
  static Color TPrimary=const Color(0xff000000);
}

//--------------------------------------------------------------/End//




/////////////////////// Pay Button/Receive Button ////////////////////////
class PayButton extends StatefulWidget {
  final String title;
  final Color Tclr;
  final Color clr;
  final Icon icon;
  const PayButton({Key? key, required this.title, required this.clr, required this.Tclr, required this.icon,  }) : super(key: key);

  @override
  State<PayButton> createState() => _PayButtonState();
}

class _PayButtonState extends State<PayButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 141,
        height: 40,
        decoration: BoxDecoration(
            color: widget.clr,
            borderRadius: BorderRadius.circular(60)
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.icon,


            Text(widget.title, style: GoogleFonts.cabin(color: widget.Tclr, fontSize: 20),


            )],
        ));
  }
}

//--------------------------------------------------------------/End//



/////////////////////// Payment Display Container ///////////////////////
class PaymentDisplay extends StatefulWidget {
  final Color clr;
  final Color HTclr;
  final Color LTclr;
  final Icon icon;
  final String HText;
  final String LText;
  final Color iconclr;
  const PaymentDisplay({Key? key, required this.clr,  required this.HTclr, required this.LTclr, required this.HText, required this.LText, required this.icon, required this.iconclr,  }) : super(key: key);

  @override
  State<PaymentDisplay> createState() => _PaymentDisplayState();
}

class _PaymentDisplayState extends State<PaymentDisplay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 85,
      decoration: BoxDecoration(
        color: widget.clr,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          const SizedBox(height: 15,),
          Text(widget.HText, style: TextStyle(fontSize: 18,color :widget.HTclr,fontWeight: FontWeight.w600, fontFamily:'Cabin'),),
          const SizedBox(height: 5,),
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,bottom: 10),
                    child: Container(

                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: widget.iconclr,
                          shape: BoxShape.circle
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: widget.icon,
                  )
                ],
              ),               ///Icon Placement///
              const SizedBox(width: 7,),
              Text(widget.LText, style: GoogleFonts.cabin(fontSize: 20,color: widget.LTclr.withOpacity(0.35),fontWeight: FontWeight.bold,)),
            ],
          ),

        ],
      ),
    );
  }
}
//--------------------------------------------------------------/End//




///////////////////////Submit Button///////////////////////
class SubmitButton extends StatefulWidget {
  final Color boxclr;
  final Color Tclr;
  final String text;
  const SubmitButton({Key? key, required this.boxclr, required this.text, required this.Tclr, }) : super(key: key);

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 44,
        width: 357,
        decoration: BoxDecoration(
            color: widget.boxclr,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Center(child: Text(widget.text,style: GoogleFonts.cabin(color: widget.Tclr, fontSize: 20),)),
      ),
    );
  }
}


///////////////////////Edit/Delete/Reupload Button///////////////////////
class DelButton extends StatefulWidget {
  final Color boxclr;
  final Color Tclr;
  final String text;

  const DelButton({Key? key, required this.boxclr, required this.Tclr, required this.text}) : super(key: key);

  @override
  State<DelButton> createState() => _DelButtonState();
}

class _DelButtonState extends State<DelButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 150,
      decoration: BoxDecoration(
          color: widget.boxclr,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Center(child: Text(widget.text,style: GoogleFonts.cabin(color: widget.Tclr,fontSize: 20),)),
    );
  }
}

//--------------------------------------------------------------/End//




///////////////////////Old Record Button///////////////////////
class OldRecordButton extends StatefulWidget {
  final Color boxclr;
  final Color Tclr;
  final String text;
  const OldRecordButton({Key? key, required this.boxclr, required this.Tclr, required this.text, }) : super(key: key);

  @override
  State<OldRecordButton> createState() => _OldRecordButtonState();
}

class _OldRecordButtonState extends State<OldRecordButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 340,
      decoration: BoxDecoration(
          color: widget.boxclr,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Center(child: Text(widget.text,style: GoogleFonts.cabin(color: widget.Tclr,fontSize: 20),)),
    );
  }
}


//--------------------------------------------------------------/End//




///////////////////////Wasooli Payment Dislay Container///////////////////////
class WasooliDisplay extends StatefulWidget {
  final Color clr;
  final Color HTclr;
  final Color LTclr;
  final Icon icon;
  final String HText;
  final String LText;
  final Color iconclr;
  const WasooliDisplay({Key? key, required this.clr, required this.HTclr, required this.LTclr, required this.icon, required this.HText, required this.LText, required this.iconclr}) : super(key: key);

  @override
  State<WasooliDisplay> createState() => _WasooliDisplayState();
}

class _WasooliDisplayState extends State<WasooliDisplay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 131,
      decoration: BoxDecoration(
        color: widget.clr,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          const SizedBox(height: 15,),
          Text(widget.HText, style: TextStyle(fontSize: 35,color :widget.HTclr,fontWeight: FontWeight.w600, fontFamily:'Cabin'),),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 50,),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,bottom: 10),
                    child: Container(

                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: widget.iconclr,
                          shape: BoxShape.circle
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 6),
                    child: widget.icon,
                  )
                ],
              ),               ///Icon Placement///
              const SizedBox(width: 50,),
              Text(widget.LText, style: GoogleFonts.cabin(fontSize: 25,color: widget.LTclr.withOpacity(0.35),fontWeight: FontWeight.bold,)),
            ],
          ),

        ],
      ),
    );
  }
}
//--------------------------------------------------------------/End//




///////////////////////Password/Backup button///////////////////////
class BackupButton extends StatefulWidget {
  final Color boxclr;
  final Color Tclr;
  final String text;
  const BackupButton({Key? key, required this.boxclr, required this.Tclr, required this.text}) : super(key: key);

  @override
  State<BackupButton> createState() => _BackupButtonState();
}

class _BackupButtonState extends State<BackupButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      width: 330,
      decoration: BoxDecoration(
          color: widget.boxclr,
          borderRadius: BorderRadius.circular(60)
      ),
      child: Center(child: Text(widget.text,style: GoogleFonts.cabin(color: widget.Tclr,fontSize: 20),)),
    );
  }
}
//--------------------------------------------------------------/End//


///////////////////////LogOut button///////////////////////
class LogoutButton extends StatefulWidget {
  final Color boxclr;
  final Color Tclr;
  final String text;
  const LogoutButton({Key? key, required this.boxclr, required this.Tclr, required this.text, }) : super(key: key);

  @override
  State<LogoutButton> createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      width: 240,
      decoration: BoxDecoration(
          color: widget.boxclr,
          borderRadius: BorderRadius.circular(60)
      ),
      child: Center(child: Text(widget.text,style: GoogleFonts.cabin(color: widget.Tclr,fontSize: 20),)),
    );
  }
}

//--------------------------------------------------------------/End//

///////////////////////Password Blanks///////////////////////
class BlankC extends StatefulWidget {
  final Color boxclr;
  final Color borderclr;
  const BlankC({Key? key, required this.boxclr, required this.borderclr, }) : super(key: key);

  @override
  State<BlankC> createState() => _BlankCState();
}

class _BlankCState extends State<BlankC> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 38,
      decoration: BoxDecoration(
          color: widget.boxclr,
          border: Border.all(
              color: widget.borderclr,
              width: 2
          ),
          borderRadius: BorderRadius.circular(7)
      ),
    );
  }
}
//--------------------------------------------------------------/End//


///////////////////////PinCode Buttons///////////////////////
class PinCodeButton extends StatefulWidget {
  final Color clr;
  final String text;
  final Color Tclr;
  const PinCodeButton({Key? key, required this.clr, required this.text, required this.Tclr, }) : super(key: key);

  @override
  State<PinCodeButton> createState() => _PinCodeButtonState();
}

class _PinCodeButtonState extends State<PinCodeButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration:
      BoxDecoration(
        color: widget.clr,
        shape: BoxShape.circle,

      ),

      child: Center(child: Text(widget.text,style:  GoogleFonts.luckiestGuy(color: widget.Tclr,fontSize: 35,),)) ,
    );
  }
}
//--------------------------------------------------------------/End//

//////////////ListView COntainersss////////////////List item/////////
class List extends StatefulWidget {
  final String title;
  final String date;
  final String Amount;
  final Color clr;
  const List({Key? key, required this.title, required this.date, required this.Amount, required this.clr}) : super(key: key);

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const CustomerScreen()));
      },
      child: Container(
        height: 61,
        width: 430,
        decoration: BoxDecoration(
            color: widget.clr,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(60)
        ),
        child: Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Text(widget.title,style: GoogleFonts.cabin(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text(widget.date,style: GoogleFonts.cabin(fontSize: 12,fontWeight: FontWeight.bold),),

                ],
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(left: 230,top: 15),
                child: Text(widget.Amount,style: GoogleFonts.cabin(fontSize: 20,fontWeight: FontWeight.bold,color: constants.PayColor),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 330,top: 8),
                child: InkWell(onTap:(){},
                    child: const Icon(EvaIcons.share,size: 40,)),
              ),
            ]
        ),
      ),
    );
  }
}

//--------------------------------------------------------------/End//


//////////////Drawer buttons////////////
class ButtonDrawer extends StatefulWidget {
  final String title;
  final Image img;
  final Color clr;
  const ButtonDrawer({Key? key, required this.title,  required this.clr, required this.img}) : super(key: key);

  @override
  State<ButtonDrawer> createState() => _ButtonDrawerState();
}

class _ButtonDrawerState extends State<ButtonDrawer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 55,
            width: 300,
            decoration: (
                BoxDecoration(color: widget.clr,borderRadius: BorderRadius.circular(20))
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 60,top: 10),
              child: Text(widget.title, style: GoogleFonts.cabin(fontWeight: FontWeight.bold,fontSize: 25),),
            ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 15),
            child: widget.img,
          )

        ]
    );
  }
}

//--------------------------------------------------------------/End//




//////////////ListView COntainersss////////////////Customer Screen items/////////
class UserList extends StatefulWidget {
  final String title;
  final String date;
  final String Amount;
  final String AmountR;
  final Color clr;
  final Icon icon;
  final Color iconclr;
  const UserList({Key? key, required this.title, required this.date, required this.Amount, required this.clr, required this.AmountR, required this.icon, required this.iconclr}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentDetails()));
      },
      child: Container(
        height: 61,
        width: 430,
        decoration: BoxDecoration(
            color: widget.clr,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(60)
        ),
        child: Stack(
            children:[ Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 5),
                      child: Stack(children: [
                        Container(

                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: widget.iconclr,
                              shape: BoxShape.circle
                          ),
                        ),
                        widget.icon,
                      ],),
                    ),
                    const SizedBox(width: 20,),
                    Text(widget.title,style: GoogleFonts.cabin(fontSize: 25,fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 230),
                  child: Text(widget.date,style: GoogleFonts.cabin(fontSize: 12,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 190,top: 15),
                    child: Text(widget.Amount,style: GoogleFonts.cabin(fontSize: 20,fontWeight: FontWeight.bold,color: constants.PayColor),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50,top: 15),
                    child: Text(widget.AmountR,style: GoogleFonts.cabin(fontSize: 20,fontWeight: FontWeight.bold,color: constants.ReceiveColor),),
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}



//--------------------------------------------------------------/End//


//////////////Date Container////////////
class DateButton extends StatefulWidget {
  final String date;

  const DateButton({Key? key, required this.date}) : super(key: key);

  @override
  State<DateButton> createState() => _DateButtonState();
}

class _DateButtonState extends State<DateButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 200,),
      child: InkWell(
        onTap:(){},
        child: Container(height: 46,
          width: 180,
          decoration: BoxDecoration(
              border: Border.all(color: constants.TPrimary),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text(widget.date,style: GoogleFonts.cabin(fontSize: 17),)),
        ),
      ),
    );
  }
}


//////////////ListView COntainersss////////////////Report Screen items/////////
class RList extends StatefulWidget {
  final String title;
  final String date;
  final String Amount;
  final String AmountR;
  final Color clr;
  final Icon icon;
  final Color iconclr;
  const RList({Key? key, required this.title, required this.date, required this.Amount, required this.clr, required this.AmountR, required this.icon, required this.iconclr}) : super(key: key);

  @override
  State<RList> createState() => _RListState();
}

class _RListState extends State<RList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61,
      width: 430,
      decoration: BoxDecoration(
          color: widget.clr,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(60)
      ),
      child: Stack(
          children:[ Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 5),
                    child: Stack(children: [
                      Container(

                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: widget.iconclr,
                            shape: BoxShape.circle
                        ),
                      ),
                      widget.icon,
                    ],),
                  ),
                  const SizedBox(width: 20,),
                  Text(widget.title,style: GoogleFonts.cabin(fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text(widget.date,style: GoogleFonts.cabin(fontSize: 12,fontWeight: FontWeight.bold),),
              ),

            ],
          ),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 190,top: 15),
                  child: Text(widget.Amount,style: GoogleFonts.cabin(fontSize: 20,fontWeight: FontWeight.bold,color: constants.PayColor),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50,top: 15),
                  child: Text(widget.AmountR,style: GoogleFonts.cabin(fontSize: 20,fontWeight: FontWeight.bold,color: constants.ReceiveColor),),
                ),
              ],
            ),
          ]
      ),
    );
  }
}



//--------------------------------------------------------------/End//


//////////////ListView COntainersss////////////////Cshbook Screen items/////////
class CList extends StatefulWidget {
  final String title;
  final String date;
  final String Amount;
  final String AmountR;
  final Color clr;
  final Icon icon;
  final Color iconclr;
  const CList({Key? key, required this.title, required this.date, required this.Amount, required this.clr, required this.AmountR, required this.icon, required this.iconclr}) : super(key: key);

  @override
  State<CList> createState() => _CListState();
}

class _CListState extends State<CList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const CPaymentDetails()));
      },
      child: Container(
        height: 61,
        width: 430,
        decoration: BoxDecoration(
            color: widget.clr,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(60)
        ),
        child: Stack(
            children:[ Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 5),
                      child: Stack(children: [
                        Container(

                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: widget.iconclr,
                              shape: BoxShape.circle
                          ),
                        ),
                        widget.icon,
                      ],),
                    ),
                    const SizedBox(width: 20,),
                    Text(widget.title,style: GoogleFonts.cabin(fontSize: 25,fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 230),
                  child: Text(widget.date,style: GoogleFonts.cabin(fontSize: 12,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 190,top: 15),
                    child: Text(widget.Amount,style: GoogleFonts.cabin(fontSize: 20,fontWeight: FontWeight.bold,color: constants.PayColor),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50,top: 15),
                    child: Text(widget.AmountR,style: GoogleFonts.cabin(fontSize: 20,fontWeight: FontWeight.bold,color: constants.ReceiveColor),),
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}



//--------------------------------------------------------------/End//