import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/constants/color_constants.dart';
import '../../../core/constants/image_constant.dart';

class ChatMessageWidget extends StatelessWidget {
  const ChatMessageWidget(
      {super.key,
      required this.text,
      required this.sender,
      this.isImage = false});

  final String text;
  final String sender;
  final bool isImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          sender == 'bot'
              ? ImageConstants.botIconPath
              : ImageConstants.userIconPath,
          width: 32,
          height: 32,
        ),
        Expanded(
            child: isImage
                ? AspectRatio(
                    aspectRatio: 16 / 9,
                    child: CachedNetworkImage(
                      imageUrl: text,
                      progressIndicatorBuilder: (context, url, progress) =>
                          const CircularProgressIndicator.adaptive(),
                    ),
                  )
                : Card(
                    color: ColorConstants.myDarkGrey,
                    margin: context.paddingNormal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SelectableText(text.trim()),
                    )))
      ],
    );
  }
}
