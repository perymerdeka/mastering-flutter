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

