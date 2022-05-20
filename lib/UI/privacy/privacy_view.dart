import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'privacy_viewmodel.dart';

class PrivacyView extends StatelessWidget {
  const PrivacyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PrivacyViewModel>.reactive(
      viewModelBuilder: () => PrivacyViewModel(),
      builder: (
        BuildContext context,
        PrivacyViewModel model,
        Widget? child,
      ) {
        return const Scaffold(
          body: Center(
            child: Text(
              'PrivacyView',
            ),
          ),
        );
      },
    );
  }
}
