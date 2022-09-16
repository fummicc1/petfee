import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:petfee/domain/entities/feed.dart';
import 'package:petfee/domain/entities/pet.dart';
import 'package:petfee/domain/repositories/auth/repository.dart';
import 'package:petfee/domain/repositories/feed/repository.dart';
import 'state.dart';

class AddFeedController extends StateNotifier<AddFeedState> {
  AddFeedController(
    AddFeedState state,
    this._authRepository,
    this._feedRepository,
  ) : super(state);

  final AuthRepository _authRepository;
  final FeedRepository _feedRepository;

  updateFeededat(DateTime newValue) {
    state = state.copyWith(feededAt: newValue);
  }

  String feededAtText() {
    final DateFormat formatter;
    final year = state.feededAt.year;
    final sameYear = year == (DateTime.now().year);
    if (sameYear) {
      formatter = DateFormat("MM/dd");
    } else {
      formatter = DateFormat("yyyy/MM/dd");
    }
    return formatter.format(state.feededAt);
  }

  Future commit() async {
    final now = DateTime.now();
    final pet = state.pet;
    final petID = pet.petID;
    final userID = await _authRepository.userID;
    final feed = Feed(
      // TODO: Modify FeedRepository#saveNewFeed
      //  to create feed without id.
      feedID: const FeedID(""),
      date: state.feededAt,
      petID: petID,
      feederID: userID,
      createdAt: now,
      updatedAt: now,
    );
    await _feedRepository.saveNewFeed(
      userID: userID,
      pet: pet,
      feed: feed,
    );
  }
}

class AddFeedConrollerInput {
  final Pet pet;
  final DateTime initialDate;

  AddFeedConrollerInput(this.pet, this.initialDate);
}

final addFeedController = StateNotifierProvider.family<AddFeedController,
    AddFeedState, AddFeedConrollerInput>((ref, input) {
  final state = AddFeedState(
    pet: input.pet,
    feededAt: input.initialDate,
  );
  final auth = ref.watch(authRepositoryProvider);
  final feed = ref.watch(feedRepositoryProvider);
  return AddFeedController(
    state,
    auth,
    feed,
  );
});
