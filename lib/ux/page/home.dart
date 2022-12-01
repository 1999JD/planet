import 'package:flutter/material.dart';
import 'package:planet/main.dart';
import 'package:planet/model/home_model.dart';
import 'package:planet/ux/widget/home/select_bar.dart';
import 'package:planet/ux/widget/home/navbar.dart';
import 'package:planet/ux/widget/custom_text_button.dart';
import 'package:planet/ux/widget/home/product_card.dart';
import 'package:planet/view_model/home_view_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeViewModel homeviewModal = HomeViewModel();
  late List specialOffers;
  List<String> chips = [
    "all",
    "Monstera",
    "Aloe",
    "Palm",
    "YYY",
    "BNNN",
    "ASDfwer"
  ];
  String currentPopular = "all";

  @override
  void initState() {
    super.initState();
    specialOffers = homeviewModal.getModel();
  }

  @override
  Widget build(BuildContext context) {
    final gridWidth = (MediaQuery.of(context).size.width - 24) / 2;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const NavBar(),
            const SelectBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Special Offers'),
                  CustomTextButton(text: 'See All'),
                ],
              ),
            ),
            SizedBox(
              height: 320,
              child: ListView.separated(
                padding: const EdgeInsets.all(8.0),
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 8,
                  );
                },
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: specialOffers.length,
                itemBuilder: (_, index) =>
                    ProductCard(product: specialOffers[index]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Most Popular'),
                  CustomTextButton(text: 'See All'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 8),
              height: 40,
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 8,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, i) => ActionChip(
                  label: Text(chips[i]),
                  backgroundColor:
                      currentPopular == chips[i] ? Colors.green : Colors.white,
                  shape: const StadiumBorder(
                      side: BorderSide(color: Colors.green)),
                  onPressed: () {
                    setState(() {
                      currentPopular = chips[i];
                    });
                  },
                ),
                itemCount: chips.length,
              ),
            ),
            GridView.count(
              padding: const EdgeInsets.all(8),
              crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8,
              shrinkWrap: true,
              childAspectRatio: 220 / 320,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              children: specialOffers.map((product) {
                return ProductCard(product: product);
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
