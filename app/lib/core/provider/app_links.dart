import 'package:app_links/app_links.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_links.g.dart';

@Riverpod(keepAlive: true)
AppLinks appLinks(Ref ref) => AppLinks();
