import 'dart:async';
import 'dart:developer';

import 'package:eqdashboard/core/provider/ntp/ntp_config_model.dart';
import 'package:eqdashboard/core/provider/ntp/ntp_config_provider.dart';
import 'package:eqdashboard/core/provider/ntp/ntp_state_model.dart';
import 'package:flutter/foundation.dart';
import 'package:ntp/ntp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ntp_provider.g.dart';

@Riverpod(keepAlive: true)
class Ntp extends _$Ntp {
  @override
  NtpStateModel build() {
    final config = ref.watch(ntpConfigProvider);
    final interval = config.interval;

    final timer = Timer.periodic(
      interval,
      (_) async {
        await sync();
      },
    );
    ref.onDispose(timer.cancel);

    return const NtpStateModel();
  }

  Future<void> sync() async {
    final config = ref.read(ntpConfigProvider);
    final int offset;
    if (kIsWeb) {
      offset = await NTP.getNtpOffset(
        lookUpAddress: config.lookUpAddress,
        timeout: config.timeout,
      );
    } else {
      offset = await compute<NtpConfigModel, int>(
        (config) => NTP.getNtpOffset(
          lookUpAddress: config.lookUpAddress,
          timeout: config.timeout,
        ),
        config,
      );
    }

    state = state.copyWith(
      offset: offset,
      updatedAt: DateTime.now(),
    );
    log('NTP sync: $offset');
  }

  DateTime? now() {
    final offset = state.offset;
    if (offset == null) {
      return null;
    }
    final localTime = DateTime.now();
    return localTime.add(Duration(milliseconds: offset));
  }
}
