// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketindex/Constants.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 169,
              width: double.infinity,
              color: constants.kSecondary,
              child: Padding(
                padding: const EdgeInsets.only(left: 70,top: 30),
                child: Text('Create Your Password',style: GoogleFonts.luckiestGuy(color: constants.kPrimary,fontSize: 40),),
              ),
            ),
            const SizedBox(height: 20,),
            Text('Enter 4 Digit Pin',style: GoogleFonts.luckiestGuy(fontSize: 35),),
            const SizedBox(height: 20,),
/////////Blanks////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlankC(boxclr: constants.kPrimary, borderclr: constants.kSecondary),
                const SizedBox(width: 20,),

                BlankC(boxclr: constants.kPrimary, borderclr: constants.kSecondary),
                const SizedBox(width: 20,),

                BlankC(boxclr: constants.kPrimary, borderclr: constants.kSecondary),
                const SizedBox(width: 20,),

                BlankC(boxclr: constants.kPrimary, borderclr: constants.kSecondary),
              ],
            ),
            /////////Buttons/////////
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: (){},
                    child: PinCodeButton(clr: constants.kSecondary, text: '1', Tclr: constants.kPrimary)),
                const SizedBox(width: 30,),
                InkWell(
                    onTap: (){},
                    child: PinCodeButton(clr: constants.kSecondary, text: '2', Tclr: constants.kPrimary)),
                const SizedBox(width: 30,),
                InkWell(
                    onTap: (){},
                    child: PinCodeButton(clr: constants.kSecondary, text: '3', Tclr: constants.kPrimary)),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: (){},
                    child: PinCodeButton(clr: constants.kSecondary, text: '4', Tclr: constants.kPrimary)),
                const SizedBox(width: 30,),
                InkWell(
                    onTap: (){},
                    child: PinCodeButton(clr: constants.kSecondary, text: '5', Tclr: constants.kPrimary)),
                const SizedBox(width: 30,),
                InkWell(
                    onTap: (){},
                    child: PinCodeButton(clr: constants.kSecondary, text: '6', Tclr: constants.kPrimary)),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: (){},
                    child: PinCodeButton(clr: constants.kSecondary, text: '7', Tclr: constants.kPrimary)),
                const SizedBox(width: 30,),
                InkWell(
                    onTap: (){},
                    child: PinCodeButton(clr: constants.kSecondary, text: '8', Tclr: constants.kPrimary)),
                const SizedBox(width: 30,),
                InkWell(
                    onTap: (){},
                    child: PinCodeButton(clr: constants.kSecondary, text: '9', Tclr: constants.kPrimary)),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const SizedBox(width: 90,),
                InkWell(
                    onTap: (){},
                    child: PinCodeButton(clr: constants.kSecondary, text: '0', Tclr: constants.kPrimary)),
                const SizedBox(width: 40,),
                InkWell(
                    onTap: (){},
                    child: Image.asset('assets/eraser.png'))

              ],
            ),
          ],
        ),
      ),
    );
  }
}
