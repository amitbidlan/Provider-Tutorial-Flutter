import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_screen_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double valueOpacity = 1.0;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeScreenProvider>(context, listen: true);

    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(235, 255, 91, 9),
          title: const Text("Provider"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    width: 40,
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 95, 110)
                            .withOpacity(provider.value),
                        shape: BoxShape.circle),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    width: 40,
                    margin: const EdgeInsets.all(10.0),
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 183, 255)
                            .withOpacity(provider.value),
                        shape: BoxShape.circle),
                  ),
                )
              ],
            ),
            Slider(
                min: 0,
                max: 1,
                value: provider.value,
                onChanged: ((value) {
                  provider.setValue(value);
                  setState(() {});
                }))
          ],
        ));
  }
}
