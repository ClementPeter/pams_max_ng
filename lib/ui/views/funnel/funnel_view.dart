import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'funnel_viewmodel.dart';

class FunnelView extends StackedView<FunnelViewModel> {
  const FunnelView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FunnelViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Top of Funnel',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: const Color(0xFFEEEEEE),
        child: ListView.builder(
          itemCount: viewModel.funnelContents.length,
          itemBuilder: (context, index) {
            final funnelItem = viewModel.funnelContents.elementAt(index);

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text(funnelItem.fullName),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(funnelItem.phoneNumber),
                    Text('Added on ${funnelItem.dateTime}'),
                  ],
                ),
                isThreeLine: true,
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  FunnelViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FunnelViewModel();
}
