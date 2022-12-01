import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final Map product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Card(
        shadowColor: Colors.transparent,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                    ),
                    child: Image.asset(
                      'assets/image/home3.png',
                      width: MediaQuery.of(context).size.width,
                    )),
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                  ),
                ),
              ],
            ),
            Text(product["name"]),
            Row(
              children: [
                const Icon(Icons.star),
                Text(product["score"]),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  width: 2,
                  height: 16,
                  color: Colors.black12,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    '${product["sold"]} Sold',
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
                const Spacer(),
              ],
            ),
            Text('\$${product["price"]}')
          ],
        ),
      ),
    );
  }
}
