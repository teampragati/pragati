import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pragati/screens/List4.dart';

class List3Screen extends StatefulWidget {
  @override
  _List3ScreenState createState() => _List3ScreenState();
}

class _List3ScreenState extends State<List3Screen> {
  String produce = "";

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
                "Category Details",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Text("Select Category",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
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
                  groupValue: produce,
                  value: "fruits",
                  onChanged: (String? newValue) {
                    setState(() {
                      produce = newValue ?? "";
                    });
                  },
                  title: const Text('Fruits'),
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
                  groupValue: produce,
                  value: "vegetables",
                  onChanged: (String? newValue) {
                    setState(() {
                      produce = newValue ?? "";
                    });
                  },
                  title: const Text('Vegetables'),
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
                  groupValue: produce,
                  value: "dairy",
                  onChanged: (String? newValue) {
                    setState(() {
                      produce = newValue ?? "";
                    });
                  },
                  title: const Text('Dairy'),
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
                  groupValue: produce,
                  value: "others",
                  onChanged: (String? newValue) {
                    setState(() {
                      produce = newValue ?? "";
                    });
                  },
                  title: const Text('Others'),
                  activeColor: Color.fromARGB(255, 24, 205, 152),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.17),
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
                    if (produce.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => List4Screen(
                                produce)),
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'By Continuing, you agree to our\nTerms of Service, Privacy Policy, Contact Policy.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
