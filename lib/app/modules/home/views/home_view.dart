import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pasabahce/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store'.toUpperCase()),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: _body(context),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          currentIndex: controller.selectedIndex.value,
          onTap: (index) {
            controller.selectedIndex.value = index;
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/bottom_navigation_bar/home.svg',
                color: controller.color(0),
              ),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/bottom_navigation_bar/categories.svg',
                color: controller.color(1),
              ),
              label: 'Category',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/bottom_navigation_bar/cart.svg',
                color: controller.color(2),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/bottom_navigation_bar/favorites.svg',
                color: controller.color(3),
              ),
              label: 'Favorite',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/bottom_navigation_bar/settings.svg',
                color: controller.color(4),
              ),
              label: 'Setting',
              backgroundColor: Colors.white,
            ),
          ],
        );
      }),
    );
  }

  Widget _body(context) {
    return Obx(() {
      switch (controller.selectedIndex.value) {
        case 0:
          return _home(context);
        case 1:
          return _category(context);
        case 2:
          return _cart(context);
        case 3:
          return _favorite(context);
        case 4:
          return _setting(context);
        default:
          return const Center(
            child: Text('Home'),
          );
      }
    });
  }

  Widget _home(context) {
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: ListView(
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Ottoman Collection',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Find the perfect watch for your wrist",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                /// Categories
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFCC9D76),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 213,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (ctx, i) {
                      return InkWell(
                        onTap: () {
                          Get.toNamed(Routes.PRODUCT_DETAILS);
                        },
                        borderRadius: BorderRadius.circular(20),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/categories/image_${i + 1}.png',
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Thank God Bowl',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              const Text(
                                "€1750",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),

                /// Top deals
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Top deals',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFCC9D76),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 230,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (ctx, i) {
                      return InkWell(
                        onTap: () {
                          Get.toNamed(Routes.PRODUCT_DETAILS);
                        },
                        borderRadius: BorderRadius.circular(20),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            // top: 10,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 160,
                                width: Get.width * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF86572B),
                                      Color(0xFF272832),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -5,
                                right: -20,
                                child: Image.asset(
                                  'assets/images/top_deals/image_${i + 1}.png',
                                  height: 220,
                                  width: 220,
                                ),
                              ),
                              Positioned(
                                left: 20,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Gulcehre\nIbrik',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "W:32cm H:26cm",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "€5650",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),

                /// Featured products
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Featured products',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFCC9D76),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 213,
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(Routes.PRODUCT_DETAILS);
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (ctx, i) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/featured_products/image_${i + 1}.png',
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Thank God Bowl',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              const Text(
                                "€1750",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 213,
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(Routes.PRODUCT_DETAILS);
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (ctx, i) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/featured_products/image_${i + 4}.png',
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Thank God Bowl',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              const Text(
                                "€1750",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                /// Search by brand
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Search by brand',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFCC9D76),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 213,
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(Routes.PRODUCT_DETAILS);
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (ctx, i) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/search_by_brand/image_${i + 1}.png',
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Thank God Bowl',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              const Text(
                                "€1750",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _category(context) {
    return Center(
      child: Text(
        'Category',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }

  Widget _cart(context) {
    return Center(
      child: Text(
        'Cart',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }

  Widget _favorite(context) {
    return Center(
      child: Text(
        'Favorite',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }

  Widget _setting(context) {
    return Center(
      child: Text(
        'Setting',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
