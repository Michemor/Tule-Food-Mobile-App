import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tule/configs/colors.dart';
import 'package:tule/views/screens/signin.dart';
import 'package:tule/views/widgets/customTextField.dart';

TextEditingController username = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController confirmPass = TextEditingController();

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 70, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create an account',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                ),
                Text('Let\'s help you set up your account, it won\'t take long',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),),
                SizedBox(height: 20),
                Text('Name'),
                CustomTextField(
                  hintText: 'Enter name',
                  inputController: username,
                ),
                 SizedBox(height: 20),
                Text('Email'),
                CustomTextField(
                  hintText: 'Enter email',
                  inputController: username,
                ),
                 SizedBox(height: 20),
                Text('Password'),
                CustomTextField(
                  hintText: 'Enter Password',
                  inputController: username,
                ),
                 SizedBox(height: 20),
                Text('Confirm Password'),
                CustomTextField(
                  hintText: 'Enter password',
                  inputController: username,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: textColor,
                      activeColor: secondary,
                      side: BorderSide(
                        color: secondary,
                        width: 2,
                      ),
                      value: isChecked, 
                      onChanged: (bool? value){
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                      Text('Accept terms & conditions',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: secondary,
                      ))
                  ],
                ),
                ElevatedButton(onPressed: (){
                  Get.to(() => SignIn());
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary1,
                  foregroundColor: textColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sign Up',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                    )),
                    Icon(Icons.arrow_forward)
                  ],
                )),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Divider(
                        color: light2Grey,
                        height: 3,
                        indent: 10,
                        endIndent: 20,
                      )),
                      Text('Or Sign Up with',
                      style: GoogleFonts.poppins(
                        color: light2Grey,
                        fontSize: 12,
                      ),),
                      const Expanded(
                      child: Divider(
                        color: light2Grey,
                        height: 3,
                        indent: 10,
                        endIndent: 20,
                      )),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){
                      // actions to enable user authentication using other options
                    }, icon: Image.asset('assets/icons/gogle_large_button.png') )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a member?',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                    ),),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: (){
                        Get.to(() => SignIn());
                      },
                      child: Text('Sign In',
                      style: GoogleFonts.poppins(
                        color: secondary,
                        fontWeight: FontWeight.w500
                      ),),
                    )
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}