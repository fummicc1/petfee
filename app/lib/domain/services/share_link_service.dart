import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/domain/entities/pet.dart';
import '../../ui/pages/pet_group/join_group/widget.dart';

mixin ShareLinkService {
  Future<String> generateSharingPetLink(Pet pet);
}

class ShareLinkServiceImpl with ShareLinkService {
  final FirebaseDynamicLinks _dynamicLinks = FirebaseDynamicLinks.instance;

  @override
  Future<String> generateSharingPetLink(Pet pet) async {
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: 'https://petfee.page.link',
      link: Uri.parse(
          'https://github.com/fummicc1/petfee${JoinPetGroupPage.pageName}?pet_id=${pet.petID.value}'),
      androidParameters: const AndroidParameters(
        packageName: 'dev.fummicc1.petfee',
        minimumVersion: 1,
      ),
      iosParameters: const IOSParameters(
        bundleId: 'dev.fummicc1.petfee',
        minimumVersion: '1.0.0',
        appStoreId: '1586526783',
      ),
      socialMetaTagParameters: SocialMetaTagParameters(
        title: '${pet.name}のシェアがリクエストされました',
        description: 'このURLを開くと${pet.name}のシェアに参加できます',
      ),
    );
    final uri = await _dynamicLinks.buildShortLink(parameters);
    return uri.shortUrl.toString();
  }
}

final shareLinkServiceProvider = Provider((ref) => ShareLinkServiceImpl());
