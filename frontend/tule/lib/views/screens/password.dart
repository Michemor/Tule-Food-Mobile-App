import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tule/configs/colors.dart';
import 'package:tule/views/screens/signin.dart';

TextEditingController newPass = TextEditingController();
TextEditingController confirmPass = TextEditingController();

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  String password = '';
  bool showPassword1 = false;
  bool  showPassword2 = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
             const Icon(Icons.keyboard_alt_outlined,
             size: 40,),
            Text('Set new password',
            style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),),
            Text('Must be at least 8 characters',
            style: TextStyle(
              fontSize: 15,
              color: light2Grey,
            )),
            SizedBox(height: 20),
            Text('New password',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(
              width: 280,
              height: 50,
              child: TextField(
                keyboardType: TextInputType.text,
                controller: newPass,
                obscureText: !showPassword1,
                onChanged: (value){
                  setState(() {
                    password = value;
                  }); 
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      showPassword1 = !showPassword1;
                    });
                  }, icon: Icon(
                    showPassword1 ? Icons.visibility : Icons.visibility_off
                  )),
                )

              ),
            ),
            SizedBox(height: 20),
            const Text('Confirm Password',
            style: TextStyle(
              fontWeight: FontWeight.w500
            ),),
           SizedBox(
              width: 280,
              height: 50,
              child: TextField(
                keyboardType: TextInputType.text,
                controller: confirmPass,
                obscureText: !showPassword2,
                onChanged: (value){
                  setState(() {
                    password = value;
                  }); 
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      showPassword2 = !showPassword2;
                    });
                  }, icon: Icon(
                    showPassword2 ? Icons.visibility : Icons.visibility_off
                  )),
                )
              ),
            ),
            SizedBox(height: 20),
          ElevatedButton(onPressed: (){
            Get.to(() => const SignIn());
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: primary1,
            foregroundColor: textColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            )
          ),
          child: Text('Reset Password',
          style: GoogleFonts.poppins(),))
          ],
        ),
      ),
    );
  }
}