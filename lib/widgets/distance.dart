// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Distance extends StatelessWidget {
  const Distance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Ionicons.locate_outline,
          color: Colors.white,
          size: 14,
        ),const SizedBox(width: 5),
        const Text(
          'Constantine',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 5),
        ...List.generate(
          18,
          (index) {
            return Expanded(
              child: Container(
                height: 2,
                color: index.isOdd ? Colors.transparent : Colors.black54,
              ),
            );
          },
        ),
        const SizedBox(width: 3),
        const Icon(
          Ionicons.location_outline,
          size: 14,
          color: Colors.white,
        ),
        const SizedBox(width: 2),
        const Text(
          'Algiers',
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
