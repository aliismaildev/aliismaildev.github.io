import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/social_profiles.dart';
import 'package:dileepabandara_dev/theme/responsive_screen_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/nav_bar.dart';
import '../widgets/social_profiles.dart';

class MS1Header extends StatelessWidget {
  final BuildContext context;

  const MS1Header({Key? key, required this.context}) : super(key: key);

  List<Widget> headerData() {
    return [
      Image.asset('assets/images/logo.jpg', height: 250.0, width: 250.0),
      const SizedBox(height: 40.0),
      Column(
        children: [
          SelectableText(
            DataValues.headerGreetings,
            style: AppThemeData.darkTheme.textTheme.headlineSmall,
          ),
          SelectableText(
            DataValues.headerName,
            style: AppThemeData.darkTheme.textTheme.displayMedium,
            textAlign: TextAlign.center,
          ),
          SelectableText(
            DataValues.headerTitle,
            style: AppThemeData.darkTheme.textTheme.titleLarge,
            textAlign: TextAlign.center,
            // textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20.0),
          const SocialProfiles(),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemeData.backgroundBlack,
      child: Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: headerData(),
              ),
              const SizedBox(height: 40.0),
            ],
          )),
    );
  }
}
