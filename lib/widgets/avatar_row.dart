import 'package:flutter/material.dart';

class AvatarRow extends StatelessWidget {
  const AvatarRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
          5,
          (index) => Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade400,
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  "https://source.unsplash.com/random/300x20$index",
                  fit: BoxFit.cover,
                ),
              )),
    );
  }
}
