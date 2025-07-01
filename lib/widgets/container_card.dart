import 'package:dileepabandara_dev/statics/data_values.dart';
import 'package:dileepabandara_dev/widgets/button_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer';

import '../theme/app_theme.dart';
import '../widgets/text_pairs.dart';
import 'button_text.dart';
import 'package:flutter/gestures.dart';

class ContainerCard {
  Widget type1({
    required String title,
    required String description,
    required String image,
    required String message,
    required Uri url,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image, height: 70.0, width: 70.0),
                const SizedBox(height: 20.0),
                SelectableText(
                  title,
                  style: TextStyle(
                    fontSize:
                        AppThemeData.darkTheme.textTheme.titleMedium!.fontSize,
                    fontWeight: AppThemeData
                        .darkTheme.textTheme.headlineSmall!.fontWeight,
                    color: AppThemeData.textWhite,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            SelectableText(description,
                style: AppThemeData.darkTheme.textTheme.labelLarge),
            const SizedBox(height: 20.0),
            // ButtonTextSmall(
            //   text: 'View More >>',
            //   message: message,
            //   url: url,
            // ),
          ],
        ),
      ),
    );
  }

  Widget type2({
    required String image,
    required String title,
    required List values,
    required String message,
    required Uri url,
    String? link,
    List<List<int>>? valueIndexes, // Optional index groups
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/$image.png', height: 70.0),
                const SizedBox(height: 20.0),
                link != null
                    ? RichText(
                        text: TextSpan(
                          text: title,
                          style: TextStyle(
                            fontSize: AppThemeData
                                .darkTheme.textTheme.titleMedium!.fontSize,
                            fontWeight: AppThemeData
                                .darkTheme.textTheme.headlineSmall!.fontWeight,
                            color: AppThemeData.textPrimary,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              final uri = Uri.tryParse(link);
                              if (uri != null && await canLaunchUrl(uri)) {
                                await launchUrl(uri);
                              }
                            },
                        ),
                      )
                    : SelectableText(
                        title,
                        style: TextStyle(
                          fontSize: AppThemeData
                              .darkTheme.textTheme.titleMedium!.fontSize,
                          fontWeight: AppThemeData
                              .darkTheme.textTheme.headlineSmall!.fontWeight,
                          color: AppThemeData.textPrimary,
                        ),
                      ),
                const SizedBox(height: 10.0),

                // Dynamically build the value sets
                if (valueIndexes != null)
                  ...valueIndexes.map((indexes) {
                    if (indexes.length == 3 &&
                        indexes.every((i) => i >= 0 && i < values.length)) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: TextPairs().type2(
                          title: values[indexes[0]],
                          value1: values[indexes[1]],
                          value2: values[indexes[2]],
                          isThreeLines: false,
                        ),
                      );
                    }
                    return const SizedBox.shrink(); // skip invalid index sets
                  }),
              ],
            ),
            const SizedBox(height: 20.0),
            ButtonTextSmall(
              text: 'View More >>',
              message: message,
              url: url,
            ),
          ],
        ),
      ),
    );
  }

  Widget type3({
    required String image,
    required String title,
    String? titleDesc,
    required String role,
    required String years,
    required String values,
    required String message,
    required Uri url,
    String? link,
    required bool isButtonEnabled,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/$image.png', height: 70.0),
                const SizedBox(height: 20.0),
                link != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: title,
                              style: TextStyle(
                                fontSize: AppThemeData
                                    .darkTheme.textTheme.titleMedium!.fontSize,
                                fontWeight: AppThemeData.darkTheme.textTheme
                                    .headlineSmall!.fontWeight,
                                color: AppThemeData.textPrimary,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  final uri = Uri.tryParse(link);
                                  if (uri != null && await canLaunchUrl(uri)) {
                                    await launchUrl(uri);
                                  }
                                },
                            ),
                          ),
                          if (titleDesc != null)
                            Text(titleDesc,
                                style: TextStyle(
                                  fontSize: AppThemeData
                                      .darkTheme.textTheme.bodyMedium!.fontSize,
                                  fontWeight: AppThemeData.darkTheme.textTheme
                                      .titleSmall!.fontWeight,
                                  color: AppThemeData.textGreyDark,
                                ))
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableText(
                            title,
                            style: TextStyle(
                              fontSize: AppThemeData
                                  .darkTheme.textTheme.titleMedium!.fontSize,
                              fontWeight: AppThemeData.darkTheme.textTheme
                                  .headlineSmall!.fontWeight,
                              color: AppThemeData.textPrimary,
                            ),
                          ),
                          if (titleDesc != null)
                            Text(titleDesc,
                                style: TextStyle(
                                  fontSize: AppThemeData
                                      .darkTheme.textTheme.bodyMedium!.fontSize,
                                  fontWeight: AppThemeData.darkTheme.textTheme
                                      .titleSmall!.fontWeight,
                                  color: AppThemeData.textGreyDark,
                                ))
                        ],
                      ),
                const SizedBox(height: 12.0),
                TextPairs().type2(
                  title: role,
                  value1: years,
                  value2: values,
                  isThreeLines: true,
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            isButtonEnabled
                ? ButtonTextSmall(
                    text: 'View More >>',
                    message: message,
                    url: url,
                  )
                : Text(
                    'See you soon with the link :)',
                    style: AppThemeData.darkTheme.textTheme.labelMedium,
                  ),
          ],
        ),
      ),
    );
  }

  Widget type4({
    required String image,
    required String title,
    required String message,
    required Uri url,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Tooltip(
          message: 'Visit $message',
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () async {
                if (!await launchUrl(url)) {
                  throw 'Could not launch $url';
                }
                log("Direct to: $url");
              },
              child: Text(
                message,
                style: TextStyle(
                  fontSize:
                      AppThemeData.darkTheme.textTheme.labelLarge!.fontSize,
                  fontWeight:
                      AppThemeData.darkTheme.textTheme.labelLarge!.fontWeight,
                  color: AppThemeData.textWhite,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget type5({
    required String image,
    required String title,
    required String message,
    required Uri url,
    String? android,
    String? ios,
    String? github,
    String? website,
    List<String>? techStacks,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(
              'assets/images/$image.png',
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  title,
                  style: AppThemeData.darkTheme.textTheme.titleMedium?.copyWith(
                    fontWeight: AppThemeData
                        .darkTheme.textTheme.headlineSmall?.fontWeight,
                    color: AppThemeData.textPrimary,
                  ),
                ),
                const SizedBox(height: 12.0),
                SelectableText(
                  message,
                  style: AppThemeData.darkTheme.textTheme.labelLarge?.copyWith(
                    color: AppThemeData.textGreyDark,
                  ),
                ),
                if (techStacks != null && techStacks.isNotEmpty) ...[
                  const SizedBox(height: 12.0),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: techStacks.map((tech) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blueGrey.shade200),
                        ),
                        child: Text(
                          tech,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (android != null) ...[
                        ButtonIcon(name: 'android', url: Uri.parse(android))
                            .returnButton(),
                        const SizedBox(
                          width: 20.0,
                        ),
                      ],
                      if (ios != null) ...[
                        ButtonIcon(name: 'appstore', url: Uri.parse(ios))
                            .returnButton(),
                        const SizedBox(
                          width: 20.0,
                        ),
                      ],
                      if (website != null) ...[
                        ButtonIcon(name: 'website', url: Uri.parse(website))
                            .returnButton(),
                        const SizedBox(
                          width: 20.0,
                        ),
                      ],
                      if (github != null) ...[
                        ButtonIcon(name: 'github', url: Uri.parse(github))
                            .returnButton(),
                      ],
                    ],
                  )
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
