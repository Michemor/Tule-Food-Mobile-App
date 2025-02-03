import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tule/configs/colors.dart';
import 'package:tule/views/screens/password.dart';

class Verificationcode extends StatelessWidget {
  const Verificationcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back'),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            const Icon(Icons.email_outlined,
            size: 40,
            ),
            Text('Verification code',
            style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.w700
            )),
            Text('Check your email for the verification code'),
            SizedBox(height: 20),
            Row(         
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                  width: 55,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder()
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                     
                    ],
                  )),
                  SizedBox(width: 5),
                  SizedBox(
                  height: 60,
                  width: 55,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder()
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                     
                    ],
                  )),
                  SizedBox(width: 5),
                  SizedBox(
                  height: 60,
                  width: 55,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder()
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                     
                    ],
                  )),
                  SizedBox(width: 5),
                  SizedBox(
                  height: 60,
                  width: 55,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder()
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                     
                    ],
                  )),
                  const SizedBox(width: 5),
                  
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              // code to send code to user
              Get.to(()=>NewPassword());
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: primary1,
              foregroundColor: textColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
              )
            ),
            child: Text(
              'Continue',
              style: GoogleFonts.poppins(
                
              ),),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Didn\'t receive the code?',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                )),
                GestureDetector(
                  child: Text('Click here',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: primary2,
                    decoration: TextDecoration.underline
                  ),))
              ],
            )
          ],
        ),
      ),
    );
  }
}