import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petfee/domain/entities/pet.dart';
import 'package:petfee/domain/exceptions/auth.dart';
import 'package:petfee/domain/repositories/auth/repository.dart';
import 'package:petfee/domain/repositories/pet/repository.dart';
import '/ui/pages/add_new_pet/pet_info/widget.dart';
import '/ui/pages/pet_group/join_pet_group.dart';
import '/ui/pages/pet_list/pet_list_page.dart';

class RootPage extends ConsumerStatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  static const pageName = "/root_page";

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends ConsumerState<RootPage> {
  @override
  void initState() {
    super.initState();
    initDynamicLinks();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
        future: initialFuture(),
        builder: (context, snapshot) {
          final hasPet = snapshot.hasData && snapshot.requireData.isNotEmpty;
          if (hasPet) {
            return const PetListPage();
          } else {
            return const InputNewPetInfoPage(canBack: false);
          }
        });
  }

  Future<List> initialFuture() async {
    try {
      final AuthRepository authRepository = ref.watch(authRepositoryProvider);
      if (!authRepository.isLoggedIn) {
        await authRepository.loginAnonymously();
      }
      final userID = await ref.watch(authRepositoryProvider).userID;
      return ref.watch(petRepositoryProvider).fetchPetList(userID: userID);
    } on AuthException catch (e) {
      if (e == AuthException.notLoggedIn()) {
        await ref.read(authRepositoryProvider).loginAnonymously();
        final userID = await ref.read(authRepositoryProvider).userID;
        return ref.watch(petRepositoryProvider).fetchPetList(userID: userID);
      }
    }
    throw UnimplementedError();
  }

  void initDynamicLinks() async {
    FirebaseDynamicLinks.instance.onLink.handleError((err) {
      if (kDebugMode) {
        print(err);
      }
    }).listen((dynamicLink) async {
      final Uri deepLink = dynamicLink.link;
      await _handleDeeplink(deepLink);
    });

    final PendingDynamicLinkData? data =
        await FirebaseDynamicLinks.instance.getInitialLink();
    final Uri? deepLink = data?.link;

    if (deepLink != null) {
      await _handleDeeplink(deepLink);
    }
  }

  _handleDeeplink(Uri deepLink) async {
    final destination = deepLink.pathSegments.last;
    if (destination == JoinPetGroupPage.pageName.replaceAll("/", "")) {
      final petID = deepLink.queryParameters["pet_id"] ?? "";
      if (petID.isNotEmpty) {
        final pet =
            await PetRepositoryImpl.shared.fetchSingle(petID: PetID(petID));
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return JoinPetGroupPage(pet: pet);
            },
            settings: const RouteSettings(name: JoinPetGroupPage.pageName),
            fullscreenDialog: true,
          ),
        );
      }
    }
  }
}
