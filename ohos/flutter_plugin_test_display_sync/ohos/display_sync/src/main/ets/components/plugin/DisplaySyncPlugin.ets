import displaySync from '@ohos.graphics.displaySync';
import { FlutterPlugin, FlutterPluginBinding } from '@ohos/flutter_ohos/src/main/ets/embedding/engine/plugins/FlutterPlugin';
import Log from '@ohos/flutter_ohos/src/main/ets/util/Log';
import MethodChannel, { MethodCallHandler, MethodResult } from '@ohos/flutter_ohos/src/main/ets/plugin/common/MethodChannel';
import MethodCall from '@ohos/flutter_ohos/src/main/ets/plugin/common/MethodCall';

/** DisplaySyncPlugin **/
const TAG = "DisplaySyncPlugin";

export default class DisplaySyncPlugin implements FlutterPlugin, MethodCallHandler {
  private channel: MethodChannel | null = null;
  private backDisplaySync: displaySync.DisplaySync | null = null;


  constructor() {
  }

  getUniqueClassName(): string {
    return "DisplaySyncPlugin"
  }

  onAttachedToEngine(binding: FlutterPluginBinding): void {
    Log.i(TAG, "#onAttachedToEngine");
    this.channel = new MethodChannel(binding.getBinaryMessenger(), "display_sync");
    this.channel.setMethodCallHandler(this);

    let callback = (frameInfo: displaySync.IntervalInfo) => {
        console.info("DisplaySync", 'TimeStamp:' + frameInfo.timestamp + ' TargetTimeStamp: ' + frameInfo.targetTimestamp);
        Log.i(TAG, "#callback ~~~");
    }

    this.backDisplaySync = displaySync.create();
    Log.i(TAG, "#onAttachedToEngine: backDisplaySync=" + this.backDisplaySync.toString());

    this.backDisplaySync?.on("frame", callback);
    this.backDisplaySync?.start();
  }

  onDetachedFromEngine(binding: FlutterPluginBinding): void {
    Log.i(TAG, "#onDetachedFromEngine");
    if (this.channel != null) {
      this.channel.setMethodCallHandler(null)
    }
    this.backDisplaySync?.stop();
    this.backDisplaySync = null;
  }

  onMethodCall(call: MethodCall, result: MethodResult): void {
    Log.i(TAG, "#onMethodCall: " + call.method);
    if (call.method == "getPlatformVersion") {
      result.success("OpenHarmony ^ ^ ")
    } else {
      result.notImplemented()
    }
  }
}