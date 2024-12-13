import 'package:app_links/app_links.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_links.g.dart';

@Riverpod(keepAlive: true)
AppLinks appLinks(Ref ref) => AppLinks();

@Riverpod(keepAlive: true)
Future<Uri?> getInitialLink(Ref ref) async {
  final appLinks = ref.watch(appLinksProvider);
  return await appLinks.getInitialLink();
}

@Riverpod(keepAlive: true)
Stream<Uri?> appLinksStream(Ref ref) async* {
  final appLinks = ref.watch(appLinksProvider);
  yield await appLinks.getInitialLink();
  yield* appLinks.uriLinkStream;
}
