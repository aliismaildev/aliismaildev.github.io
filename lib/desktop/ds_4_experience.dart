import 'package:flutter/material.dart';
import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/container_banner.dart';
import '../widgets/frame_title.dart';
import '../statics/portfolio_data.dart'; // Assuming experienceData is defined here

class DS4Experience extends StatelessWidget {
  const DS4Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.experienceKey,
      color: AppThemeData.backgroundGrey,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
              title: DataValues.experienceTitle,
              description: DataValues.experienceDescription,
            ),
            const SizedBox(height: 20),
            Center(
              child: Wrap(
                spacing: 40.0, // horizontal spacing
                runSpacing: 30.0, // vertical spacing
                children: experienceData.map((widget) {
                  return ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 550,
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
