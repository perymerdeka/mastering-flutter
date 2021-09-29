import 'package:flutter/material.dart';

class PhotosPage extends StatelessWidget {
  const PhotosPage({Key? key}) : super(key: key);
  static const routeName = '/photos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photos Page'),
      ),
      body: const Center(
        child: Text(
          'Photos Page',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
