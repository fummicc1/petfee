import 'package:flutter/material.dart';
import '/domain/entities/pet.dart';
import '/ui/components/avatar_view.dart';

class PetCard extends StatelessWidget {
  const PetCard({
    Key? key,
    required this.pet,
    required this.onTap,
  }) : super(key: key);

  final Pet pet;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: SizedBox(
          height: 80,
          child: Card(
            child: Row(
              children: [
                const SizedBox(
                  width: 12,
                ),
                AvatarView(
                    avatar: pet.avatarURL == null
                        ? null
                        : NetworkImage(pet.avatarURL!),
                    length: 40),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      pet.name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
