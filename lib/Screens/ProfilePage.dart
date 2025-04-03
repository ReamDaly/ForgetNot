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
              keyboardType: TextInputType.name,
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
              keyboardType: TextInputType.name,
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
            SizedBox(height: he * 0.01),
            Row(
              children: [
                SizedBox(
                  width: he * 0.045,
                  height: he * 0.2,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 10, top: 12),
                      hintText: 'Daly34',
                      hintStyle: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: MyThemeColor.textColor)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: MyThemeColor.textColor)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: MyThemeColor.textColor)),
                    )),
                ),
                Expanded(
                  child: Container(
                    // alignment: Alignment.centerRight,
                    // child: Text(
                    //   'Edit',
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     fontWeight: FontWeight.bold,
                    //     color: MyThemeColor.textColor,
                    //   ),
                    // ),
                  )
                ),
                TextButton(onPressed: () {}, child: Text('Change Username', style: TextStyle(color: Colors.blueAccent))),
                Icon(Icons.edit, color: Colors.blueAccent, size: 18,)
              ],),
              SizedBox(height: he * 0.02),
              Text('Phone Number', style: TextStyle(fontSize: 16, color: Colors.grey.shade600, fontWeight: FontWeight.bold)),
              SizedBox(height: he * 0.01),
              Row(
                children: [
                  SizedBox(
                    width: he * 0.045,
                    height: he * 0.20,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 10, top: 12),
                        hintText: '+85515999059',
                        hintStyle: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: MyThemeColor.textColor)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: MyThemeColor.textColor)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: MyThemeColor.textColor)),
                      )),
                  ),
                  Expanded(
                    child: Container(
                      // alignment: Alignment.centerRight,
                      // child: Text(
                      //   'Edit',
                      //   style: TextStyle(
                      //     fontSize: 16,
                      //     fontWeight: FontWeight.bold,
                      //     color: MyThemeColor.textColor,
                      //   ),
                      // ),
                    )
                  ),
                  TextButton(onPressed: () {}, child: Text('Change Phone', style: TextStyle(color: Colors.blueAccent))),
                  Icon(Icons.edit, color: Colors.blueAccent, size: 18,)
                ],),
                SizedBox(height: he * 0.02),
            Text('Email Address', style: TextStyle(fontSize: 16, color: Colors.grey.shade600, fontWeight: FontWeight.bold)),
            SizedBox(height: he * 0.01),
            Row(
              children: [
                SizedBox(
                  width: he * 0.045,
                  height: he * 0.24,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 10, top: 12),
                      hintText: 'daly123@gmail.com',
                      hintStyle: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: MyThemeColor.textColor)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: MyThemeColor.textColor)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: MyThemeColor.textColor)),
                    )),
                ),
                Expanded(
                  child: Container(
                    // alignment: Alignment.centerRight,
                    // child: Text(
                    //   'Edit',
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     fontWeight: FontWeight.bold,
                    //     color: MyThemeColor.textColor,
                    //   ),
                    // ),
                  )
                ),
                TextButton(onPressed: () {}, child: Text('Change email', style: TextStyle(color: Colors.blueAccent))),
                Icon(Icons.edit, color: Colors.blueAccent, size: 18,)
              ],),
              SizedBox(height: he * 0.02),
              Divider(
                color: Colors.grey[200],
                thickness: 1,
              ),
              Row(
                children: [
                  Text(
                    'Add Account',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(child: Container()),
                  Icon(Icons.arrow_forward_ios, color: Colors.blueAccent, size: 21)
                ],
              ),
              SizedBox(height: he * 0.01),
              Row(
                children: [
                  Text(
                    'Switch Account',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  Expanded(child: Container()),
                  Icon(Icons.arrow_forward_ios, color: Colors.blueAccent, size: 21)
                ],
              ),
              SizedBox(height: he * 0.021),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
          ]
        ),
      )),
    );
  }
}