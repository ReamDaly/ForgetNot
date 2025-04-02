import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forgetnot/Screens/HomePage.dart';
import 'package:forgetnot/Screens/setting.dart';

class menuPage extends StatefulWidget {
  const menuPage({super.key});

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03, top: he * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: he * 0.03, bottom: he * 0.03),
            child: Row(
              children: [
                Expanded(child: Container()),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute(builder: (context) => MyHomePage())
                    );
                  },
                  child: const  Icon(
                    Icons.close_rounded,
                    size: 30,
                  ),
                ),
                SizedBox(width: he * 0.1),
              ],
            ),
            ),
            SizedBox(height: he * 0.03,),
            const Text('Contact Us', style: TextStyle(fontSize: 30)),
            SizedBox(height: he * 0.03),
            const Text('About Us', style: TextStyle(fontSize: 30)),
            SizedBox(height: he * 0.03),
            const Text('Help', style: TextStyle(fontSize: 30)),
            SizedBox(height: he * 0.03),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => settingPage()));
              },
              child: Text('Setting', style: TextStyle(fontSize: 30
              ),
              ),
              ),
            SizedBox(height: he * 0.03,),
            GestureDetector(
              onTap: () => SystemNavigator.pop(),
              child: const Text('Log out', style: TextStyle(fontSize: 30))),
          ],
        ),
      ),
    );
  }
}