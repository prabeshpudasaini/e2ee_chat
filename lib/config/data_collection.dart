class SliderData {
  static List<dynamic> content = [
    {
      "title": "Welcome To E2EE_Chat ",
      "subtitle":
          "A Private, Secure, End-to-End Encrypted Messaging app that helps you to connect with your friends. No other third party person, organization, or even E2EE_Chat Team can't read your messages.",
    },
    {
      "title": "Communicate With Security",
      "subtitle":
          "Chat Messages are End-to-End-Encrypted. No-other third party app or E2EE_Chat Team can't read your messages.",
    },
    {
      "title": "Connect With Protection",
      "subtitle":
          "Get Connected with send and accept request. No fear of experiencing random incoming spamming messages.",
    },
    {
      "title": "Enjoy Free Messaging",
      "subtitle":
          "Send Text, Image, Voice, Video, Document and Audio Messages to your favourite one",
    },
  ];
}

class BgTask {
  static const String deleteOwnActivity = "deleteOwnActivity";
  static const String deleteConnectionsActivity = "deleteConnectionsActivity";

  static Map<String, String> deleteOwnActivityData = <String, String>{
    'task': deleteOwnActivity,
    'taskId': '1',
    'initialDelayInSec': '10',
    'frequencyInMin': '15',
  };

  static Map<String, String> deleteConnectionActivities = <String, String>{
    'task': deleteConnectionsActivity,
    'taskId': '2',
    'initialDelayInSec': '30',
    'frequencyInMin': '15',
  };
}
