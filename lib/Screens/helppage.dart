import 'package:flutter/material.dart';
import 'package:forgetnot/Screens/manupage.dart';
import 'package:forgetnot/components/upper_header.dart';

import 'package:forgetnot/Screens/privacysecurity.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      body: Padding(padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
      child: Column(
        children: [
          upperHeader('Help', context, false, page: const menuPage()),
          SizedBox(height: he * 0.042),
          CustomOption('Report Problem', Icons.report_gmailerrorred, () {}),
          CustomOption('Account Status', Icons.account_box_outlined, () {}),
          CustomOption('Privacy & Security', Icons.report_gmailerrorred, () {}),
          CustomOption('Submit Request', Icons.security, () {}),
          CustomOption('Report Problem', Icons.settings_applications_outlined, () {}),
        ],
      ),
      ),
    ));
  }
}