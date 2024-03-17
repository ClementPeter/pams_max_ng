import 'package:pams_max_ng/app/app.locator.dart';

import 'package:pams_max_ng/app/app.router.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();

  bool hidePassword = true;

  void toggleVisibility() {
    hidePassword = !hidePassword;
    rebuildUi();
  }

  void login() {
    _navigationService.navigateToHomeView();
  }

  // Future<void> login() async {
  //   setBusy(true);
  //   try {
  //     LoginModel loginModel = LoginModel(
  //       email: emailValue?.trim(),
  //       password: passwordValue?.trim(),
  //     );
  //     final LoginResponse? response = await _authenticationService.login(
  //       loginModel: loginModel,
  //     );
  //     if (response == null) {
  //       _dialogService.showDialog(
  //         description: "Unknown error",
  //       );
  //       return;
  //     }
  //     _logger.d(response);
  //     _logger.d(response.user!.firstname);

  //     _navigationService.clearStackAndShow(Routes.homeView);
  //   } on RecipeException catch (e) {
  //     _dialogService.showDialog(
  //       description: e.message,
  //     );
  //   } catch (e, s) {
  //     _logger.e('An error occurred while login in', e, s);
  //     _dialogService.showDialog(
  //       description: "Unknown error",
  //     );
  //   } finally {
  //     setBusy(false);
  //   }
  // }
}
