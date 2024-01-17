import 'package:flutter/material.dart';
import 'package:odugur/core/app_color.dart';
import 'package:odugur/core/app_data.dart';
import 'package:odugur/view/Shop/shop_widgets.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 100,
          title: const Text(
            'Exchange',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
          ),
          actions: const [
            Text(
              '343 Coins',
              style: TextStyle(
                color: AppColor.secondary,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Get Your Rewards',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: AppData.products.length,
                  itemBuilder: (context, index) {
                    return ShopCard(
                      product: AppData.products[index],
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.6),
                ),
              ),
            ],
          ),
        ));
  }
}
