import 'package:flutter/material.dart';
import 'package:forgetnot/Screens/manupage.dart';
import 'package:forgetnot/components/upper_header.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          upperHeader("Contact Us", context, false, page: const menuPage()),
          SizedBox(height: he * 0.042),
          Text(
            "Contact Us",
            style: TextStyle(fontSize: 20, color: Colors.grey.shade600, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: he * 0.01),
          Text(
            "Email",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade600
            ),
          ),
          SizedBox(height: he * 0.01,)


        ],
      ),
      ),
    ));
  }
}
