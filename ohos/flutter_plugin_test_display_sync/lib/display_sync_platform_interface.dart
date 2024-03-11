import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'display_sync_method_channel.dart';

abstract class DisplaySyncPlatform extends PlatformInterface {
  /// Constructs a DisplaySyncPlatform.
  DisplaySyncPlatform() : super(token: _token);

  static final Object _token = Object();

  static DisplaySyncPlatform _instance = MethodChannelDisplaySync();

  /// The default instance of [DisplaySyncPlatform] to use.
  ///
  /// Defaults to [MethodChannelDisplaySync].
  static DisplaySyncPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DisplaySyncPlatform] when
  /// they register themselves.
  static set instance(DisplaySyncPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
