import 'package:pams_max_ng/models/funnel_users.dart';
import 'package:stacked/stacked.dart';

class FunnelViewModel extends BaseViewModel {
  List<FunnelUsers> funnelContents = [
    FunnelUsers(
      fullName: 'Clement Peter',
      phoneNumber: '+234 8435384342',
      dateTime: DateTime.now(),
    ),
    FunnelUsers(
      fullName: 'Bayo Bayo',
      phoneNumber: '+234 8435384342',
      dateTime: DateTime.now(),
    ),
    FunnelUsers(
      fullName: 'Godwin Bayo',
      phoneNumber: '+234 8435384342',
      dateTime: DateTime.now(),
    )
  ];
}
