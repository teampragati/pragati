import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pragati/screens/setup3.dart';

class Setup2Screen extends StatefulWidget {
  final String intent;
  Setup2Screen(this.intent);
  @override
  _Setup2ScreenState createState() => _Setup2ScreenState();
}

class _Setup2ScreenState extends State<Setup2Screen> {
  String role = ""; // Initially, no role is selected

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
                    onTap: () {
                      // Translation logic
                    },
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
                "Let's Create your Profile",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Text("What's your role?",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              // Farmer Radio Button
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color.fromARGB(255, 24, 205, 152),
                    width: 1,
                  ),
                ),
                child: RadioListTile<String>(
                  groupValue: role,
                  value: "farmer",
                  onChanged: (String? newValue) {
                    setState(() {
                      role = newValue ?? "";
                    });
                  },
                  title: const Text('Farmer'),
                  activeColor: Color.fromARGB(255, 24, 205, 152),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              // Retailer Radio Button
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color.fromARGB(255, 24, 205, 152),
                    width: 1,
                  ),
                ),
                child: RadioListTile<String>(
                  groupValue: role,
                  value: "retailer",
                  onChanged: (String? newValue) {
                    setState(() {
                      role = newValue ?? "";
                    });
                  },
                  title: const Text('Retailer'),
                  activeColor: Color.fromARGB(255, 24, 205, 152),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              // Consumer Radio Button
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color.fromARGB(255, 24, 205, 152),
                    width: 1,
                  ),
                ),
                child: RadioListTile<String>(
                  groupValue: role,
                  value: "consumer",
                  onChanged: (String? newValue) {
                    setState(() {
                      role = newValue ?? "";
                    });
                  },
                  title: const Text('Consumer'),
                  activeColor: Color.fromARGB(255, 24, 205, 152),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              // Logistics Provider Radio Button
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color.fromARGB(255, 24, 205, 152),
                    width: 1,
                  ),
                ),
                child: RadioListTile<String>(
                  groupValue: role,
                  value: "logistics",
                  onChanged: (String? newValue) {
                    setState(() {
                      role = newValue ?? "";
                    });
                  },
                  title: const Text('Logistics Provider'),
                  activeColor: Color.fromARGB(255, 24, 205, 152),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
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
                    if (role.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Setup3Screen(widget.intent, role)),
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
