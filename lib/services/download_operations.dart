import 'package:dio/dio.dart';
import 'package:e2ee_chat/services/directory_management.dart';


class DownloadOperations {
  final Dio _dio = Dio();

  Future<String> downloadWallpaper(String url) async {
    final _dirPath = await createWallpaperStoreDir();
    final _wallpaperStorePath = createWallpaperFile(dirPath: _dirPath);

    await _dio.download(url, _wallpaperStorePath);

    return _wallpaperStorePath;
  }
}

// updatee2ee_chat(context) async {
//   _onAppUpdate() {
//     try {
//       launchUrl(Uri.parse(TextCollection.appLink));
//     } catch (e) {
//       debugShow('Error in Opening: $e');
//     }
//   }

//   try {
//     final newVersion = NewVersionPlus();

//     final status = await newVersion.getVersionStatus();
//     if (status == null) return;

//     debugShow(status.releaseNotes);
//     debugShow(status.appStoreLink);
//     debugShow(status.localVersion);
//     debugShow(status.storeVersion);
//     debugShow(status.canUpdate.toString());

//     Provider.of<MainScreenNavigationProvider>(context, listen: false)
//         .setLocalVersion(status.localVersion);

//     if (!status.canUpdate) return;

//     final _isDarkMode =
//         Provider.of<ThemeProvider>(context, listen: false).isDarkTheme();

//     showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//               insetPadding:
//                   const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
//               backgroundColor: AppColors.popUpBgColor(_isDarkMode),
//               title: Text(
//                 'Update e2ee_chat',
//                 style: TextStyleCollection.secondaryHeadingTextStyle.copyWith(
//                     fontSize: 18, color: AppColors.popUpTextColor(_isDarkMode)),
//               ),
//               content: Text(
//                 'Please update this app immediately to enjoy better performances with major bugs fix',
//                 style: TextStyleCollection.secondaryHeadingTextStyle.copyWith(
//                     fontSize: 16, color: AppColors.popUpTextColor(_isDarkMode)),
//               ),
//               actions: [
//                 commonTextButton(
//                     btnText: "Maybe Later",
//                     onPressed: () => Navigator.pop(context),
//                     borderColor: AppColors.popUpBgColor(_isDarkMode),
//                     textColor: AppColors.lightBlueColor),
//                 const SizedBox(width: 5),
//                 commonTextButton(
//                     btnText: "Update Now",
//                     onPressed: _onAppUpdate,
//                     borderColor: AppColors.popUpBgColor(_isDarkMode),
//                     fontSize: 16),
//               ],
//             ));
//   } catch (e) {
//     debugShow('Error in updatee2ee_chat: $e');
//   }
// }
