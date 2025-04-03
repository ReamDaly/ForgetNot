import 'package:flutter/material.dart';
import 'package:forgetnot/widgets/constant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyThemeColor.backgroundColor,
      body: SafeArea(child: Container(
        padding: EdgeInsets.only(left: he * 0.03, top: he * 0.03, bottom: he * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text('First Name', style: TextStyle(fontSize: 16, color: Colors.grey.shade600, fontWeight: FontWeight.bold)),
            SizedBox(height: he * 0.01),
            SizedBox(height: he * 0.045,
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 12),
                hintText: 'Daly',
                hintStyle: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: MyThemeColor.textColor)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: MyThemeColor.textColor)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: MyThemeColor.textColor)),
                )
              )
            ),
            SizedBox(height: he * 0.02),
            Text('Last Name', style: TextStyle(fontSize: 16, color: Colors.grey.shade600, fontWeight: FontWeight.bold)),
            SizedBox(height: he * 0.01),
            SizedBox(height: he * 0.045,
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 12),
                hintText: 'Ream',
                hintStyle: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: MyThemeColor.textColor)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: MyThemeColor.textColor)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: MyThemeColor.textColor)),
                )
              )
            ),
            SizedBox(height: he * 0.02),
            Text('Username', style: TextStyle(fontSize: 16, color: Colors.grey.shade600, fontWeight: FontWeight.bold)),
            Row(
              children: [
                SizedBox(
                  height: he * 0.045,
                  width: he * 0.045,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 12),
                      hintText: 'Ream',
                      hintStyle: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: MyThemeColor.textColor)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: MyThemeColor.textColor)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: MyThemeColor.textColor)),
                      )
                    )
                  ),
              ],
            )
          ]
        ),
      )),
    );
  }
}