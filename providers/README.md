### Provider State Management

dalam kasus tertentu kita kepengen hanya beberapa widget yang ingin kita ubah tanpa restart
semua widget maka kita butuh yang namnanya `state management` nah state yang akan kita gunakan
adalah [Provider](https://pub.dev/packages/provider) cara kerja nya seperti ini

#### Cara Kerja State Management

dalam aplikasi yang kita buat kita akan membuat satu `shared state` (semuah kelas) dimana kelas ini
akan berfungsi untuk menyimpan state yang dipakai bareng-bareng oleh widget yang akan diubah

cara sinkatnya seperti ini

1. ketika si tombol di klik dia akan memberitahu si `shared state` jika ada perubahan
2. setelah diberitahu, si `shared state` tadi akan memberitahu si widget-widget yang berkaitan
3. si `shared state` harus mengimplementasi **`Change Notifier`** agar si `shared state`
dapat memberi tau si widget-widget tadi (*ketika ada perubahan*)
4. bungkus widget yang paling dekat dengan `Change Notifier Provider`
agar dapat menyediakan `Instance` (*object*) dari `Shared State`
5. bungkus widget yang ingin diubah dengan widget `Consumer()` fungsi nya untuk memberitahu
widget-widget tadi agar dibaritahu ketika ada perubahan

### The Code

kita akan lihat bagaimana caranya jika menerapkan di aplikasi

contoh kasus aplikasi seperti ini contoh tampilan nya seperti ini

![contoh tampilan studi kasus aplikasi](docs/display.png)

pertama kita membuat `Stateless Widget` seperti ini

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
          title: Text(
            'Latihan Provider',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                color: Colors.lightBlue,
                duration: Duration(milliseconds: 500),
                margin: EdgeInsets.all(5.0),
                height: 100,
                width: 100,
              ),
              Container(
                child: Text('AB'),
              ),
              Switch(value: true, onChanged: (value) {}),
              Container(
                margin: EdgeInsets.all(5.0),
                child: Text('LB'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
```

kemudian kita membuat satu file untuk membuat providers, saya biasanya membuat file di directory secara terpisah dalam directory `provider` buat file provider sesuai fungsi atau class nya misalnya `applicationColor` jadi filenya seperti ini

`lib/provider/applicationColor.dart`

isinya seperti ini

```dart
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApplicationColors with ChangeNotifier {
  bool _isLightBlue = true;

  // getter
  bool get isLightBlue => _isLightBlue;

  // setter
  set isLightBlue(bool value) {
    _isLightBlue = value;

    // notify
    notifyListeners();
  }

  // execute change
  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
}
```

penjelasanya seperti ini

* pertama kita buat class `ApplicationColors` kemudian kita implement dengan `ChangeNotifier` dari `package:flutter/foundation.dart';`

* kemudian kita membuat `getter` dan juga `setter` untuk mengakses nilai/method yang ada dalam kelas
* kemudian kita panggil method `notifyListeners()` untuk memberitahu widget-widget yang akan diubah
* kemudian kita membuat `getter` yang akan mengembalikan (*return*) sesuai si parameter `isLightBlue`

```dart
// execute change
Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
```

kemudian kita install provider cek di (https://pub.dev/packages/provider)

kemudian add ke `pubspec.yaml`

```
flutter pub add provider
```

link dokumentasi: https://pub.dev/documentation/provider/latest/

kemudian kita bungkus `main.dart` seperti ini

```dart
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/applicationColor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColors>(
        create: (context) => ApplicationColors(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<ApplicationColors>(
              builder: (context, applicationColors, _) => Text(
                'latihan provider',
                style: TextStyle(color: applicationColors.color),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ApplicationColors>(
                  builder: (context, applicationColors, _) => AnimatedContainer(
                    color: applicationColors.color,
                    duration: Duration(milliseconds: 500),
                    margin: EdgeInsets.all(5.0),
                    height: 100,
                    width: 100,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text('AB'),
                    ),
                    Consumer<ApplicationColors>(
                        builder: (context, applicationColors, _) => Switch(
                            value: applicationColors.isLightBlue,
                            onChanged: (newValue) {
                              applicationColors.isLightBlue = newValue;
                            })),
                    Container(
                      child: Text('LB'),
                      margin: EdgeInsets.all(5.0),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

```

hasilnya seperti ini


![display2](docs/display.png)

![hasil display](docs/display1.png)


itu adalah penjelasan singkat tentang provider dan penerapan simple nya

### Referensi dan Sumber

* [Channel youtube](https://www.youtube.com/watch?v=NNKKpECZUnw)
* [dokumentasi flutter](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple)

---