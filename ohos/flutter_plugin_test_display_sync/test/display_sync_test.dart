import 'package:flutter_test/flutter_test.dart';
import 'package:display_sync/display_sync.dart';
import 'package:display_sync/display_sync_platform_interface.dart';
import 'package:display_sync/display_sync_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDisplaySyncPlatform
    with MockPlatformInterfaceMixin
    implements DisplaySyncPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DisplaySyncPlatform initialPlatform = DisplaySyncPlatform.instance;

  test('$MethodChannelDisplaySync is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDisplaySync>());
  });

  test('getPlatformVersion', () async {
    DisplaySync displaySyncPlugin = DisplaySync();
    MockDisplaySyncPlatform fakePlatform = MockDisplaySyncPlatform();
    DisplaySyncPlatform.instance = fakePlatform;

    expect(await displaySyncPlugin.getPlatformVersion(), '42');
  });
}
