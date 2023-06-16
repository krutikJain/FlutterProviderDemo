import 'package:flutter/material.dart';
import 'package:prov/HomePage.dart';

import 'SliderDemo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Demo"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  child: const Text("DemoScreen 1",style: TextStyle(fontSize: 18),),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SliderDemo()));
                  },
                  child: const Text("DemoScreen 2",style: TextStyle(fontSize: 18),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
