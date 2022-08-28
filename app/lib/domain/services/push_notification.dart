import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class PushNotificationClient {
  Future<bool> requestPermission();

  Future<bool> get isNotificationAuthorized;

  Future<String?> getToken();

  Future subscribeTopic(String topic);

  Future unSubscribeTopic(String topic);
}

onReceivePushNotificationMessage(Function(RemoteMessage) handler) {
  FirebaseMessaging.onMessage.listen((remoteNotification) {
    handler(remoteNotification);
  });
  FirebaseMessaging.onBackgroundMessage((remoteNotification) async {
    handler(remoteNotification);
  });
}

class FirebasePushNotificationClient implements PushNotificationClient {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  static final shared = FirebasePushNotificationClient();

  @override
  Future<bool> get isNotificationAuthorized async {
    final settings = await _messaging.getNotificationSettings();
    return settings.authorizationStatus == AuthorizationStatus.authorized;
  }

  @override
  Future<bool> requestPermission() async {
    final NotificationSettings settings = await _messaging.requestPermission(
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

  @override
  Future<String?> getToken() => _messaging.getToken();

  @override
  Future subscribeTopic(String topic) async {
    await _messaging.subscribeToTopic(topic);
  }

  @override
  Future unSubscribeTopic(String topic) async {
    await _messaging.unsubscribeFromTopic(topic);
  }
}

final Provider<PushNotificationClient> pushNotificationProvider = Provider(
  (ref) => FirebasePushNotificationClient(),
);
