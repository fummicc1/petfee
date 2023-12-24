import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fcm.g.dart';

@Riverpod(keepAlive: true)
FirebaseMessaging fcm(Ref ref) => FirebaseMessaging.instance;
