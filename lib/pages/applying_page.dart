import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:reimburse_mobile/styles/styles.dart';

class ApplyingPage extends StatelessWidget {
  final fb = FirebaseDatabase.instance;
  final reasonTextController = TextEditingController();
  final billDateController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ref = fb.reference();

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 50,
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    'Application form',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextField(
                      controller: reasonTextController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter the reason here',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: billDateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Date of bill',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextField(
                      controller: amountController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Amount spent',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                ref.child('testing').set({
                  "name": reasonTextController.text,
                  "Date of bill": billDateController.text,
                  "Amount": amountController.text
                });
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Upload bill',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ), //button
          ],
        ),
      ),
    );
  }
}
