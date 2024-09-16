import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pragati/screens/setup2.dart';

class Setup1Screen extends StatefulWidget {
  @override
  _Setup1ScreenState createState() => _Setup1ScreenState();
}

class _Setup1ScreenState extends State<Setup1Screen> {
  String intent = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: CircleAvatar(
                      radius: 20,
                      child:
                          Icon(Icons.arrow_back_outlined, color: Colors.black),
                      backgroundColor: Color.fromARGB(255, 24, 205, 152),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/logo 2.svg',
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.width * 0.15,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Implement translation logic here
                    },
                    child: SvgPicture.asset(
                      'assets/dashicons_translation.svg',
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.width * 0.08,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              const Text(
                "Let's Create your Profile",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2F3843), // Color matching your UI
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Text(
                "How will you use the app?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2F3843), // Matching text color
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color.fromARGB(
                        255, 24, 205, 152), // Border color matching UI
                    width: 1,
                  ),
                ),
                child: RadioListTile<String>(
                  groupValue: intent,
                  value: "seller",
                  onChanged: (String? value) {
                    setState(() {
                      intent = value ?? "";
                    });
                  },
                  title: const Text(
                    'To sell my produce',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black
                    ),
                  ),
                  activeColor: Color.fromARGB(255, 24, 205, 152),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color.fromARGB(
                        255, 24, 205, 152), // Border color matching UI
                    width: 1,
                  ),
                ),
                child: RadioListTile<String>(
                  groupValue: intent,
                  value: "buyer",
                  onChanged: (String? value) {
                    setState(() {
                      intent = value ?? "";
                    });
                  },
                  title: const Text(
                    'To buy produce',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  activeColor: Color.fromARGB(255, 24, 205, 152),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 24, 205, 152),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 24, 205, 152),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {
                    if (intent.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Setup2Screen(intent)),
                      );
                    }
                  },
                  child: const Text(
                    'Next',
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
