import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int result = 0;

  final TextEditingController add1Controller = TextEditingController();
  final TextEditingController add2Controller = TextEditingController();
  final TextEditingController sub1Controller = TextEditingController();
  final TextEditingController sub2Controller = TextEditingController();
  final TextEditingController mul1Controller = TextEditingController();
  final TextEditingController mul2Controller = TextEditingController();
  final TextEditingController div1Controller = TextEditingController();
  final TextEditingController div2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit 5 Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add1Controller,
                  decoration: const InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const Text(" + "),
              Expanded(
                child: TextField(
                  controller: add2Controller,
                  decoration: const InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.calculate),
                onPressed: () {
                  setState(() {
                    result = int.parse(add1Controller.text) +
                        int.parse(add2Controller.text);
                  });
                },
              ),
              Text(' = $result'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: sub1Controller,
                  decoration: const InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const Text(" - "),
              Expanded(
                child: TextField(
                  controller: sub2Controller,
                  decoration: const InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.calculate),
                onPressed: () {
                  setState(() {
                    result = int.parse(sub1Controller.text) -
                        int.parse(sub2Controller.text);
                  });
                },
              ),
              Text(' = $result'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: mul1Controller,
                  decoration: const InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const Text(" × "),
              Expanded(
                child: TextField(
                  controller: mul2Controller,
                  decoration: const InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.calculate),
                onPressed: () {
                  setState(() {
                    result = int.parse(mul1Controller.text) *
                        int.parse(mul2Controller.text);
                  });
                },
              ),
              Text(' = $result'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: div1Controller,
                  decoration: const InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const Text(" ÷ "),
              Expanded(
                child: TextField(
                  controller: div2Controller,
                  decoration: const InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.calculate),
                onPressed: () {
                  setState(() {
                    result = int.parse(div1Controller.text) ~/
                        int.parse(div2Controller.text);
                  });
                },
              ),
              Text(' = $result'),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                add1Controller.clear();
                add2Controller.clear();
                sub1Controller.clear();
                sub2Controller.clear();
                mul1Controller.clear();
                mul2Controller.clear();
                div1Controller.clear();
                div2Controller.clear();
                result = 0;
              });
            },
            child: const Text("Clear"),
          ),
        ],
      ),
    );
  }
}
