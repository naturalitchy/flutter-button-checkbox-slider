// import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'Windows Application!',
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool checked = false;
  bool checked2 = false;
  double currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                FluentIcons.add,
                color: Colors.white,
              ),
              SizedBox(width: 20.0,),
              Icon(
                FluentIcons.encounter,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Button(
            child: const Text(
              'Hello Windows!?',
            ),
            onPressed: () {
              print('Button onPressed!');
            },
            style: ButtonStyle(
              backgroundColor: ButtonState.all(Colors.blue),
              elevation: ButtonState.all(10),
            ),
          ),
          SizedBox(height: 20.0,),
          Checkbox(
            checked: checked,
            onChanged: (select) {
              setState(() {
                checked = select!;
              });
            },
            style: CheckboxThemeData(
              checkedIconColor: ButtonState.all(Colors.red),
            ),
          ),
          const SizedBox(height: 20.0,),
          ToggleSwitch(
            checked: checked2,
            onChanged: (select) {
              setState(() {
                checked2 = select!;
              });
            },
            style: const ToggleSwitchThemeData(
              animationDuration: Duration(milliseconds: 300),
              animationCurve: Curves.bounceOut,
            ),
          ),
          const SizedBox(height: 30.0,),
          Container(
            width: 200,
            child: Slider(
              divisions: 10,
              value: currentValue,
              onChanged: (value) {
                setState(() {
                  currentValue = value;
                });
              },
              style: SliderThemeData(
                // activeColor: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

