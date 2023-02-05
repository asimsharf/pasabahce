import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pasabahce/app/data/components/compsButton.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Product details'.toUpperCase(),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/icons/cart.svg',
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 420,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('assets/images/details/details.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 390),
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView(
                children: [
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      'Hagia Sophia Deesis Mosaic Vase',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/icons/full_star.svg',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(
                          'assets/images/icons/full_star.svg',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(
                          'assets/images/icons/full_star.svg',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(
                          'assets/images/icons/full_star.svg',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(
                          'assets/images/icons/empty_star.svg',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          '1.248 Reviews',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'The Virgin Mary in the “Deesis” scene in the south gallery of Hagia Sophia is depicted on the Hagia Sophia Mosaic Vase.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      '\$ 1.200',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 33,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            height: 33,
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'Description',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 3,
                    width: double.infinity,
                    color: Colors.grey.withOpacity(0.3),
                    child: Container(
                      height: 3,
                      width: 140,
                      color: const Color(0xFFCC9D76),
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        color: Colors.white,
        width: double.infinity,
        padding: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              'assets/images/icons/favorites.svg',
              height: 44,
              width: 44,
            ),
            compsButton(
              text: 'ADD TO CART',
              onPressed: () {},
              color: const Color(0xFFCC9D76),
            ),
            SvgPicture.asset(
              'assets/images/icons/share.svg',
              height: 44,
              width: 44,
            ),
          ],
        ),
      ),
    );
  }
}
