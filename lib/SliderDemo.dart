import 'package:flutter/material.dart';
import 'package:prov/Provider/SlderProvider.dart';
import 'package:provider/provider.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({super.key});

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Slider Demo"),
        ),
        body: Consumer<SliderProvider>(
          builder: (context, val, child) {
            return Center(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(val.value),
                      ),
                    ),
                  ),
                  Slider(
                      min: 0,
                      max: 1,
                      value: val.value,
                      onChanged: (v) {
                        val.setValue(v);
                      }),
                  Expanded(
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(val.value),
                      ),
                    ),
                  ),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
