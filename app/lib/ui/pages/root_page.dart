import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petfee/domain/entities/pet.dart';
import 'package:petfee/domain/exceptions/auth.dart';
import 'package:petfee/domain/repositories/auth/repository.dart';
import 'package:petfee/domain/repositories/pet/repository.dart';

import '/ui/pages/pet_list/widget.dart';
import 'add_new_pet/widget.dart';
import 'pet_group/join_group/widget.dart';

class RootPage extends ConsumerStatefulWidget {
  const RootPage({super.key});

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
    return FutureBuilder<Stream<List<Pet>>>(
        future: initialFuture(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          return StreamBuilder<List<Pet>>(
            stream: snapshot.requireData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.requireData.isNotEmpty) {
                  return const PetListPage();
                }
              }
              return const InputNewPetInfoPage(canBack: false);
            },
          );
        });
  }

  Future<Stream<List<Pet>>> initialFuture() async {
    try {
      final AuthRepository authRepository =
          ref.watch(authRepositoryProvider.notifier);
      if (!authRepository.isLoggedIn) {
        await authRepository.loginAnonymously();
      }
      final userID = ref.watch(authRepositoryProvider)?.userID;
      if (userID == null) {
        return const Stream.empty();
      }
      final petRepository = ref.watch(petRepositoryProvider.notifier);
      return petRepository.petListSnapshot(userID: userID);
    } on AuthException catch (e) {
      if (e == AuthException.notLoggedIn()) {
        await ref.watch(authRepositoryProvider.notifier).loginAnonymously();
        final userID = ref.watch(authRepositoryProvider)?.userID;
        final petRepository = ref.watch(petRepositoryProvider.notifier);
        if (userID != null) {
          return petRepository.petListSnapshot(userID: userID);
        }
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
        final pet = await ref.watch(petRepositoryProvider.notifier).fetchSingle(
              petID: PetID(petID),
            );
        // ignore: use_build_context_synchronously
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
