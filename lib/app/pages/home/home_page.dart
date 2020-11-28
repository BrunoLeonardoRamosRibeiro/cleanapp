import 'package:cleanapp/app/app_controller.dart';
import 'package:cleanapp/app/pages/home/components/custom_switch_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page teste'),
      ),
      body: Column(
        children: [
          Center(
            child: CustomSwitchWidget(),
          ),
          Text(AppController.instance.themeSwitch.value.toString()),
        ],
      ),
    );
  }
}
