import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'talker.g.dart';

@Riverpod(keepAlive: true)
Talker talker(Ref ref) => TalkerFlutter.init(
      settings: TalkerSettings(),
    );

@Riverpod(keepAlive: true)
TalkerLogger talkerLogger(Ref ref) {
  return TalkerLogger();
}
