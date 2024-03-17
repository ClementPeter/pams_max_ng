import 'package:pams_max_ng/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:pams_max_ng/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:pams_max_ng/ui/views/home/home_view.dart';
import 'package:pams_max_ng/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:pams_max_ng/ui/views/login/login_view.dart';
import 'package:pams_max_ng/ui/views/funnel/funnel_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: FunnelView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
