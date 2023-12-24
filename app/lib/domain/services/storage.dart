import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'storage.g.dart';

@Riverpod(keepAlive: true)
FirebaseFirestore storage(Ref ref) {
  return FirebaseFirestore.instance;
}
