import 'package:flutter/material.dart';

import 'package:reimburse_mobile/pages/applying_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ApplyingPage()));
          },
          child: Container(
            height: 100,
            width: 100,
            child: Image.asset('assets/images/logo_sample.jpeg'),
          ),
        ),
      ),
    );
  }
}
