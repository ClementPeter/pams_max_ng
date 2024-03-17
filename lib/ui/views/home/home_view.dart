import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:pams_max_ng/ui/common/app_colors.dart';
import 'package:pams_max_ng/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF808080),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Bodija',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: const [
          Row(
            children: [
              Badge(child: Icon(Icons.notifications)),
              SizedBox(width: 16),
              CircleAvatar(
                radius: 15,
                child: Icon(Icons.person),
              ),
              SizedBox(width: 16)
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 47),
            Flexible(
              child: GridView.builder(
                // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 2,
                //   //childAspectRatio: 0.8,
                //   mainAxisSpacing: 15,
                //   crossAxisSpacing: 15,
                //   //mainAxisExtent: 250,
                // ),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 145,
                  maxCrossAxisExtent: 156,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),

                itemCount: viewModel.homeContent.length,
                itemBuilder: (context, index) {
                  final homeItems = viewModel.homeContent.elementAt(index);
                  return GestureDetector(
                    onTap: viewModel.navigaateToFunnel,
                    child: Stack(
                      children: [
                        Container(
                          width: 156,
                          height: 145,
                          decoration: const BoxDecoration(
                            color: Color(0x353E3E3E),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 23,
                          left: 18,
                          right: 24,
                          child: Text(
                            homeItems.title,
                            maxLines: 2,
                            style: const TextStyle(
                              color: Color(0xFF242424),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 21,
                          left: 20,
                          right: 20,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  homeItems.count.toString(),
                                  maxLines: 2,
                                  style: const TextStyle(
                                    color: Color(0x7A3E3E3E),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                height: 52,
                                width: 52,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(
                                      248, 220, 229, 121), //#F9E987BC
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                child: Icon(homeItems.icon),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )

            //
            //
            //
            //
            //
            ///
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     MaterialButton(
            //       color: kcDarkGreyColor,
            //       onPressed: viewModel.showDialog,
            //       child: const Text(
            //         'Show Dialog',
            //         style: TextStyle(
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //     MaterialButton(
            //       color: kcDarkGreyColor,
            //       onPressed: viewModel.showBottomSheet,
            //       child: const Text(
            //         'Show Bottom Sheet',
            //         style: TextStyle(
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
