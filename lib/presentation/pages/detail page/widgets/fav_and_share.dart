import 'package:flutter/material.dart';

import '../../../widgets/mini_card.dart';

class FavAndShare extends StatelessWidget {
  const FavAndShare({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MiniCard(
          iconData: Icons.favorite_border_rounded,
        ),
        MiniCard(iconData: Icons.share_outlined)
      ],
    );
  }
}
