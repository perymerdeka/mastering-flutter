import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: use_key_in_widget_constructors
class Home extends StatelessWidget {
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismisible Example'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Dismissible(
            background: Container(
              alignment: Alignment.centerRight,
              color: Colors.red,
              child: const Icon(
                Icons.delete,
                size: 40.0,
                color: Colors.white,
              ),
            ),
            direction: DismissDirection.endToStart,
            confirmDismiss: (direction) {
              return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Konfirmasi'),
                      content: const Text('Apakah Yakin Menghapus item ini'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          child: const Text('Yes'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(false);
                          },
                          child: const Text('no'),
                        )
                      ],
                    );
                  });
            },
            key: Key(index.toString()),
            child: ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),
          );
        },
      ),
    );
  }
}
