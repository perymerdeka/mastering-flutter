### ListTile

List Tile digunakan untuk memodifikasi list, misalnya kita ingin membuat sebuah daftar widget seperti ini

![contoh list tile](docs/out.png)

kita bisa menggunakan listile seperti ini contohnya

```dart
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Tile Example'),
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(20),
            title: Text('feri Lukmansyah'),
            subtitle: Text('Orangnya Ganteng'),
            leading: CircleAvatar(),
            trailing: Text('10:20'),
            onTap: () {
              return; 
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('feri Lukmansyah'),
            subtitle: Text('Orangnya Ganteng'),
            leading: CircleAvatar(),
            trailing: Text('10:20'),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('feri Lukmansyah'),
            subtitle: Text('Orangnya Ganteng'),
            leading: CircleAvatar(),
            trailing: Text('10:20'),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('feri Lukmansyah'),
            subtitle: Text('Orangnya Ganteng'),
            leading: CircleAvatar(),
            trailing: Text('10:20'),
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
```

outputnya

![contoh output](docs/out.png)

penerapan lengkap cek dokumentasi dibawah

### Referensi

docs: https://api.flutter.dev/flutter/material/ListTile-class.html

---
[Listview dan ListView Builder](../lists/README.md) <> [Extract Widget](../ext_widget/README.md)