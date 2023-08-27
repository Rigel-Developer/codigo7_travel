import 'package:flutter/material.dart';

class ItemPopularWidget extends StatelessWidget {
  const ItemPopularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xffEEF6FB),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Row(
          children: [
            Container(
              width: 110,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.pexels.com/photos/8299950/pexels-photo-8299950.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Thailand",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff71827D),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "10 nigths for two/all inclusivesssssss",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "\$ 245.50",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff71827D),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              height: 70,
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 15,
              ),
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                color: const Color(0xff009F6A),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                children: [
                  Text(
                    "4.5",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 16,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
