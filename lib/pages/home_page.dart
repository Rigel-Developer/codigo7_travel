import 'package:flutter/material.dart';
import 'package:semana7_travel/pages/detail_page.dart';

import '../widgets/item_popular_widget.dart';
import '../widgets/item_slider_2_widget.dart';
import '../widgets/item_slider_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Color(0xff202020),
        ),
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.rocket,
              color: Color(0xffffb703),
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              'DiscountTour',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xff202020),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Find the best tour!",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff202020)),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Lorem ipsum dolor sit amet consectetur adipiscinos ante varius aenean posuere volutpat gravida",
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Country",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff202020)),
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ItemSliderWidget(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailPage(),
                          ),
                        );
                      },
                    ),
                    ItemSliderWidget(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Popular Tours",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff202020),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const ItemPopularWidget(),
              const ItemPopularWidget(),
              const ItemPopularWidget(),
              const ItemPopularWidget(),
              const SizedBox(
                height: 8,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ItemSlider2Widget(),
                    ItemSlider2Widget(),
                    ItemSlider2Widget(),
                    ItemSlider2Widget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
