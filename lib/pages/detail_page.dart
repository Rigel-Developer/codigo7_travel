import 'package:flutter/material.dart';

import '../widgets/item_bar_widget.dart';
import '../widgets/item_second_bar_widget.dart';
import '../widgets/item_slider_2_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    double heigt = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true, // Extender el fondo detrás de la barra
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Color(0xff8BA39A)),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Color(0xff8BA39A)),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite, color: Color(0xff009F6A)),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.money, color: Color(0xff8BA39A)),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu, color: Color(0xff8BA39A)),
          label: "",
        ),
      ]),
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Fondo transparente
        elevation: 0, // Sin sombra
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Lógica de retroceso aquí
            Navigator.of(context).pop(); // Lógica de retroceso
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share_outlined),
            onPressed: () {
              // Lógica de búsqueda aquí
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              // Lógica de menú aquí
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: heigt * 0.4,
            decoration: const BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.pexels.com/photos/1929611/pexels-photo-1929611.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: heigt * 0.22,
                ),
                const Text(
                  "Sea Flower Resort",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 16,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Koh Chang Tai, Thailand",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        ...List.generate(
                          2,
                          (index) => const Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                        ...List.generate(
                          3,
                          (index) => Icon(
                            Icons.star,
                            color: Colors.white.withOpacity(0.5),
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      "4.8",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: heigt * 0.36,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: const SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ItemBarWidget(
                                iconName: Icons.wifi,
                                text: "Free \nWi-Fi",
                              ),
                              ItemBarWidget(
                                iconName: Icons.beach_access,
                                text: "Sand \nBeach",
                              ),
                              ItemBarWidget(
                                iconName: Icons.cottage,
                                text: "First \nCoatsline",
                              ),
                              ItemBarWidget(
                                iconName: Icons.wine_bar,
                                text: "Bar and \nRestaurant",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ItemSecondBarWidget(),
                              ItemSecondBarWidget(),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet consectetur adipisicing elit. voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem.",
                            style: TextStyle(
                              height: 1.7,
                              color: Color(0xff92A8A0),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          SingleChildScrollView(
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
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
