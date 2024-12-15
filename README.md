
![Dart](https://img.shields.io/badge/Programming_Language-Dart-blue.svg) 
![Flutter](https://img.shields.io/badge/Software_Development_Kit(SDK)-Flutter-blue.svg)
![App](https://img.shields.io/badge/App-Android-blue.svg)
[![Min SDK](https://img.shields.io/badge/Min%20SDK-23%20[Android%206.0]-blue.svg)](https://github.com/AndroidSDKSources/android-sdk-sources-list)
[![Target SDK](https://img.shields.io/badge/Target%20SDK-33%20[Android%2013]-blue.svg)](https://developer.android.com/about/versions/12)


<img style="height: 110px;" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/firebase/firebase-original-wordmark.svg" alt="Built with Firebase" align="right"/>&nbsp;&nbsp;&nbsp;
<img style="height: 100px;" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/flutter/flutter-original.svg" alt="Built with Flutter" align="right"/>
<img style="height: 100px" src="https://github.com/user-attachments/assets/b9e4e08d-1c9e-438d-9d39-26219fe86bcc" alt="App Logo"/>



# End-to-End Encrypted Chat App (E2EE Chat App)

![E2EE Chat App Promotion](https://github.com/user-attachments/assets/fdb5b5c3-2ee7-4dbe-82f8-bd9f6c532197)



The End-to-End Encrypted Messaging Mobile App is built using Flutter and Firebase.

The End-to-End Encrypted Messaging Mobile App using the AES algorithm is a messaging platform that offers users the highest level of security and privacy. The app uses advanced encryption algorithms to scramble messages before they leave the sender's device and then unscramble them on the recipient's device. In today's digital age, the security of our personal information and communication has become increasingly important. With the rise of cyber threats and data breaches, many people are looking for ways to keep their messages and conversations private. This is where end-to-end encryption comes in. End-to-end encryption (E2EE) is a security protocol that ensures that only the sender and recipient of a message can read its contents. This means that no one else, including the app provider or third-party hackers, can access the information.

The End-to-End Encrypted Messaging Mobile App using the AES algorithm provides users with peace of mind, knowing that their conversations are secure and private. With this app, individuals and businesses can communicate confidential information without worrying about it being intercepted or compromised.

This app offers a secure, easy-to-use platform for sending messages and other media files like photos and videos, making it an essential tool for those who value their privacy and security.




## Features

<p style="display: flex; align-items: center; gap: 10px">
  <img src="https://github.com/user-attachments/assets/e7897f02-3b44-4175-8cc6-7280e2ca34d8" width="19%" alt="App Promo 1" />
  <img src="https://github.com/user-attachments/assets/78d01d8f-fac5-4bd6-9bcf-ea8790b09b9f" width="19%" alt="App Promo 2"/>
  <img src="https://github.com/user-attachments/assets/68c1e146-a744-4d30-b1d7-c5bea3b50399" width="19%" alt="App Promo 3" />
  <img src="https://github.com/user-attachments/assets/f259910b-5471-46cd-89f6-628bd284730e" width="19%" alt="App Promo 4"/>
  <img src="https://github.com/user-attachments/assets/d4892ce5-b544-4d22-ad54-ec112fbe232a" width="19%" alt="App Promo 5"/>
</p>


- Light/dark mode toggle
- Private and Secure
- End To End Encrypted using AES Algorithm
- Email Password Authentication
- Google Authentication
- Realtime Messaging
- Share Files, Images, Videos, etc..
- Delete your message for you or for everyone
- Realtime Notifications
- Add and Search users by username
- User Profile Management


## Technology


**Language:** Dart

**UI:** Material UI

**Firebase**
* Firebase Authentication
* Firestore Database
* Storage
* Firebase Cloud Messaging

**State Management:** Provider


**Other Components Used**
* Shared Preferences
* Encrypt
* SQLite
* Local Notification
* And Many More..(Check [`pubspec.yaml`](https://github.com/prabeshpudasaini/e2ee_chat/blob/main/pubspec.yaml) for more)



## Screenshots




<p style="display: flex; align-items: center; gap: 10px">
  <img src="https://github.com/user-attachments/assets/e05585ff-bcb3-40ac-af7b-2634d94ad1fe" width="30%" alt="Entry_Screen"/>
  
  <img src="https://github.com/user-attachments/assets/4681972c-73ab-4e4e-aab2-a5f080033a8e" width="30%" alt="Login_Screen" />
  <img src="https://github.com/user-attachments/assets/6da04f95-e658-4636-8855-984062a7cd1a" width="30%" alt="Signup_Screen"/>
  
  <img src="https://github.com/user-attachments/assets/d87988f0-7463-4e8b-beb5-b0f51eaae81f" width="30%" alt="Home_Screen_No_User"/>
  <img src="https://github.com/user-attachments/assets/df28efab-5ba6-4184-a8ae-ac4faddd3b03" width="30%" alt="Home_Screen_Light" />
  <img src="https://github.com/user-attachments/assets/6b68e0ce-ff90-4493-8d65-e76b7eadc025" width="30%" alt="Home_Screen_Dark"/>

  <img src="https://github.com/user-attachments/assets/940611a0-ab2a-44d1-ab7a-5bbc8c2ee513" width="30%" alt="Connection_Screen"/>
  <img src="https://github.com/user-attachments/assets/70c045ca-9870-4fac-a566-47b0dc847e70" width="30%" alt="Request_Sent_Screen"/>

  <img src="https://github.com/user-attachments/assets/dc461a9a-f026-4675-9cc7-79643de79bb7" width="30%" alt="Message_Screen_No_Message"/>
  <img src="https://github.com/user-attachments/assets/74cfc2d4-8bc0-4355-a138-1e7eeaf82f0b" width="30%" alt="Message_Screen"/>
  
  <img src="https://github.com/user-attachments/assets/a627d9cb-2385-409f-8436-7f3baf9225fe" width="30%" alt="Home_Screen_Message_Received"/>
  <img src="https://github.com/user-attachments/assets/11f8faa0-0adc-4bcf-9362-fa0bfef7c48a" width="30%" alt="Settings_Screen"/>

  
</p>



## Installation

1. Download or clone project and open the project in VS Code
2. Create Firebase Project
3. Enable Email/Password Authentication
4. Setup Firestore Database
5. Setup Storage
6. Set Firestore Rules
7. You can use FlutterFire to create a firebase project easily
8. Package encrypt is used in that project. See Documentation on pub.dev to know how to generate secret key. Put that secret key in lib/config/secret_data.dart file and also in .env file.
9. make a .env file at root of the project and add following:
- SUPPORT_MAIL=<"Provide mail for support">
- DATABASE_NAME=<"DB name for local database">
- topicToSubscribe=<"Topic to Subscribe for Cloud Messaging">
- serverKey=<"Server key for firebase cloud messaging">
- ENCRYPT_KEY=<"Encryption Key for message">
10. Run flutter get to download all dependencies
11. Connect your Android phone or use the emulator to start the application

## Feedback

If you have any feedback, please reach out to me at pudasainiprabesh56@gmail.com


## Support

Give a ⭐️ if you like this project!

## Contributing

Contributions are always welcome!



## License

This project is licensed under the MIT License. Feel free to use it as a starting point for your own projects!
