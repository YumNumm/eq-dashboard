import 'package:eqdashboard/core/provider/ntp/ntp_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'time_ticker.g.dart';

@Riverpod(keepAlive: true)
Stream<DateTime> timeTicker(Ref ref) =>
    Stream.periodic(const Duration(seconds: 1), (_) => DateTime.now());

@Riverpod(keepAlive: true)
Stream<DateTime> ntpTimeTicker(Ref ref) => Stream.periodic(
      const Duration(seconds: 1),
      (_) => ref.read(ntpProvider.notifier).now() ?? DateTime.now(),
    );
