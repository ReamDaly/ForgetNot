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
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.grey[600],
                labelText: "Current Password",
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                )
              ),
            ),
            SizedBox(height: he * 0.01),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                labelText: 'New Password',
                labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                )
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                labelText: 'Confirm Password',
                labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                )
              ),
            ),
            SizedBox(height: he * 0.06),
            Container(
              width: double.infinity,
              height: he * 0.07,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                child: Text('Change Password', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold
                ),
              ),
            ),
            ),
          ]
        )
        ),
      )
    );
  }
}