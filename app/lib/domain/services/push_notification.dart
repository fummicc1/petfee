import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:petfee/domain/services/fcm.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "push_notification.g.dart";

onReceivePushNotificationMessage(Function(RemoteMessage) handler) {
  FirebaseMessaging.onMessage.listen((remoteNotification) {
    handler(remoteNotification);
  });
  FirebaseMessaging.onBackgroundMessage((remoteNotification) async {
    handler(remoteNotification);
  });
}

@Riverpod(keepAlive: true)
class PushNotificationClient extends _$PushNotificationClient {
  @override
  void build() {}

  Future<bool> get isNotificationAuthorized async {
    final settings = await ref.watch(fcmProvider).getNotificationSettings();
    return settings.authorizationStatus == AuthorizationStatus.authorized;
  }

  Future<bool> requestPermission() async {
    final NotificationSettings settings =
        await ref.watch(fcmProvider).requestPermission(
              alert: true,
              announcement: false,
              badge: true,
              carPlay: false,
              criticalAlert: false,
              provisional: false,
              sound: true,
            );

    return settings.authorizationStatus == AuthorizationStatus.authorized;
  }

  Future<String?> getToken() => ref.watch(fcmProvider).getToken();

  Future subscribeTopic(String topic) async {
    await ref.watch(fcmProvider).subscribeToTopic(topic);
  }

  Future unSubscribeTopic(String topic) async {
    await ref.watch(fcmProvider).unsubscribeFromTopic(topic);
  }
}
