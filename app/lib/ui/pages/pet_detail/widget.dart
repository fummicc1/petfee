import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:petfee/ui/pages/add_feed/controller.dart';
import 'package:petfee/utils/datetime.dart';
import '/domain/entities/pet.dart';
import 'controller.dart';
import 'state.dart';
import '/ui/pages/add_feed/widget.dart';

class PetDetailPage extends ConsumerWidget {
  const PetDetailPage({Key? key, required this.pet}) : super(key: key);

  static const pageName = "/pet_detail_page";
  final Pet pet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PetDetailState state = ref.watch(petDetailController(pet));
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool isTablet = shortestSide >= 600;
    return Scaffold(
      appBar: AppBar(
        title: Text(state.pet.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CalendarCarousel<Event>(
                locale: "JA",
                dayButtonColor: Theme.of(context).cardColor,
                onDayPressed: (pSelectedDateTime, events) {
                  final selectedDateTime = pSelectedDateTime.dropTime;
                  final currentSelectedDate =
                      ref.watch(petDetailController(pet)).selectedDate;
                  if (currentSelectedDate == selectedDateTime) {
                    showAddFeedPage(context, pet, selectedDateTime);
                  } else {
                    ref
                        .read(petDetailController(pet).notifier)
                        .updateSelectedDate(selectedDateTime);
                  }
                },
                pageScrollPhysics: const PageScrollPhysics(),
                weekdayTextStyle: Theme.of(context).textTheme.bodyText1,
                headerTextStyle: Theme.of(context).textTheme.headline6,
                weekFormat: false,
                height:
                    MediaQuery.of(context).size.height * (isTablet ? 0.7 : 0.5),
                todayBorderColor: Colors.transparent,
                todayButtonColor: Colors.brown,
                maxSelectedDate: DateTime.now(),
                selectedDayButtonColor: Theme.of(context).colorScheme.secondary,
                showOnlyCurrentMonthDate: true,
                showHeaderButton: false,
                selectedDateTime: state.selectedDate,
                selectedDayBorderColor: Colors.transparent,
                iconColor: Colors.white,
                daysTextStyle: const TextStyle(color: Colors.white),
                daysHaveCircularBorder: false,
                markedDatesMap: state.calendarEventList,
                customGridViewPhysics: const NeverScrollableScrollPhysics(),
                markedDateShowIcon: true,
                markedDateIconMaxShown: 1,
                markedDateIconBuilder: (event) {
                  return event.icon;
                },
                markedDateMoreShowTotal: true,
              ),
              const SizedBox(height: 24),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DefaultTextStyle(
                    style: Theme.of(context).textTheme.titleMedium!,
                    child: Row(
                      children: [
                        const Text("1?????????????????????: "),
                        Text("${state.pet.numberOfFeedTimesPerDay}???"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DefaultTextStyle(
                          style: Theme.of(context).textTheme.titleMedium!,
                          child: const Text("???????????????"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          direction: Axis.horizontal,
                          children: List.generate(
                              max(state.pet.numberOfFeedTimesPerDay,
                                  state.feedsForSelectedDate.length),
                              (index) => index + 1).map((i) {
                            if (i > state.feedsForSelectedDate.length) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                      "$i / ${state.pet.numberOfFeedTimesPerDay} ?????????"),
                                ),
                              );
                            } else {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(Icons.check),
                                      Text(
                                          "$i / ${state.pet.numberOfFeedTimesPerDay} ??????")
                                    ],
                                  ),
                                ),
                              );
                            }
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton.extended(
          onPressed: () {
            showAddFeedPage(context, pet, state.selectedDate);
          },
          label: const Text("?????????????????????"),
          icon: const Icon(Icons.note_outlined),
        ),
      ),
    );
  }

  showAddFeedPage(BuildContext context, Pet pet, DateTime initialSelectedDate) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return AddFeedPage(
            input: AddFeedConrollerInput(
              pet,
              initialSelectedDate,
            ),
          );
        },
        settings: const RouteSettings(name: AddFeedPage.pageName),
        fullscreenDialog: true,
      ),
    );
  }
}
