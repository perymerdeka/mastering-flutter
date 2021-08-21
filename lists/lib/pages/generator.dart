import 'package:flutter/material.dart';

/// generate widget
List<Widget> listOfText = List.generate(100, (index) {
  return Text('Text Nomor: $index');
});

class ListGeneratorView extends StatelessWidget {
  const ListGeneratorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListGenerator'),
      ),
      body: ListView.builder(
        itemCount: listOfText.length,
        itemBuilder: (context, index) {
          return Container(
            child: listOfText[index],
          );
        },
      ),
    );
  }
}
