import 'package:eqdashboard/core/provider/talker.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:talker_flutter/talker_flutter.dart';

class LogSettingsRoute extends GoRouteData {
  const LogSettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Consumer(
      builder: (context, ref, child) {
        final talker = ref.watch(talkerProvider);
        return SafeArea(
          top: false,
          child: TalkerScreen(
            talker: talker,
          ),
        );
      },
    );
  }
}
