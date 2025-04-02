import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:forgetnot/Screens/manupage.dart';
import 'package:forgetnot/Screens/privacysecurity.dart';
import 'package:forgetnot/components/customText.dart';
import 'package:forgetnot/components/upper_header.dart';
import 'package:forgetnot/widgets/constant.dart';

class settingPage extends StatefulWidget {
  const settingPage({super.key});

  @override
  State<settingPage> createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
  bool isSwitch = true;
  bool isSound = true;
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              upperHeader("Settings", context, false, page: const menuPage()),
              SizedBox(height: he * 0.035),
              Container(
                padding: EdgeInsets.all(he * 0.004),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 208, 240, 1),
                      Color.fromARGB(255, 253, 170, 53),
            ])
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.all(he * 0.012),
                  child: Row(
                    children: [
                      Container(
                        height: he * 0.07,
                        width: he * 0.07,
                        padding: EdgeInsets.all(he * 0.01),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[300],
                        ),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            const Color.fromARGB(255, 224, 224, 224).withOpacity(0.6), BlendMode.srcATop,
                          
                          ),
                          child: Icon(
                            Icons.workspace_premium_outlined,
                            size: 30,
                            color: MyThemeColor.textColor,
                          ),
                        ),
                      ),
                      SizedBox(width: he * 0.015),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              customText('Tasks', 26),
                              SizedBox(width: he * 0.05),
                              const Text("Unlock our most exclusive feeatures",
                              style: TextStyle(fontSize: 14, color: MyThemeColor.textColor),
                              ),
                            ],
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 22, 23, 22),
                        size: 20
                      ),
                    ]
                  ),
                ),
              ),
              SizedBox(height: he * 0.025),
              Row(
                children: [
                  if (isSound == true) 
                    Icon(Icons.volume_up_outlined, size: 25, color: MyThemeColor.textColor)
                  else
                    Icon(Icons.volume_off_outlined, size: 25, color: MyThemeColor.textColor),
                  SizedBox(width: he * 0.015),
                  const Text(
                    "Notifications",
                    style: TextStyle(fontSize: 18, color: MyThemeColor.textColor),
                  ),
                  Expanded(child: Container()),
                  CupertinoSwitch(value: isSwitch, onChanged: (bool value) {
                    setState(() {
                      isSwitch = value;
                  });
  })
                ]
              ),
              SizedBox(height: he * 0.025),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const PrivacySecurity())
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.lock_open_outlined, size: 25, color: MyThemeColor.textColor),
                    SizedBox(width: he * 0.015),
                    const Text(
                      "Pricavy & Security",
                      style: TextStyle(fontSize: 18, color: MyThemeColor.textColor),
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: MyThemeColor.textColor,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(height: he * 0.025),
              GestureDetector(
                onTap: () {},
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => aboutApp())
                    // )
                  },
                  child: Row(
                    children: [
                      Icon(Icons.info_outline,
                      size: 25, color: MyThemeColor.textColor),
                      SizedBox(width: he * 0.015),
                      const Text(
                        "About App",
                        style: TextStyle(fontSize: 18, color: MyThemeColor.textColor),
                      ),
                      Expanded(child: Container()),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: MyThemeColor.textColor,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: he * 0.025),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(Icons.help_outline,
                    size: 25, color: MyThemeColor.textColor),
                    SizedBox(width: he * 0.015),
                    const Text(
                      "Help & Support",
                      style: TextStyle(fontSize: 18, color: MyThemeColor.textColor),
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: MyThemeColor.textColor,
                      size: 20,
                    )
                  ],
                )
              ),
              SizedBox(height: he * 0.025),
              const Divider(
                color: Colors.blue,
                thickness: 1,
              ),
              SizedBox(height: he * 0.02),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Sing Out",
                  style: TextStyle(fontSize: 17, color: MyThemeColor.textColor),
                )
              ),
              SizedBox(height: he * 0.02),
              const Text(
                "Version 1.0.0",
                style: TextStyle(fontSize: 17, color: MyThemeColor.textColor),
              )
            ],
          ),
        ),
      )
    );
  }
}
