import 'package:pams_max_ng/app/app.bottomsheets.dart';
import 'package:pams_max_ng/app/app.dialogs.dart';
import 'package:pams_max_ng/app/app.locator.dart';
import 'package:pams_max_ng/app/app.router.dart';
import 'package:pams_max_ng/models/home_model.dart';
import 'package:pams_max_ng/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  List<HomeModel> homeContent = [
    const HomeModel(
      title: 'Top of the funnel',
      count: 20,
      icon: Icons.filter_alt_outlined,
    ),
    const HomeModel(
      title: 'Ready for check in',
      count: 30,
      icon: Icons.history,
    ),
    const HomeModel(
      title: 'Checked in for Test',
      count: 40,
      icon: Icons.assignment_turned_in_outlined,
    ),
    const HomeModel(
      title: 'Tested',
      count: 50,
      icon: Icons.assignment_turned_in,
    ),
    const HomeModel(
      title: 'Issued Verification Forms',
      count: 60,
      icon: Icons.task_alt_outlined,
    ),
    const HomeModel(
      title: 'In-Verification',
      count: 60,
      icon: Icons.vertical_align_bottom_outlined,
    ),
    const HomeModel(
      title: 'Onboarding',
      count: 60,
      icon: Icons.shield_outlined,
    ),
    const HomeModel(
      title: 'Awaiting Activation',
      count: 60,
      icon: Icons.verified_outlined,
    ),
  ];

  void navigaateToFunnel() {
    _navigationService.navigateToFunnelView();
  }
}


//Page param in model to hold generated view names