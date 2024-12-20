import 'package:flutter/material.dart';
import 'package:e2ee_chat/services/native_operations.dart';
import 'package:e2ee_chat/services/toast_message_show.dart';

class NetworkManagementProvider extends ChangeNotifier {
  final NativeCallback _nativeCallback = NativeCallback();

  Future<bool> get isNetworkActive async =>
      await _nativeCallback.checkInternet();

  noNetworkMsg(BuildContext context,
          {bool showFromTop = true, bool? showCenterToast}) =>
      ToastMsg.showErrorToast('Network not available', context: context);
}
