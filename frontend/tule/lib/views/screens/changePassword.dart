import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tule/views/widgets/customTextField.dart';
import 'package:tule/views/screens/verificationCode.dart';

import '../../configs/colors.dart';

class Changepassword extends StatelessWidget {
  const Changepassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back',
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.fingerprint,
            size: 50,),
            Text('Reset password',
            style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),),
            Text('Enter your email for the reset instructions',
            style: GoogleFonts.poppins(),
            overflow: TextOverflow.clip,
            ),
            SizedBox(height: 20),
            Text('Email address',
            style: GoogleFonts.poppins(
              fontSize: 14,
            ),),
            CustomTextField(hintText: 'johndoe@gmail.com'),
            SizedBox(height: 15),
            ElevatedButton(onPressed: () {
             Get.to(() => Verificationcode());
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: primary1,
              foregroundColor: textColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              )
            ),
            child: Text('Confirm email',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),),
            ),
          ],
        ),
      ),
    );
  }
}