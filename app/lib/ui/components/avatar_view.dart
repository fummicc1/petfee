import 'package:flutter/material.dart';

class AvatarView extends StatelessWidget {
  const AvatarView({
    Key? key,
    required this.avatar,
    required this.length,
    this.padding = 8,
  }) : super(key: key);

  final ImageProvider? avatar;
  final double length;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: length + padding * 2,
          height: length + padding * 2,
          decoration: const BoxDecoration(
            color: Colors.brown,
            shape: BoxShape.circle,
          ),
        ),
        Positioned(
          top: padding,
          left: padding,
          width: length,
          height: length,
          child: avatar == null
              ? Container(
                  decoration: BoxDecoration(
                    color: Colors.brown.shade600,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.photo,
                    size: length / 2 + padding,
                  ),
                )
              : Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: avatar!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
        )
      ],
    );
  }
}
