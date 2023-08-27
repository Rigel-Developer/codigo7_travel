import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemSecondBarWidget extends StatelessWidget {
  const ItemSecondBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xffEFF7FE),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffC5E4FC),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(8),
                child: SvgPicture.asset(
                  "assets/images/bookingcom-1.svg",
                  width: 20,
                  height: 20,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Booking",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xff6F807B),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "8.0/10",
                    style: TextStyle(
                      color: Color(0xff6F807B),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Based on 250 reviews",
            style: TextStyle(
              color: Color(0xff6F807B),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
