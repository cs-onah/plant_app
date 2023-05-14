import 'package:flutter/material.dart';
import 'package:plant_app/main.dart';
import 'package:plant_app/widgets/image_bg.dart';

class PlantTile extends StatelessWidget {
  final String title, description, imagePath, price;
  final bool ltr;
  const PlantTile({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.price,
    this.ltr = true,
  });

  @override
  Widget build(BuildContext context) {
    final children = [
      const SizedBox(width: 44),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(description),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  price,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_circle_outline, size: 25),
                  color: AppColors.textGreen,
                )
              ],
            ),
          ],
        ),
      ),
      const SizedBox(width: 30),
      SizedBox(
        height: 230,
        width: 177,
        child: Stack(
          children: [
            Positioned(right: ltr ? 0 : null, left: !ltr? 0: null, bottom: 0, child: ImageBg(ltr: ltr)),
            Image.asset(imagePath),
          ],
        ),
      ),
    ];
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: ltr ? children : children.reversed.toList(),
      ),
    );
  }
}
