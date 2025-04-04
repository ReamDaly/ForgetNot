import 'package:flutter/material.dart';
import 'package:forgetnot/widgets/constant.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: MyThemeColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              left: he * 0.03, 
              top: he * 0.03, 
              bottom: he * 0.05, 
              right: he * 0.03
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),

                // Username Field
                Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 16, 
                    color: Colors.grey.shade600, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: he * 0.01),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                          hintText: 'Daly34',
                          hintStyle: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: MyThemeColor.textColor)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: MyThemeColor.textColor)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: MyThemeColor.textColor)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {}, 
                      child: Text('Change Username', style: TextStyle(color: Colors.blueAccent))
                    ),
                    Icon(Icons.edit, color: Colors.blueAccent, size: 18),
                  ],
                ),

                SizedBox(height: he * 0.02),

                // Phone Number Field
                Text(
                  'Phone Number',
                  style: TextStyle(
                    fontSize: 16, 
                    color: Colors.grey.shade600, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: he * 0.01),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                          hintText: '+85515999059',
                          hintStyle: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: MyThemeColor.textColor)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: MyThemeColor.textColor)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: MyThemeColor.textColor)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {}, 
                      child: Text('Change Phone', style: TextStyle(color: Colors.blueAccent))
                    ),
                    Icon(Icons.edit, color: Colors.blueAccent, size: 18),
                  ],
                ),

                SizedBox(height: he * 0.02),

                // Email Address Field
                Text(
                  'Email Address',
                  style: TextStyle(
                    fontSize: 16, 
                    color: Colors.grey.shade600, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: he * 0.01),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                          hintText: 'daly123@gmail.com',
                          hintStyle: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: MyThemeColor.textColor)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: MyThemeColor.textColor)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: MyThemeColor.textColor)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {}, 
                      child: Text('Change email', style: TextStyle(color: Colors.blueAccent))
                    ),
                    Icon(Icons.edit, color: Colors.blueAccent, size: 18),
                  ],
                ),

                SizedBox(height: he * 0.04),

                // Other unchanged UI components (Example)
                Text(
                  'Other Settings',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.security),
                  title: Text("Privacy & Security"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text("Notifications"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.red),
                  title: Text("Logout", style: TextStyle(color: Colors.red)),
                  onTap: () {
                    // Logout function here
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

