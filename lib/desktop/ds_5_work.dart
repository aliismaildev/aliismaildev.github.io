import 'package:dileepabandara_dev/statics/portfolio_data.dart';
import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/frame_title.dart';

class DS5Work extends StatelessWidget {
  const DS5Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.workShowcaseKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.workShowCaseTitle,
                description: DataValues.workShowCaseDescription),
            const SizedBox(height: 20),
            Center(
              child: Wrap(
                spacing: 40.0, // horizontal spacing
                runSpacing: 30.0, // vertical spacing
                children: workData.map((widget) {
                  return ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 750,
                      maxWidth: 400, // behaves like maxCrossAxisExtent
                    ),
                    child: widget,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
