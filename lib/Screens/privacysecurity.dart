import 'package:flutter/material.dart';
import 'package:forgetnot/Screens/password.dart';
import 'package:forgetnot/components/upper_header.dart';
import 'package:forgetnot/Screens/setting.dart';

class PrivacySecurity extends StatefulWidget {
  const PrivacySecurity({super.key});

  @override
  State<PrivacySecurity> createState() => _PrivacySecurityState();
}

class _PrivacySecurityState extends State<PrivacySecurity> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
          child: Column(
            children: [
              upperHeader('Privacy & Security', context, false, page: settingPage()),
              SizedBox(height: he * 0.035),
              Text(
                'Login & Security',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:  Colors.grey.shade600),
              ),
              SizedBox(height: he * 0.01),
              CustomOption("Password", Icons.lock, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangePassword()),
                );
              }),
              CustomOption("My Account", Icons.account_circle, () {}),
              CustomOption("My Data", Icons.save_alt, () {}),
            ],
          ),
        ),
      )),
    );
  }
}

Widget CustomOption(String text, IconData icon, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.only(top: 13),
      child: Row(
        children: [
          Icon(icon,
          size: 30, 
          color: Colors.black87
          ),
          SizedBox(width: 15),
          Text(text, style: TextStyle(fontSize: 20, color: Colors.black87)
          ),
          Expanded(child: Container()),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.black87,
            size: 20,
          )
        ],
      ),
    ),
  );
}
          