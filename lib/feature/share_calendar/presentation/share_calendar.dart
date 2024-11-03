import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../config/theme/theme_extension.dart';
import '../../user/user_provider.dart';
import 'anniversary_list.dart';
import 'member_list.dart';

class ShareCalendarPage extends ConsumerWidget {
  const ShareCalendarPage({super.key});

  static const String name = 'share_calendar';
  static const String path = '/share_calendar';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProviderAsync = ref.watch(userProvider);
    final appColors = Theme.of(context).appColors;
    final appTextStyles = Theme.of(context).appTextStyles;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: userProviderAsync.when(
            data: (data) {
              return Text(
                data.roomName ?? '',
              );
            },
            error: (error, stackTrace) => Text('Error: $error'),
            loading: () => const Text('Loading...'),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Text(MemberList.title),
              ),
              Tab(
                icon: Text(AnniversaryList.title),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: MemberList(),
            ),
            Center(
              child: AnniversaryList(),
            ),
          ],
        ),
      ),
    );
  }
}
