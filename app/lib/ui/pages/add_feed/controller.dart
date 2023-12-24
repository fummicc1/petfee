import 'package:intl/intl.dart';
import 'package:petfee/domain/entities/feed.dart';
import 'package:petfee/domain/entities/pet.dart';
import 'package:petfee/domain/repositories/auth/repository.dart';
import 'package:petfee/domain/repositories/feed/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'state.dart';

part 'controller.g.dart';

class AddFeedControllerInput {
  final Pet pet;
  final DateTime initialDate;

  AddFeedControllerInput(this.pet, this.initialDate);
}

@Riverpod(dependencies: [AuthRepository, FeedRepository])
class AddFeedController extends _$AddFeedController {
  @override
  AddFeedState build({
    required AddFeedControllerInput input,
  }) =>
      AddFeedState(
        pet: input.pet,
        fedAt: input.initialDate,
      );

  updateFedAt(DateTime newValue) {
    state = state.copyWith(fedAt: newValue);
  }

  String getFedAtText() {
    final DateFormat formatter;
    final year = state.fedAt.year;
    final sameYear = year == (DateTime.now().year);
    if (sameYear) {
      formatter = DateFormat("MM/dd");
    } else {
      formatter = DateFormat("yyyy/MM/dd");
    }
    return formatter.format(state.fedAt);
  }

  Future commit() async {
    final user = ref.watch(authRepositoryProvider);
    if (user == null) {
      return;
    }
    final now = DateTime.now();
    final pet = state.pet;
    final petID = pet.petID;
    final userID = user.userID;
    final feed = Feed(
      // TODO: Modify FeedRepository#create
      //  to create feed without id.
      feedID: const FeedID(""),
      date: state.fedAt,
      petID: petID,
      feederID: userID,
      createdAt: now,
      updatedAt: now,
    );
    await ref.watch(FeedRepositoryProvider(pet).notifier).create(
          userID: userID,
          pet: pet,
          feed: feed,
        );
  }
}
