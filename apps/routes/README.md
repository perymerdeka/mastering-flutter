# routes

### Contoh Menggunakan Navgator

```dart
import 'package:flutter/material.dart';
import 'package:routes/screen/home_screen.dart';
import 'package:routes/screen/photos_page.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Gallery Page',
            style: TextStyle(fontSize: 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('');
                  },
                  child: const Text('<< Back', style: TextStyle(fontSize: 25))),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PhotosPage()));
                  },
                  child: const Text(
                    'Next >>',
                    style: TextStyle(fontSize: 25),
                  ))
            ],
          )
        ],
      )),
    );
  }
}
```

contoh menggunakan route

route ini digunakan ketika banyak screen

```dart
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);
  static const routeName = '/gallery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Gallery Page',
            style: TextStyle(fontSize: 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('<< Back', style: TextStyle(fontSize: 25))),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/photos');
                  },
                  child: const Text(
                    'Next >>',
                    style: TextStyle(fontSize: 25),
                  ))
            ],
          )
        ],
      )),
    );
  }
}
```

kalo dilihat di main page seperti ini

```dart
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
}I
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
