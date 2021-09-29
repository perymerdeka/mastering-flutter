# Row dan Column Widget

widget yang sering digunakan untuk membuat aplikasi Flutter adalah `Row` dan `Column` widget

### `Column`

`column` ini menyusun beberapa widget dan tata letaknya disusun secara vertikal *Kebawah*

```
1. widget 1
2. widget 2 
3. widget 3
```
klo di flutternya begini

```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Row dan Column"),),
        body: Column(
          children: [
            Text("Widget 1"),
            Text("widget 2"),
            Text("Widget 3")
          ],
        ),
      ),
    );
  }
}
```

```dart
return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Row dan Column"),),
        body: Column(
          children: [
            Text("Widget 1"),
            Text("widget 2"),
            Text("Widget 3")
          ],
```

jika dijalankan hasilnya seperti 

![Column](docs/img/column.png)


### `Row`

`Row` kebalikan dari column klo row menyusun beberapa widget secara horizontal, pemakaianya pun sama dengan
`Column`

```dart
widget 1 widget 2 widget 3
```


```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Row dan Column"),
        ),
        body: Row(
          children: [Text("Widget 1"), Text("widget 2"), Text("Widget 3")],
        ),
      ),
    );
  }
}
```


```dart
return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Row dan Column"),
        ),
        body: Row(
          children: [Text("Widget 1"), Text("widget 2"), Text("Widget 3")],
        ),
      ),
    );
```

![Widget Row](docs/img/row.png)

### Property `Row` dan `Column`

#### `mainAxisAlignment`

digunakan untuk mengatur tata letak / `alignment` dari widget-widget ditdalamnya

* `mainAxisAlignment` untuk `Column` itu akan mengatur `alignment` secara vertikal
* `mainAxisAlignment` untuk `Row` itu akan mengatur `akignment` secara horizontal

### Resource Dokumentasi

* [dokumentasi tentang row](https://api.flutter.dev/flutter/widgets/Row-class.html)
* [dokumentasi tentang widget](https://api.flutter.dev/flutter/widgets/Column-class.html)
* [Konsep Dasar Layouting dan Studi Kasus](https://flutter.dev/docs/development/ui/layout)
* [Dokumentasi Widget](https://api.flutter.dev/flutter/widgets/widgets-library.html)
* [Flutter Flow](https://flutterflow.io/)

---

[Widget dasar: Text Widget]() <> [Widget Dasar: Container](/containers/README.md)
