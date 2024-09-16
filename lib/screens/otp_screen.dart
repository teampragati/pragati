import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pragati/screens/verification_success_screen.dart';

class OtpScreen extends StatelessWidget {
  final String mobile;

  OtpScreen(this.mobile);

  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: CircleAvatar(
                      child: Icon(Icons.arrow_back_outlined),
                      backgroundColor: Color.fromARGB(255, 24, 205, 152),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/logo 2.svg',
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.width * 0.2,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/dashicons_translation.svg',
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const Text(
                'Verify OTP',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              const Text('Please enter the OTP sent to phone no.'),
              Text("+91 "+mobile, style: const TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 24, 205, 152))),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              TextField(
                controller: otpController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 24, 205, 152),
                    ),
                  ),
                  labelText: 'Enter OTP',
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              const Text("Didn't Receive an OTP?"),
              TextButton(
                onPressed: () {
                  // Implement Resend OTP Logic
                },
                child: const Text('Resend OTP'),
                style: TextButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 24, 205, 152),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 24, 205, 152),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 24, 205, 152),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerificationSuccessScreen()),
                    );
                  },
                  child: const Text(
                    'Verify',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
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
