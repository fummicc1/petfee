import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/domain/entities/pet.dart';
import '/domain/services/share_link_service.dart';
import '/ui/components/avatar_view.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SharePetPage extends ConsumerWidget {
  const SharePetPage({
    Key? key,
    required this.pet,
  }) : super(key: key);

  final Pet pet;

  static const pageName = "/share_pet_page";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shareLinkService = ref.watch(shareLinkServiceProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("${pet.name}をシェア"),
      ),
      body: FutureBuilder<String>(
        future: shareLinkService.generateSharingPetLink(pet),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          }
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final String link = snapshot.requireData;
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Center(
                    child: Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    AvatarView(
                        avatar: pet.avatarURL == null
                            ? null
                            : NetworkImage(pet.avatarURL!),
                        length: 120),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () async {
                          final data = ClipboardData(
                            text: link,
                          );
                          await Clipboard.setData(data);
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("共有リンクをコピーしました"),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            link,
                            style: Theme.of(context)
                                .textTheme
                                .button
                                ?.copyWith(color: Colors.brown),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    QrImage(
                      data: link,
                      version: QrVersions.auto,
                      size: 200,
                      embeddedImage:
                          const AssetImage("assets/icon/icon_transparent.png"),
                      semanticsLabel: pet.name,
                      foregroundColor: Colors.white,
                      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ))
              ],
            ),
          );
        }
      ),
    );
  }
}
