import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({
    super.key,
  });

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final TextEditingController input1Ctrl = TextEditingController();
  final TextEditingController input2Ctrl = TextEditingController();
  double sum = 0;

  void getSum() {
    setState(() {
      sum = double.parse(input1Ctrl.text) + double.parse(input2Ctrl.text);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f4fc),
      appBar: AppBar(
        backgroundColor: const Color(0xfff8f4fc),
        foregroundColor: Colors.black,
        title: const Text('Counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'sum = $sum',
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 250,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                padding: const EdgeInsets.all(12),
                child: TextField(
                  controller: input1Ctrl,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Input 1',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 250,
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: input2Ctrl,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Input 2',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff380909),
                  alignment: Alignment.center,
                  maximumSize: const Size(100, 60),
                  padding: const EdgeInsets.all(10)),
              onPressed: () {
                getSum();
                print(sum.toString());
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('get sum'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
