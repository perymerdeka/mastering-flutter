import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Extract Widget'),
      ),
      body: ListView.builder(
       itemCount: 100,
       itemBuilder: (context, index) {
         return ChatItem(imageUrl: faker.image.image(), title: faker.person.name(), subtitle: faker.lorem.sentence());
       },
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  ChatItem(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text('10:00'),
    );
  }
}
