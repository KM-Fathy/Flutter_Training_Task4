import 'package:flutter/material.dart';
import 'package:task_3/models/products_model.dart';

class MyWidget extends StatelessWidget {
  final Product product;

  const MyWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    int p = product.price;
    String pr = '\$$p';
    return SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 110,
                width: 165,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: DecorationImage(
                        image: NetworkImage(product.thumbnail))),
                margin: const EdgeInsets.symmetric(horizontal: 7),
              ),
              const Positioned(
                  left: 130,
                  top: 0,
                  child:
                      Icon(color: Colors.red, Icons.favorite_outline_outlined))
            ],
          ),
          const SizedBox(height: 8),
          Text(
            product.title,
            style: const TextStyle(fontSize: 10),
          ),
          Text(
            pr,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
