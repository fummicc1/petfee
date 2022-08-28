import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '/domain/entities/pet.dart';
import '/riverpod/pet_detail/controller.dart';
import '/riverpod/pet_detail/state.dart';
import '/ui/pages/add_feed/widget.dart';

class PetDetailPage extends ConsumerWidget {
  const PetDetailPage({Key? key, required this.pet}) : super(key: key);

  static const pageName = "/pet_detail_page";
  final Pet pet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PetDetailState state = ref.watch(petDetailController(pet));
    return Scaffold(
      appBar: AppBar(
        title: Text(state.pet.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CalendarCarousel<Event>(
                  locale: "JA",
                  dayButtonColor: Theme.of(context).cardColor,
                  onDayPressed: (selectedDateTime, events) {
                    ref
                        .read(petDetailController(pet).notifier)
                        .updateSelectedDate(selectedDateTime);
                  },
                  pageScrollPhysics: const PageScrollPhysics(),
                  weekdayTextStyle: Theme.of(context).textTheme.bodyText1,
                  headerTextStyle: Theme.of(context).textTheme.headline6,
                  weekFormat: false,
                  height: MediaQuery.of(context).size.height * 0.7,
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
                state.feedsForSelectedDate.isNotEmpty
                    ? CircularPercentIndicator(
                        radius: 96,
                        percent: state.feedCompletionPercentage,
                        lineWidth: 16,
                        center: Text(
                          "${state.feedsForSelectedDate.length}/${state.pet.numberOfFeedTimesPerDay}回達成！",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      )
                    : const Center(child: Text("この日の餌の記録が見つかりませんでした")),
                const SizedBox(
                  height: 80,
                ),
              ],
            )),
      ),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return AddFeedPage(pet: pet);
                },
                settings: const RouteSettings(name: AddFeedPage.pageName),
                fullscreenDialog: true,
              ),
            );
          },
          label: const Text("餌の記録を作る"),
          icon: const Icon(Icons.note_outlined),
        ),
      ),
    );
  }
}
