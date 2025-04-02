import 'package:flutter/material.dart';
import 'package:forgetnot/Screens/privacysecurity.dart';
import 'package:forgetnot/components/upper_header.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            upperHeader("Settings", context, false, page: const PrivacySecurity()),
            SizedBox(height: he * 0.042),
            Text("Your password must be at least 6 characters",
            style: TextStyle(fontSize: 16, color: Colors.grey[600], fontWeight: FontWeight.bold),
            ),
            SizedBox(height: he * 0.01),
            TextFormField
          ]
        )
        ),
      )
    );
  }
}