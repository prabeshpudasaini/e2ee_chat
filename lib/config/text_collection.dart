import 'package:e2ee_chat/config/time_collection.dart';
import 'package:e2ee_chat/services/debugging.dart';
import 'package:e2ee_chat/services/local_data_management.dart';

class AppText {
  static const String appName = "E2EE_Chat";
  static const String activityHeading = "Activities";
  static const String messagesHeading = "Messages";
  static const String fontFamily = 'Poppins';
}

class DirectoryName {
  static const String voiceRecordDir = "recordings";
  static const String imageDir = "images";
  static const String videoDir = "videos";
  static const String docDir = "documents";
  static const String thumbnailDir = "thumbnails";
  static const String wallpaperDir = "wallpaperDir";
  static const String chatHistoryDir = 'chatHistoryDir';
}

class MessageData {
  static const String type = "type";
  static const String holder = "holder";
  static const String message = "message";
  static const String date = "date";
  static const String time = "time";
  static const String additionalData = "additionalData";
}

class PhoneNumberData {
  static const String number = "number";
  static const String name = "name";
  static const String numberLabel = "label";
}

class EnvFileKey {
  static const supportMail = "SUPPORT_MAIL";
  static const dbName = "DATABASE_NAME";
  static const firebaseMessagingTopic = "topicToSubscribe";
  static const serverKey = "serverKey";
  static const encryptKey = "ENCRYPT_KEY";
}

class DbData {
  static const currUserTable = "__currentUserEncryptedData__";
  static const connectionsTable = "__connectionsEncryptedData__";
  static const chatTable = "__chatEncryptedData__";
  static const myActivityTable = "__myActivityEncryptedData__";
}

class FolderData {
  static const dbFolder = ".Databases";
}

class TextCollection {
  static const String appLink = " ";
  static const String appWebsiteLink = " ";
  static const String appCreator = "Prabesh Pudasaini";
  static const String appShareData = " ";
  static const String videoDurationAlert =
      "Video duration should be within ${Timings.videoDurationInSec} seconds";
  static const String myWebsite = ' ';
  static const String removeYou = "removed you";
}

class NotifyManagement {
  static const String sendNotificationUrl =
      'https://fcm.googleapis.com/fcm/send';

  static sendNotificationHeader(_serverKey) {
    return <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'key=$_serverKey',
    };
  }

  static bodyData(
      {required String title,
      required String body,
      required String deviceToken,
      String? image,
      required String connId}) {
    final _notifyBody = <String, dynamic>{
      'notification': <String, dynamic>{
        'body': body,
        'title': title,
        "android_channel_id": "high_importance_channel",
        "sound": "default",
        "priority": "high",
        "click_action": "FLUTTER_NOTIFICATION_CLICK",
      },
      'priority': 'high',
      'data': <String, dynamic>{
        'click_action': 'FLUTTER_NOTIFICATION_CLICK',
        'id': '1',
        'status': 'done',
        "collapse_key": "type_a",
        "sound": "default",
        "connId": connId,
      },
      'to': deviceToken,
    };

    if (image != null) {
      _notifyBody['notification']['image'] = image;
      _notifyBody['data']['image'] = image;
    }

    debugShow('Notify body data: $_notifyBody');

    return DataManagement.toJsonString(_notifyBody);
  }
}
