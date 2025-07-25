
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example_two8/example_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // set state with opacity
  // double opacity = .4 ;

  // controller ko inject , view in inject
  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Totorial'),
      ),
      body: Column(
        children: [

          //getx with container , slider build ho rahe hai

          Obx(() =>
              Container(
                height: 200,
                width: 200,
                // color: Colors.red.withOpacity(opacity),
                // opacity .1 se lekr 1 tak hoti hai

              //   getx with
                color: Colors.red.withOpacity(exampleTwoController.opacity.value),
              ),
          ),

          Obx(() =>
              Slider(
                value: exampleTwoController.opacity.value,
                onChanged: (value){
                  print(value);
                  exampleTwoController.setOpacity(value);
                },
              ),
          ),


          // Slider(
          //   value: opacity,
          //   onChanged: (value){
          //     print(value);
          //     opacity = value;
          //     setState(() {
          //
          //     });
          //   },
          // ),

        ],
      ),
    );
  }
}
