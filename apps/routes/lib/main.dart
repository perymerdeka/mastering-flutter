import 'package:flutter/material.dart';
import 'package:routes/screen/gallery_screen.dart';
import 'package:routes/screen/home_screen.dart';
import 'package:routes/screen/photos_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        Home.routeName: (context) => const Home(),
        GalleryPage.routeName: (context) => const GalleryPage(),
        PhotosPage.routeName: (context) => const PhotosPage()
      },
      home: const Home(),
    );
  }
}