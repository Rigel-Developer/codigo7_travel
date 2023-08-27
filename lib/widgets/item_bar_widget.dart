import 'package:flutter/material.dart';

class ItemBarWidget extends StatelessWidget {
  final IconData iconName;
  final String text;
  const ItemBarWidget({
    super.key,
    required this.iconName,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.grey.withOpacity(0.25),
              ),
            ),
            child: Icon(
              iconName,
              color: const Color(0xff6C7E78),
              size: 25,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            // width: 40,
            child: Text(
              text,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xff6C7E78),
              ),
            ),
          )
        ],
      ),
    );
  }
}
