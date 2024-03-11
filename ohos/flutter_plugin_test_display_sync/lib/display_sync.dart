
import 'display_sync_platform_interface.dart';

class DisplaySync {
  Future<String?> getPlatformVersion() {
    return DisplaySyncPlatform.instance.getPlatformVersion();
  }
}
