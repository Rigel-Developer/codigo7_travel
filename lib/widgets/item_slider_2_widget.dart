import 'package:flutter/material.dart';

class ItemSlider2Widget extends StatelessWidget {
  const ItemSlider2Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 16,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      width: 200.0,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.network(
                  "https://images.pexels.com/photos/17951248/pexels-photo-17951248/free-photo-of-ciudad-amanecer-punto-de-referencia-anochecer.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: -10,
                right: 15,
                child: Container(
                  width: 30,
                  height: 30,
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orange,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange.withOpacity(0.5),
                          blurRadius: 6,
                          offset: const Offset(-4, 8),
                        ),
                      ]),
                  child: const Icon(
                    Icons.airplane_ticket,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "San Martine Island",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.orange,
                          size: 14.0,
                        ),
                        Text("Lorem ipsum")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text("4.5"),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
