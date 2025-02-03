import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tule/configs/colors.dart';
import 'package:tule/views/screens/signup.dart';
import 'package:tule/views/screens/changePassword.dart';
import 'package:tule/views/widgets/customTextField.dart';

TextEditingController userEmail = TextEditingController();
TextEditingController userPassword = TextEditingController();

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 100, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello,',
              style: GoogleFonts.poppins(
                color: neutralBlack,
                fontSize: 30,
                fontWeight: FontWeight.w600
              ),),
              Text('Welcome Back!',
              style: GoogleFonts.poppins(
                color: neutralBlack,
                fontSize: 20,
                fontWeight: FontWeight.w300
              ),),
              SizedBox(height: 60),
              Text('Email',
              style: GoogleFonts.poppins(
                color: neutralBlack,
                fontWeight: FontWeight.w500
              ),),
              CustomTextField(inputController: userEmail, hintText: 'Enter Email'),
              SizedBox(height: 40,),
               Text('Password',
              style: GoogleFonts.poppins(
                color: neutralBlack,
                fontWeight: FontWeight.w500
              ),),
              CustomTextField(inputController: userPassword, hintText: 'Enter Password'),
              SizedBox(height: 10),
            TextButton(onPressed: () {
              Get.to(() => Changepassword());
            }, child: Text('Forgot password',
            style: GoogleFonts.poppins(
              color: secondary,
              fontSize: 13,

            ),)),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(onPressed: (){
                
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary1,
                  foregroundColor: textColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )
                ),
                child: const SizedBox(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sign In'),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward,
                      size: 17,)
                    ],
                  ),
                )),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Expanded(
                  child: Divider(
                    height: 5,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                    color: lightGrey,
                  ),
                ),
                  Text('Or Sign In With',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: light2Grey,
      
                  ),),
                    Expanded(
                  child: Divider(
                    height: 5,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                    color: lightGrey,
                  ),
                ),
                ],
              ),
              SizedBox(height: 20),
           SizedBox(
            height: 40,
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // actions for user to sign up with google


                  },
                  child: Image.asset('assets/icons/google_light.png',
                  fit: BoxFit.contain,
                  height: 40,
                  width: 40,)),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: (){
                    // actions for user to sign up with gmail
                  },
                  child: Image.asset('assets/icons/gmail.png')
                  )
              ],
            )
           ),
              // dont have an account sign up
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: neutralBlack,
                  ),),
                  TextButton(
                    onPressed: () => Get.toNamed('/signup'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: secondary,

                    ),
                  child: Text('Sign Up'))
                ],
              )
            ],
          ),
        ),
      ),
    ),
    );
  }
}