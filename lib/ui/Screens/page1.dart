import 'package:flutter/material.dart';
import 'package:task_3/data_source/data_source.dart';
import 'package:task_3/ui/Widgets/my_widget.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  void initState() {
    if (DataSource.products.isEmpty) {
      Future.delayed(Duration.zero, () async {
        var data = await DataSource.getData();
        setState(() {
          DataSource.products = data;
          DataSource.isLoading = false;
        });
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff8f4fc),
        foregroundColor: Colors.black,
        title: const Text('New Products'),
      ),
      backgroundColor: const Color(0xfff8f4fc),
      body: DataSource.isLoading
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: GridView.builder(
              itemCount: DataSource.products.length,
              itemBuilder: (BuildContext context, int index) {
                return MyWidget(product: DataSource.products[index]);
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
            )),
    );
  }
}
