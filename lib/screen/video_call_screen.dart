import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  String userId = DateTime.now().millisecondsSinceEpoch.toString();

  /// -> Your user ID
  String userName = DateTime.now().toString();

  /// -> Your user ID
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 1316628172,
      appSign:
      "d6e9eaf4f2988c5745f6cc9492d578bef6cf9c936eebf6aa21d695e22340fe79",
      userID: userId,
      userName: userName,
      callID: "this_is_a_test_call",
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
