import 'package:eco/theme.dart';
import 'package:flutter/material.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bgColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/arcane_shoes.jpg',
              width: 60,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            children: const [
              Text(
                'Arcane Shoes',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
