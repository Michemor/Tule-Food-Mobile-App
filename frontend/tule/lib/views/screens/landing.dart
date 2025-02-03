import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tule/configs/colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          Image.asset(
            'assets/images/veggie2.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Container(
              alignment: Alignment.topCenter,
             margin: EdgeInsets.fromLTRB(20, 50, 20, 30),
              width: 400,
              height: 700,
              color: neutralBlack.withOpacity(0.5),
              child: Column(     
                children: [
                SizedBox(height: 20),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/images/chef_logo.png'),
                ),
                SizedBox(height: 20,),
                Text('100+ Premium recipes',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ),
                ),
                SizedBox(height: 80),
                Text('Get',
                style: GoogleFonts.poppins(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 50,
                ),),
                Text('Cooking',
                style: GoogleFonts.poppins(
                  color: textColor,
                  fontSize: 50,
                  fontWeight: FontWeight.w600
                ),),
                Text(
                  'Simple way to find Tasty Recipe',
                  style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w300
                  ),
                ),
                SizedBox(height: 50,),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(onPressed: () {
                    Get.toNamed('/signin');
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Start Cooking',
                        style: GoogleFonts.poppins(
                          color: textColor,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.arrow_forward,
                      color: textColor,
                      size: 20,)
                    ],
                  )),
                )
                ],
              ),
            ),
          )
        ],
      )
      );
  }
}