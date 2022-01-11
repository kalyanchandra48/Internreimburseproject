import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          CircleAvatar(
            radius: 80.0,
            backgroundImage: NetworkImage(
                'https://image.shutterstock.com/image-photo/screaming-stressed-man-merger-quiet-600w-759589111.jpg'),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'Name',
	  
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              labelText: 'Phone',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.mail),
              labelText: 'Mail',
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {},
              child: Text('SIGN OUT'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),)
        ],
      ),
    );
  }
}
