import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'display_sync_platform_interface.dart';

/// An implementation of [DisplaySyncPlatform] that uses method channels.
class MethodChannelDisplaySync extends DisplaySyncPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('display_sync');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
