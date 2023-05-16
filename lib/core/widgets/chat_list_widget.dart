import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../features/chat/widgets/chat_message_widget.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({
    super.key,
    required List<ChatMessageWidget> messages,
  }) : _messages = messages;

  final List<ChatMessageWidget> _messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      padding: context.paddingMedium,
      itemCount: _messages.length,
      itemBuilder: (context, index) {
        return _messages[index];
      },
    );
  }
}
