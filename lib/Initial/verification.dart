// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_element

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class OTP_verification extends StatefulWidget {
  const OTP_verification({super.key});

  @override
  State<OTP_verification> createState() => _OTP_verificationState();
}

class _OTP_verificationState extends State<OTP_verification> {
  @override
  Widget build(BuildContext context) {
    final screen_height = MediaQuery.of(context).size.height;
    final screen_width = MediaQuery.of(context).size.width;
    const otp_aspect = 0.06;

    Widget OTPbox() {
      return Container(
        height: screen_height * otp_aspect,
        width: screen_height * otp_aspect,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(0.1)),
        child: TextField(
          maxLength: 1,
          keyboardType: TextInputType.number,
          cursorColor: Colors.white,
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            counterText: "",
          ),
        ),
      );
    }

    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: screen_height,
          width: screen_width,
          child: Image.asset(
            'assets/background.png',
            fit: BoxFit.cover,
          ),
        ),
        ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                    top: screen_height / 5, bottom: screen_height / 10),
                height: screen_height / 8,
                child: Image.asset(
                  "assets/Icon/logo.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text("OTP Verification",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  )),
            ),
            SizedBox(
              height: screen_height / 70,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Enter the OTP sent to your number",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(
              height: screen_height / 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(6, (index) => OTPbox()),
              ),
            ),
            SizedBox(
              height: screen_height / 70,
            ),
            Center(
              child: Text.rich(TextSpan(
                  text: "Didn't receive the code? ",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                  children: [
                    TextSpan(
                        text: "Resend",
                        style: TextStyle(
                            color: Color.fromARGB(255, 252, 231, 42),
                            fontSize: 13,
                            fontWeight: FontWeight.bold))
                  ])),
            ),
            SizedBox(
              height: screen_height * 0.15,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: screen_height / 15,
                width: screen_width / 1.5,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252, 231, 42),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                  child: Text(
                    "Send OTP",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screen_height * 0.05,
            ),
          ],
        )
      ],
    ));
  }
}