import 'package:flutter/material.dart';
import 'package:nav/screen/home.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => const Home()));
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: const Center(
          child: Text(
        'Profile Page',
        style: TextStyle(fontSize: 40.0),
      )),
    );
  }
}
